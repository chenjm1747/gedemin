unit BaseOperation; 

{$mode objfpc}{$H+}

interface

uses
  Windows, Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, ProjectCommon;

const
  Separator = ';';
  DocumentLine = 6;

type

  { TBaseOperation }

  TBaseOperation = class(TForm)
    eWeight: TEdit;
    eGoods: TEdit;
    lEnter: TLabel;
    lExit: TLabel;
    lDelete: TLabel;
    lWeight: TLabel;
    lWeight1: TLabel;
    Panel1: TPanel;
    mTP: TMemo;
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure WM_BARCODE(var Message: TMessage); message WM_SCAN_DATA;
  private
    { private declarations }

    function BeforeClose: Boolean;
  protected
    FPosition: TStringList;
    FMemoPositions: TStringList;
    FSHCODE: TStringList;
    FTotalWeight: Double;
    FEnterCount: Boolean;
    FGoodsCount: Integer;
    FSetBarCode: Boolean;
    IsReading: Boolean;

    function CheckBarCode(const AKey: String): Boolean; virtual;
    procedure SetBarCode(const AKey: String); virtual; abstract;
    procedure SaveToFile; virtual; abstract;
    procedure LoadSHCODE;
    procedure NewMemo; virtual;
    procedure DeleteLastItem; virtual; abstract;
    procedure GetInfoGoods(const AKey: String; out ACode: String; out ANameGoods: String; out AWeight: Integer; out ADate: TDateTime; out ANumber: Integer; out ANpart: String; out ATara: Integer; out AWeightT: Integer);
    function CreateBarCode(const AWeight: Integer; ADate: TDateTime; AProductCode: String; ANumber: Integer; ANpart: String; ATara: Integer; AWeightT: Integer): String;
    procedure DecodeBarCode(const ABarCode: String; out AWeight: Integer; out ADate: TDateTime; out AProductCode: Integer; out ANumber: Integer; out ANpart: String; out ATara: Integer; out AWeightT: Integer);
  public
    { public declarations }
    procedure AddPosition(const AString: String); virtual;
    procedure AddPositionToMemo(const AString: String); virtual;
    procedure ScanRead; virtual;


  end;



  function MCScanInit: Integer;
    stdcall; external 'MCSSLib.dll' name 'MCScanInit';

  function MCScanRead: Integer;
    stdcall; external 'MCSSLib.dll' name 'MCScanRead';

  function MCScanReadCancel: Integer;
    stdcall; external 'MCSSLib.dll' name 'MCScanReadCancel';

  function MCScanClose: Integer;
    stdcall; external 'MCSSLib.dll' name 'MCScanClose';

  procedure MCRegisterWindow(hWnd: HWND);
    stdcall; external 'MCSSLib.dll' name 'MCRegisterWindow';

  procedure MCGetScanDataByte(szBarData: pbyte; szBarType: pbyte);
    stdcall; external 'MCSSLib.dll' name 'MCGetScanDataByte';

  procedure MCGetBarCodeType(szBarType: pointer);
    stdcall; external 'MCSSLib.dll' name 'MCGetBarCodeType';

  procedure MCSetBarCodeType(szBarType: pointer);
    stdcall; external 'MCSSLib.dll' name 'MCSetBarCodeType';
implementation

{$R *.lfm}

uses
  JcfStringUtils, MessageForm, BaseAddInformation, DateUtils, terminal_common;

procedure TBaseOperation.FormCreate(Sender: TObject);
var
 { {$IFDEF SKORPIOX3}
  Num: array [0..8] of DWORD;
  DevIndex: Integer;
  DeviceName: WideString;
  B: DWORD;
  {$ENDIF}  }
  Temps: String;
begin
  BorderStyle := bsNone;
  WindowState := wsNormal;

  mTP.Height := ((GetSystemMetrics(SM_CYSCREEN) - 2*ChildSizing.TopBottomSpacing)*65) div 100;

  Temps := 'F4-ручной ввод ';
  if Self.ClassName <> 'TOperationRQ' then
    Temps := Temps + 'F1-сброс о/вес';

 // lEnter.Caption := 'Ctrl+Enter-сохр. ESC-выход';

  lEnter.Caption := 'F20-сохр. ESC-выход';


  //lManual.Caption := 'F4-ручной ввод';
  lExit.Caption := Temps;
  lDelete.Caption := 'F2-отмена последней позиции';

  eWeight.Text := '0';

  FPosition := TStringList.Create;
  FMemoPositions := TStringList.Create;
  FMemoPositions.QuoteChar := ';';
  FTotalWeight := 0;
  FEnterCount := False;
  FGoodsCount := 0;
  FSetBarCode := False;

  LoadSHCODE;

{  if not DecodeEnumDevices(@Num) then
    raise Exception.Create('Device error!');
  DevIndex := 0;
  B := 1 or 2;
  for DevIndex := 0 to 8 do
  begin
    if (Num[DevIndex] and B) = B then
      break;
  end;

  DeviceName := 'DCD' + WideString(IntToStr(DevIndex + 1)) + ':';
  hDcd := CreateFile(PWideChar(deviceName), GENERIC_READ or GENERIC_WRITE, 0,
    nil, OPEN_EXISTING, 0, 0);

  if hDcd = INVALID_HANDLE_VALUE then
    raise Exception.Create('hDcd = INVALID_HANDLE_VALUE!');
  reqID := DecodePostRequestMsgEx(hDcd, (2 and 255) or 256,
    Self.Handle,
    AM_DCD_SCAN,
    AM_DCD_TIMEOUT);

  if reqID = -1 then
    raise Exception.Create('reqID = -1');
   }
end;

procedure TBaseOperation.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  if not BeforeClose then
    exit;

  if ModalResult = mrOk then
  begin
    if FPosition.Count > DocumentLine then
      SaveToFile
    else
    begin
      MessageForm.MessageDlg('Нет позиций в документе!', 'Внимание', mtInformation, [mbOK]);
      Application.ProcessMessages;
      ModalResult := mrNone;
      CanClose := False;
      Exit;
    end;
  end;
end;

procedure TBaseOperation.FormDestroy(Sender: TObject);
begin

  FPosition.Free;
  FSHCODE.Free;
  FMemoPositions.Free;
end;



procedure TBaseOperation.ScanRead;
var inres:integer;
begin
  // Application.MessageBox('sr', '', 0);
   if IsReading then
   begin
      inres := MCScanReadCancel();
      // Reading already in progress, now cancel it.

   end;
   IsReading := true;
   inres := MCScanRead();
 //  Sleep(500);
 //  MCScanReadCancel();
   if inres < 0 then
   begin
     Application.MessageBox(PChar(IntToStr(inres)), '', 0);
     IsReading := false;

   end;
end;

procedure TBaseOperation.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
 // Application.MessageBox(PChar(IntToStr(Key)), '', 0);
  if Key = 133 then
  begin
   Sleep(10);
   MCScanReadCancel();
  end;
end;

procedure TBaseOperation.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Temps: String;
  Count: Integer;
  Weight: Integer;
  WeightT: Integer;
  Date: TDateTime;
  ProductCode: String;
  NameGood: String;
  Number: Integer;
  Npart: String;
  NTara: Integer;
  TotalWeight: Integer;
begin
   case Key of
    VK_UP:
    begin
      SendMessage(mTP.Handle, EM_SCROLL, SB_LINEUP,0);
      Key := 0;
    end;
    VK_DOWN:
    begin
      SendMessage(mTP.Handle, EM_SCROLL, SB_LINEDOWN,0);
      Key := 0;
    end;
    VK_ESCAPE: ModalResult := mrCancel;
    133:
    begin
      ScanRead();
    end;

  //  VK_RETURN: if ssCtrl in Shift then ModalResult := mrOk;

    131: ModalResult := mrOk;

    196:
    begin
      Temps := Trim(TBaseAddInformation.Execute('Введите код товара: '));
      if Length(Temps) <> 0 then
        if Length(Temps) = 30 then
           Temps := Copy(Temps, 2, 29)
         else
           Temps := Temps;
        SetBarCode(Temps);
      Key := 0;
    end;
    194:
    begin
      if (FPosition.Count > DocumentLine) then
      begin
        if (MessageForm.MessageDlg(PChar('Удалить последнюю позицию документа "' + FMemoPositions[FMemoPositions.Count - 1] + 'кг "?'),
          'Внимание', mtInformation, [mbYes, mbNo]) = mrYes) then
        begin
          DeleteLastItem;
          Key := 0;
          NewMemo;
        end;
      end;
    end;
    195:
    begin
      if FPosition.Count > DocumentLine then
      begin
        TempS := Trim(TBaseAddInformation.Execute('Введите кол-во товара: '));
        if (Length(Temps) <> 0) and
          TryStrToInt(TempS, Count) then
        begin
          TempS := FPosition[FPosition.Count - 1];
          SetLength(TempS, Length(TempS) - 1);
          GetInfoGoods(TempS, ProductCode, NameGood, Weight, Date, Number, Npart, Ntara, WeightT);
          DeleteLastItem;
          TotalWeight := Weight * Count;
          Weight := maxweight;
          FEnterCount := True;
          try
            while Weight = maxweight do
            begin
              if TotalWeight >= maxweight + 1 then
                TotalWeight := TotalWeight - Weight
              else
                Weight := TotalWeight;
              SetBarCode(CreateBarCode(Weight, Date, ProductCode, Count, Npart, Ntara, WeightT ));
              Date := IncMinute(Date, 1);
              Count := 0;
            end;
          finally
            FEnterCount := False;
          end;
        end;


        Key := 0;
      end;
    end;
  end;
end;

procedure TBaseOperation.FormShow(Sender: TObject);
var
  ScreenWidth, ScreenHeight: Integer;
  TaskBarWnd: THandle;
begin
  ScreenWidth := GetSystemMetrics(SM_CXSCREEN);
  ScreenHeight := GetSystemMetrics(SM_CYSCREEN);
  SetWindowPos(Handle, HWND_TOPMOST, 0, 0, ScreenWidth, ScreenHeight, 0);
  TaskBarWnd := FindWindow('HHTaskBar', '');
  if (TaskBarWnd <> 0) then
    SetWindowPos(TaskBarWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOMOVE);
  NewMemo;
end;


procedure TBaseOperation.WM_BARCODE(var Message: TMessage);
var

  Str: array [0..100] of byte;
  T: array [0..100] of byte;
  i: integer;
  Result: string;
begin
     for i := 0 to 100 do
       Str[i] := 0;

     MCGetScanDataByte(@Str, @T);

     MCScanReadCancel();

     Result := '';

     for i := 0 to 50 do
       if Str[i] <> 0 then
         Result := Result + Chr(Str[i]);
     beep();
     IsReading := false;
     if Length(Result) = 30 then
       Result := Copy(Result, 2, 29)
     else
       Result := Result;
     SetBarCode(Trim(Result));

end;

function TBaseOperation.BeforeClose: Boolean;
begin
  Result := True;
  if ModalResult = mrCancel then
  begin
    case MessageForm.MessageDlg(
      'Документ будет закрыт, сохранить изменения?',
      'Внимание', mtInformation,
      [mbYes, mbNo, mbCancel]) of
        mrYes: ModalResult := mrOk;
        mrNO: ModalResult := mrCancel;
        mrCANCEL:
        begin
          ModalResult := mrNone;
          Result := False;
        end;
    end;
    Application.ProcessMessages;
  end;
end;

procedure TBaseOperation.GetInfoGoods(const AKey: String; out ACode: String; out ANameGoods: String; out AWeight: Integer; out ADate: TDateTime; out ANumber: Integer; out ANpart: String; out ATara: Integer; out AWeightT: Integer);
var
  Index: Integer;
  Fmt: TFormatSettings;
  StrDate: String;
  hh: string;
  mm: string;
begin
  Assert(Length(AKey) >= 29);

  // Application.MessageBox( PChar(AKey), '', 0);
  fmt.ShortDateFormat:= 'dd/mm/yyyy';
  fmt.DateSeparator  := '/';
  fmt.LongTimeFormat := 'hh:nn:ss';
  fmt.TimeSeparator  := ':';
  hh:= Copy(AKey, 11, 2);
  if StrToInt(hh) > 59 then
    begin
      hh:= '00';
    end;
  mm:= Copy(AKey, 13, 2);
  if StrToInt(mm) > 59 then
    begin
      mm:= '00';
    end;
  StrDate:= Copy(AKey, 7, 2) + '/' + Copy(AKey, 9, 2) + '/' + IntToStr(YearOf(Date)) +
     ' ' + hh + ':' + mm;
  ADate := StrToDateTime(StrDate, fmt);
  AWeight := StrToInt(Copy(AKey, 1, 6));
  ACode := Copy(AKey, 15, 5);
  ANumber := StrToInt(Copy(AKey, 20, 2));
  ANpart := Copy(AKey, 22, 4);
  AWeightT := StrToInt(Copy(AKey, 26, 3));
  ATara := StrToInt(Copy(AKey, 29, 1));
  Index := FSHCODE.IndexOfName(ACode);
  if Index <> - 1 then
    ANameGoods := Copy(FSHCODE.ValueFromIndex[Index], 1,  StrIPos('=', FSHCODE.ValueFromIndex[Index]) - 1)
  else
    ANameGoods := 'Неизвестный';
end;

function TBaseOperation.CreateBarCode(const AWeight: Integer; ADate: TDateTime; AProductCode: String; ANumber: Integer; ANpart: String; ATara: Integer; AWeightT: Integer): String;
var
  TempS: String;
  CurrPos: Integer;
begin
  Result := '';
  Setlength(Result, 29);
  FillChar(Result[1], Length(Result), '0');
  TempS := IntToStr(AWeight);
  Move(TempS[1], Result[6 - Length(Temps) + 1], Length(TempS));
  Temps := FormatDateTime('DDMMYYhhnn', ADate);
  Move(TempS[1], Result[7], 4);
  Move(TempS[7], Result[11], 4);
  Move(AProductCode[1], Result[19 - Length(AProductCode)  + 1], Length(AProductCode));
  TempS := IntToStr(ANumber);
  Move(TempS[1], Result[21 - Length(TempS)  + 1], Length(TempS));
  TempS := ANpart;
  Move(TempS[1], Result[25 - Length(TempS)  + 1], Length(TempS));
  TempS := IntToStr(AWeightT);
  Move(TempS[1], Result[28 - Length(TempS)  + 1], Length(TempS));
  TempS := IntToStr(ATara);
  Move(TempS[1], Result[29 - Length(TempS)  + 1], Length(TempS));

end;

procedure TBaseOperation.DecodeBarCode(const ABarCode: String; out AWeight: Integer;
  out ADate: TDateTime; out AProductCode: Integer; out ANumber: Integer; out ANpart: String; out ATara: Integer; out AWeightT: Integer);
var
  Fmt: TFormatSettings;
  StrDate: String;
  hh: string;
  mm: string;
begin
  Assert(Length(ABarCode) >= 29);
  {if Length(ABarCode) = 30 then
    ABarCode1 := Copy(ABarCode, 2, 29)
  else
    ABarCode1 := ABarCode;  }

  fmt.ShortDateFormat:= 'dd/mm/yyyy';
  fmt.DateSeparator  := '/';
  fmt.LongTimeFormat := 'hh:nn:ss';
  fmt.TimeSeparator  := ':';

{  StrDate:= Copy(ABarCode, 7, 2) + '/' + Copy(ABarCode, 9, 2) + '/20' +
    Copy(ABarCode, 11, 2) + ' ' + Copy(ABarCode, 13, 2) + ':' + Copy(ABarCode, 15, 2);  }
  hh:= Copy(ABarCode, 11, 2);
  if StrToInt(hh) > 59 then
    begin
      hh:= '00';
    end;
  mm:= Copy(ABarCode, 13, 2);
  if StrToInt(mm) > 59 then
    begin
      mm:= '00';
    end;
  StrDate:= Copy(ABarCode, 7, 2) + '/' + Copy(ABarCode, 9, 2) + '/' + IntToStr(YearOf(Date)) +
     ' ' + hh + ':' + mm;
  ADate := StrToDateTime(StrDate, fmt);
  AWeight := StrToInt(Copy(ABarCode, 1, 6));
  AProductCode := StrToInt(Copy(ABarCode, 15, 5));
  ANumber := StrToInt(Copy(ABarCode, 20, 2));
  ANpart := Copy(ABarCode, 22, 4);
  AWeightT := StrToInt(Copy(ABarCode, 26, 3));
  ATara := StrToInt(Copy(ABarCode, 29, 1));
end;

procedure TBaseOperation.AddPosition(const AString: String);
var
  Weight: Integer;
  WeightT: Integer;
  Date: TDateTime;
  ProductCode: String;
  NameGood: String;
  Number: Integer;
  Npart: String;
  NTara: Integer;
begin
  if FSetBarCode then
  begin
    FPosition.Add(AString + Separator);
    GetInfoGoods(AString, ProductCode, NameGood, Weight, Date, Number, Npart, NTara, WeightT);
    if (Weight > weight_for_checking_sites) and
      (Length(AString) = length_code_for_checking_sites)
    then
      Inc(FGoodsCount, Number)
    else
       if  Number > 0 then Inc(FGoodsCount);
    eGoods.Text := IntToStr(FGoodsCount);
  end else
    FPosition.Add(AString + Separator);
end;

procedure TBaseOperation.AddPositionToMemo(const AString: String);
begin
  FMemoPositions.Add(AString);
end;

procedure TBaseOperation.LoadSHCODE;
var
  Temps: String;
begin
  if FSHCODE = nil then
    FSHCODE := TStringList.Create;

  FSHCODE.Delimiter := ',';
  FSHCODE.QuoteChar := ';';
  Temps := Trim(ReadFileToString(ExtractFilePath(Application.ExeName) + '\cl\SHCODE_GOODS.TXT'));
  Temps := Copy(Temps, StrIPos(';', Temps), Length(Temps));
  FSHCODE.DelimitedText := Temps;
end;

procedure TBaseOperation.NewMemo;
const
  EndStr = #13#10;
var
  I: Integer;
  Temps: String;
begin
  Temps := '';
  mTP.Clear;
  for I := 0 to FMemoPositions.Count - 1 do
  begin
    if I < DocumentLine then
      Temps := Temps + FMemoPositions[I] + EndStr
    else
      Temps := Temps + FMemoPositions.Names[I] + ' ' + FMemoPositions.ValueFromIndex[I] + 'кг' + EndStr;
  end;

  mTP.Lines.Text := Temps;
  mTP.SelStart := Length(Temps);
  mTP.SelLength := 0;
end;

function TBaseOperation.CheckBarCode(const AKey: String): Boolean;
var
  StrDate: string;
  Fmt: TFormatSettings;
  dt: TDateTime;
  hh: string;
  mm: string;
begin
  Result := False;

  fmt.ShortDateFormat:= 'dd/mm/yyyy';
  fmt.DateSeparator  := '/';
  fmt.LongTimeFormat := 'hh:nn:ss';
  fmt.TimeSeparator  := ':';

  if FPosition.IndexOf(AKey + Separator) >= DocumentLine then
  begin
    MessageForm.MessageDlg('Товар уже добавлен в документ', 'Внимание', mtInformation, [mbOK])
  end else
  begin
    {if Length(AKey) = 30 then
      AKey1 := Copy(AKey, 2, 29)
    else
      AKey1 := AKey; }

    if (Length(AKey) >= 28) then
    begin
      {StrDate:= Copy(AKey, 7, 2) + '/' + Copy(AKey, 9, 2) + '/20' +
        Copy(AKey, 11, 2) + ' ' + Copy(AKey, 13, 2) + ':' + Copy(AKey, 15, 2);  }
      hh:= Copy(AKey, 11, 2);
      if StrToInt(hh) > 59 then
        begin
          hh:= '00';
        end;
      mm:= Copy(AKey, 13, 2);
      if StrToInt(mm) > 59 then
        begin
          mm:= '00';
        end;
      StrDate:= Copy(AKey, 7, 2) + '/' + Copy(AKey, 9, 2) + '/' + IntToStr(YearOf(Date)) +
        ' ' + hh + ':' + mm;

      if TryStrToDateTime (StrDate, dt, fmt) then
        Result := True
    end;
    if not Result then
      MessageForm.MessageDlg('Некорректный штрих-код', 'Внимание', mtInformation, [mbOk]);
  end;
end;
end.

