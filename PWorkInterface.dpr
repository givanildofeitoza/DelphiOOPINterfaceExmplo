program PWorkInterface;

uses
  Vcl.Forms,
  WorkInterface in 'WorkInterface.pas' {Form1},
  ICadastros in 'ICadastros.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
