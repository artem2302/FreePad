program Project1;

{$MODE Delphi}

uses
  Forms, Interfaces,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {ExitConfirm},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'FreePad';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TExitConfirm, ExitConfirm);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
