unit SplashFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, CommCtrl,
  GIFImg, Vcl.Imaging.pngimage;

type
  TSplashForm = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    Image2: TImage;
    {procedure Button1Click(Sender: TObject);}
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation
{$R *.dfm}

uses MainFormUnit;

procedure TSplashForm.FormCreate(Sender: TObject);
begin
(Image1.Picture.Graphic as TGIFImage).Animate := True;
end;


procedure TSplashForm.Timer1Timer(Sender: TObject);
begin
timer1.enabled:=false;
end;

end.
