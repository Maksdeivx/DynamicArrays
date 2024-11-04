unit CodeFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls;

type
  TCodeForm = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure SetCodeID(NewCodeID: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CodeForm: TCodeForm;
  Code_ID: integer;

implementation

{$R *.dfm}

uses ArrayFormUnit;

procedure TCodeForm.FormShow(Sender: TObject);
var
  filepath:string;
begin
  filepath:=extractfilepath(application.ExeName);
  case Code_ID of
    0:webbrowser1.navigate(PChar(filepath + 'codes\�������� ��������\����������\�������������.htm'));
    1:webbrowser1.navigate(PChar(filepath + 'codes\�������� ��������\����������\������������.htm'));
    2:webbrowser1.navigate(PChar(filepath + 'codes\�������� ��������\����������\����������.htm'));
    3:webbrowser1.navigate(PChar(filepath + 'codes\�������� ��������\���������\�������������.htm'));
    4:webbrowser1.navigate(PChar(filepath + 'codes\�������� ��������\���������\������������.htm'));
    5:webbrowser1.navigate(PChar(filepath + 'codes\�������� ��������\���������\����������.htm'));
    6:webbrowser1.navigate(PChar(filepath + 'codes\���������� �������\�� �����������\����������.htm'));
    7:webbrowser1.navigate(PChar(filepath + 'codes\���������� �������\�� ��������\����������.htm'));
    8:webbrowser1.navigate(PChar(filepath + 'codes\���������� �������\�� �����������\������� ������.htm'));
    9:webbrowser1.navigate(PChar(filepath + 'codes\���������� �������\�� ��������\������� ������.htm'));
    10:webbrowser1.navigate(PChar(filepath + 'codes\���������� �������\�� �����������\���������.htm'));
    11:webbrowser1.navigate(PChar(filepath + 'codes\���������� �������\�� ��������\���������.htm'));
    12:webbrowser1.navigate(PChar(filepath + 'codes\����� � �������\������� ���������\�������������.htm'));
    13:webbrowser1.navigate(PChar(filepath + 'codes\����� � �������\������� ���������\������������.htm'));
    14:webbrowser1.navigate(PChar(filepath + 'codes\����� � �������\������� ���������\����������.htm'));
    15:webbrowser1.navigate(PChar(filepath + 'codes\����� � �������\�������� �����.htm'));
    16:webbrowser1.navigate(PChar(filepath + 'codes\������ � ��������� �������\��������� ��������\�������������.htm'));
    17:webbrowser1.navigate(PChar(filepath + 'codes\������ � ��������� �������\��������� ��������\������������.htm'));
    18:webbrowser1.navigate(PChar(filepath + 'codes\������ � ��������� �������\��������� ��������\����������.htm'));
    19:webbrowser1.navigate(PChar(filepath + 'codes\������ � ��������� �������\�������� ��������.htm'));
  end;
end;

procedure TCodeForm.SetCodeID(NewCodeID: Integer);
begin
  Code_ID := NewCodeID;
end;

end.
