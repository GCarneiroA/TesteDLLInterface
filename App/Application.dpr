program Application;

uses
  System.StartUpCopy,
  FMX.Forms,
  u_main in 'u_main.pas' {Form1},
  uFuncIntf in '..\uFuncIntf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
