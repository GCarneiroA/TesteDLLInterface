unit u_main;

interface

uses
  uFuncIntf,
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    btEcho: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    btReverse: TButton;
    btSoma: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    procedure btEchoClick(Sender: TObject);
    procedure btReverseClick(Sender: TObject);
    procedure btSomaClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

function GetFunctions: IFunctions; external 'DLLInterface.dll';

{$R *.fmx}

procedure TForm1.btEchoClick(Sender: TObject);
var
  func: IFunctions;
begin
  func := GetFunctions;
  Edit5.Text := func.Echo(Edit1.Text);
end;

procedure TForm1.btReverseClick(Sender: TObject);
var
  func: IFunctions;
begin
  func := GetFunctions;
  Edit6.Text := func.Reverse(Edit2.Text);
end;

procedure TForm1.btSomaClick(Sender: TObject);
var
  func: IFunctions;
begin
  func := GetFunctions;
  Edit7.Text := func.Soma(string.ToInteger(Edit3.Text), string.ToInteger(Edit4.Text)).ToString;
end;

end.
