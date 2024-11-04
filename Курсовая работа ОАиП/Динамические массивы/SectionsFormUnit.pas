unit SectionsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Imaging.pngimage;

type
  TSectionsForm = class(TForm)
    CreateArr_button: TPanel;
    SortArr_Button: TPanel;
    FindArr_Button: TPanel;
    EditArr_Button: TPanel;
    BackToHome_Button: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    procedure CreateArr_buttonClick(Sender: TObject);
    procedure BackToHome_ButtonClick(Sender: TObject);
    procedure SortArr_ButtonClick(Sender: TObject);
    procedure FindArr_ButtonClick(Sender: TObject);
    procedure EditArr_ButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CreateParams(var Params: TCreateParams) ; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SectionsForm: TSectionsForm;

implementation

{$R *.dfm}

uses MainFormUnit, ArrayFormUnit, TheoryFormUnit;

procedure TSectionsForm.BackToHome_ButtonClick(Sender: TObject);
begin
MainForm.show;
SectionsForm.close;
end;

procedure TSectionsForm.CreateArr_buttonClick(Sender: TObject);
begin
if not Assigned(ArrayForm) then
    ArrayForm:= TarrayForm.Create(Application);  // —оздать форму, если она еще не создана

ArrayForm.SetMenuID(1);  //установил Menu_ID
TheoryForm.SetTheoryID(1);
ArrayForm.show;
SectionsForm.hide;
end;

procedure TSectionsForm.EditArr_ButtonClick(Sender: TObject);
begin
if not Assigned(ArrayForm) then
  ArrayForm:= TArrayForm.Create(Application);  // —оздать форму, если она еще не создана
ArrayForm.SetMenuID(4);
TheoryForm.SetTheoryID(4);
ArrayForm.show;
SectionsForm.hide;
end;

procedure TSectionsForm.FindArr_ButtonClick(Sender: TObject);
begin
if not Assigned(ArrayForm) then
    ArrayForm:= TArrayForm.Create(Application);  // —оздать форму, если она еще не создана
ArrayForm.SetMenuID(3);
TheoryForm.SetTheoryID(3);
ArrayForm.show;
SectionsForm.hide;
end;

procedure TSectionsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mainform.Show();
end;

procedure TSectionsForm.SortArr_ButtonClick(Sender: TObject);
begin
if not Assigned(ArrayForm) then
    ArrayForm:= TArrayForm.Create(Application);  // —оздать форму, если она еще не создана

ArrayForm.SetMenuID(2);  //установил Menu_ID
TheoryForm.SetTheoryID(2);
ArrayForm.show;
SectionsForm.hide;
end;

procedure TSectionsForm.CreateParams(var Params: TCreateParams) ;//процедура дл€ того чтобы €рлык в панели задач не пропадал
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := 0;
end;

end.
