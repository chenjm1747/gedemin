{++

  Copyright (c) 1996-98 by Golden Software of Belarus

  Module

    Reginf.pas

  Abstract

    ��������� � ��������������������� ���������.

--}

unit Reginf;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, xYellabl, xBulbBtn, ExtCtrls;

type
  TfrmInformation = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    xylInformation: TLabel;
    xBulbButton1: TxBulbButton;
    procedure xBulbButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  public
    CodeMessage: Integer;
  end;

var
  frmInformation: TfrmInformation;

implementation

{$R *.DFM}

procedure TfrmInformation.xBulbButton1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmInformation.FormActivate(Sender: TObject);
begin
  if CodeMessage = 0 then
    xylInformation.Caption := '�������� !!! ' + #13 +
                            '� ��� �������������������� '+ #13 +
                            '����� ���������.' + #13 +
                            '����� ��������� ����� ��������,'  + #13 +
                            '��� ����-������.'  + #13 +
                            '��� ����������� ��������� �'  + #13 +
                            '����� Golden Software ��'  + #13 +
                            '���. (017) 263-89-71'
  else
    xylInformation.Caption := '�������� !!! ' + #13 +
                            '� ��� �������������������� '+ #13 +
                            '����� ���������.' + #13 +
                            '��������� ��������,'  + #13 +
                            '��� ����-������.'  + #13 +
                            '��� ����������� ��������� �'  + #13 +
                            '����� Golden Software ��'  + #13 +
                            '���. (017) 263-89-71'

end;

end.
