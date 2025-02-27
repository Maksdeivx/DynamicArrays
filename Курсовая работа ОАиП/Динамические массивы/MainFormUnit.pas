unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus,
  Vcl.Imaging.pngimage, ShellAPI;

type
  TMainForm = class(TForm)
    StartBtn: TPanel;
    ManualBtn: TPanel;
    ExitBtn: TPanel;
    Background: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    StartBtnImg: TImage;
    ManualBtnImg: TImage;
    ExitBtnImg: TImage;
    Image5: TImage;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure StartBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ManualBtnClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses SplashFormUnit, SectionsFormUnit, ArrayFormUnit, CodeFormUnit, TheoryFormUnit;

procedure TMainForm.FormCreate(Sender: TObject);//�������� �������
var filepath:string;
begin
filepath:=extractfilepath(application.ExeName);
addfontresource(PChar(filepath + 'font\days.ttf'));
end;

procedure TMainForm.FormDestroy(Sender: TObject);//�������� �������
var filepath:string;
begin
filepath:=extractfilepath(application.ExeName);
removefontresource(PChar(filepath + 'font\days.ttf'));
end;

procedure TMainForm.ManualBtnClick(Sender: TObject);
begin
  TheoryForm.SetTheoryID(0);
  TheoryForm.show;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
  ShellExecute(0,PChar('Open'),PChar('manual.chm'),nil,nil,SW_SHOW);
end;

procedure TMainForm.N3Click(Sender: TObject);
begin
if not Assigned(ArrayForm) then
    ArrayForm:= TArrayForm.Create(Application);  // ������� �����, ���� ��� ��� �� �������

ArrayForm.SetMenuID(1);  // ���������� Menu_ID
ArrayForm.show;
MainForm.hide;
end;

procedure TMainForm.N4Click(Sender: TObject);
begin
  if not Assigned(ArrayForm) then
    ArrayForm:= TArrayForm.Create(Application);  // ������� �����, ���� ��� ��� �� �������

  ArrayForm.SetMenuID(2);  // ���������� Menu_ID
  ArrayForm.show;
  MainForm.hide;
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
  if not Assigned(ArrayForm) then
    ArrayForm:= TArrayForm.Create(Application);  // ������� �����, ���� ��� ��� �� �������
  ArrayForm.SetMenuID(3);
  ArrayForm.show;
  MainForm.hide;
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
  if not Assigned(ArrayForm) then
  ArrayForm:= TArrayForm.Create(Application);  // ������� �����, ���� ��� ��� �� �������
  ArrayForm.SetMenuID(4);
  ArrayForm.show;
  MainForm.hide;
end;

procedure TMainForm.StartBtnClick(Sender: TObject);
begin
SectionsForm.show();
MainForm.hide();
end;

procedure TMainForm.ExitBtnClick(Sender: TObject);
begin
close;
end;

end.
