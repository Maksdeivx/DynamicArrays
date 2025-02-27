unit TheoryFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TTheoryForm = class(TForm)
    Exit_button: TPanel;
    WebBrowser1: TWebBrowser;
    Name_Label: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure FormShow(Sender: TObject);
    procedure SetTheoryID(NewTheoryID: Integer);
    procedure Exit_buttonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TheoryForm: TTheoryForm;
  Theory_ID:integer;

implementation

{$R *.dfm}

uses ArrayFormUnit, SectionsFormUnit;

procedure TTheoryForm.SetTheoryID(NewTheoryID: Integer);
begin
  Theory_ID := NewTheoryID;
end;

procedure TTheoryForm.Exit_buttonClick(Sender: TObject);
begin
  TheoryForm.Close;
end;

procedure TTheoryForm.FormShow(Sender: TObject);
var
filepath:string;
begin
  filepath:=extractfilepath(application.ExeName);
  if Theory_ID=0 then
    begin
    Name_Label.Caption:='������������ �������';

    webbrowser1.navigate(PChar(filepath + 'theory\������������ �������.htm'));
    end
  else
    if Theory_ID=1 then
      begin
        Name_Label.Caption:='�������� �������';
        webbrowser1.navigate(PChar(filepath + 'theory\�������� �������.htm'));
      end
    else
      if Theory_ID=2 then
        begin
          Name_Label.Caption:='���������� �������';
          webbrowser1.navigate(PChar(filepath + 'theory\���������� �������.htm'));
        end
      else
      if Theory_ID=3 then
        begin
          Name_Label.Caption:='����� � �������';
          webbrowser1.navigate(PChar(filepath + 'theory\����� � �������.htm'));
        end
      else
        if Theory_ID=4 then
          begin
            Name_Label.Caption:='������ � ��������� ���������';
            webbrowser1.navigate(PChar(filepath + 'theory\������ � ��������� ���������.htm'));
          end;
end;

end.
