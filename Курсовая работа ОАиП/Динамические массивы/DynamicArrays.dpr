program DynamicArrays;

uses
  Vcl.Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  SplashFormUnit in 'SplashFormUnit.pas' {SplashForm},
  SectionsFormUnit in 'SectionsFormUnit.pas' {SectionsForm},
  ArrayFormUnit in 'ArrayFormUnit.pas' {ArrayForm},
  TheoryFormUnit in 'TheoryFormUnit.pas' {TheoryForm},
  CodeFormUnit in 'CodeFormUnit.pas' {CodeForm};

{$R *.res}

begin
  Application.Initialize;
  {Показываем заставку пока не истечет таймер}
  MainForm:=TMainForm.Create(Application);
  SplashForm:=TsplashForm.Create(Application);
  SplashForm.show;
  SplashForm.Update;
  while SplashForm.Timer1.Enabled do
  Application.ProcessMessages;

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TSectionsForm, SectionsForm);
  Application.CreateForm(TArrayForm, ArrayForm);
  Application.CreateForm(TTheoryForm, TheoryForm);
  Application.CreateForm(TCodeForm, CodeForm);
  {Скрываем заставку}
  SplashForm.hide;
  SplashForm.Free;
  Application.Run;
end.
