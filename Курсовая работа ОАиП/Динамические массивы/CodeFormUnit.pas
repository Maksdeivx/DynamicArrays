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
    0:webbrowser1.navigate(PChar(filepath + 'codes\Создание массивов\одномерные\целочисленный.htm'));
    1:webbrowser1.navigate(PChar(filepath + 'codes\Создание массивов\одномерные\вещественный.htm'));
    2:webbrowser1.navigate(PChar(filepath + 'codes\Создание массивов\одномерные\символьный.htm'));
    3:webbrowser1.navigate(PChar(filepath + 'codes\Создание массивов\двумерные\целочисленный.htm'));
    4:webbrowser1.navigate(PChar(filepath + 'codes\Создание массивов\двумерные\вещественный.htm'));
    5:webbrowser1.navigate(PChar(filepath + 'codes\Создание массивов\двумерные\символьный.htm'));
    6:webbrowser1.navigate(PChar(filepath + 'codes\Сортировка массива\по возрастанию\процедурой.htm'));
    7:webbrowser1.navigate(PChar(filepath + 'codes\Сортировка массива\по убыванию\процедурой.htm'));
    8:webbrowser1.navigate(PChar(filepath + 'codes\Сортировка массива\по возрастанию\прямого выбора.htm'));
    9:webbrowser1.navigate(PChar(filepath + 'codes\Сортировка массива\по убыванию\прямого выбора.htm'));
    10:webbrowser1.navigate(PChar(filepath + 'codes\Сортировка массива\по возрастанию\пузырьком.htm'));
    11:webbrowser1.navigate(PChar(filepath + 'codes\Сортировка массива\по убыванию\пузырьком.htm'));
    12:webbrowser1.navigate(PChar(filepath + 'codes\Поиск в массиве\Перебор элементов\целочисленный.htm'));
    13:webbrowser1.navigate(PChar(filepath + 'codes\Поиск в массиве\Перебор элементов\вещественный.htm'));
    14:webbrowser1.navigate(PChar(filepath + 'codes\Поиск в массиве\Перебор элементов\символьный.htm'));
    15:webbrowser1.navigate(PChar(filepath + 'codes\Поиск в массиве\бинарный поиск.htm'));
    16:webbrowser1.navigate(PChar(filepath + 'codes\Чтение и изменение массива\изменение элемента\целочисленный.htm'));
    17:webbrowser1.navigate(PChar(filepath + 'codes\Чтение и изменение массива\изменение элемента\вещественный.htm'));
    18:webbrowser1.navigate(PChar(filepath + 'codes\Чтение и изменение массива\изменение элемента\символьный.htm'));
    19:webbrowser1.navigate(PChar(filepath + 'codes\Чтение и изменение массива\удаление элемента.htm'));
  end;
end;

procedure TCodeForm.SetCodeID(NewCodeID: Integer);
begin
  Code_ID := NewCodeID;
end;

end.
