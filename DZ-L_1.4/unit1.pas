unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  start, finish, y, i, step: float;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  memo1.lines.clear;
  start := StrToFloat(Edit1.Text);
  finish := StrToFloat(Edit2.Text);
  step := StrToFloat(Edit3.Text);
  i := start;
  while i <= finish do begin
    y := power(i, 2);
    memo1.Lines.add('Для числа ' + FloatToStr(i) + ' значение функции y = x² равно ' + FloatToStr(y));
    i := i + step;
    end;
  end;

end.

