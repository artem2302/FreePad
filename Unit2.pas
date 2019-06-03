unit Unit2;

{$MODE Delphi}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TExitConfirm = class(TForm)
    StaticText1: TStaticText;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExitConfirm: TExitConfirm;

implementation

{$R *.lfm}

procedure TExitConfirm.Button3Click(Sender: TObject);
begin
ExitConfirm.Close;
end;

end.
