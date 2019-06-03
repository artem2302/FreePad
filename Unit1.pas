unit Unit1;

{$MODE Delphi}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, Printers, StdActns, ActnList, Unit3, PrintersDlgs;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    N17: TMenuItem;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    RichEdit1: TMemo;
    N18: TMenuItem;
    N19: TMenuItem;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    Paste1: TMenuItem;
    SelectAll1: TMenuItem;
    EditUndo1: TEditUndo;
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N15Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure N16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  Form1: TForm1;

implementation
    type myrec=record
    REd: TRichEdit;
    Ts: TTabSheet;
    end;

var FName: string;
    i: integer;
    m: array of myrec;


{$R *.lfm}

procedure TForm1.N5Click(Sender: TObject);
begin
if OpenDialog1.Execute then begin
m[PageControl1.ActivePageIndex].REd.Clear;
m[PageControl1.ActivePageIndex].REd.Lines.LoadFromFile(OpenDialog1.Filename);
m[PageControl1.ActivePageIndex].Ts.Caption:=OpenDialog1.FileName;
end;

end;

procedure TForm1.N6Click(Sender: TObject);
begin
if FileExistsUTF8(m[PageControl1.ActivePageIndex].Ts.Caption) { *Converted from FileExists* }
then begin
m[PageControl1.ActivePageIndex].REd.Lines.SaveToFile(m[PageControl1.ActivePageIndex].Ts.Caption);
m[PageControl1.ActivePageIndex].REd.Modified:=False;
end
  else
  if SaveDialog1.Execute then begin
FName:=SaveDialog1.FileName;
m[PageControl1.ActivePageIndex].REd.Lines.SaveToFile(FName+'.txt');
m[PageControl1.ActivePageIndex].Ts.Caption:=SaveDialog1.FileName;
m[PageControl1.ActivePageIndex].REd.Modified:=False;
end;
MessageDLG('Файл сохранен!',mtInformation,[mbOK],0);
end;

procedure TForm1.N7Click(Sender: TObject);
begin
if SaveDialog1.Execute then begin
FName:=SaveDialog1.FileName+'.txt';
m[PageControl1.ActivePageIndex].REd.Lines.SaveToFile(FName);
m[PageControl1.ActivePageIndex].Ts.Caption:=SaveDialog1.FileName;
m[PageControl1.ActivePageIndex].REd.Modified:=False;
end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
SetLength(m,1);
m[0].REd:=RichEdit1;
m[0].Ts:=TabSheet1;
i:=1;
OpenDialog1.Filter:='Text files (*.txt)|*.txt|All files|*.*';
SaveDialog1.Filter:='Text files (*.txt)|*.txt|All files|*.*';
TabSheet1.Caption:=TabSheet1.Caption+inttostr(i);
m[0].REd.SetFocus;
end;

procedure TForm1.N8Click(Sender: TObject);
var r: word;
    tt: integer;
begin
if PageControl1.PageCount<>0 then begin
 if m[PageControl1.ActivePageIndex].REd.Modified
 then begin
r:=MessageDLG('Сохранить изменения в файле '+m[PageControl1.ActivePageIndex].Ts.Caption+'?',mtConfirmation,[mbYes,mbNo,mbCancel],0);
if r=mrYes then
begin
m[PageControl1.ActivePageIndex].REd.Lines.SaveToFile(m[PageControl1.ActivePageIndex].Ts.Caption);
m[PageControl1.ActivePageIndex].REd.Modified:=False;
 PageControl1.ActivePage.Free
end else
if r=mrNo then begin
 PageControl1.ActivePage.Free;
 if PageControl1.PageCount<>0 then m[PageControl1.ActivePageIndex].REd.Modified:=False;
 end;
end;
SetLength(m,PageControl1.PageCount);
tt:=PageControl1.ActivePageIndex;
PageControl1.ActivePage.Free;
PageControl1.ActivePageIndex:=tt-1;
end else MessageDLG('Нечего закрывать!',mtWarning,[mbOK],0);

end;

procedure TForm1.N17Click(Sender: TObject);
begin
m[PageControl1.ActivePageIndex].REd.SelectAll;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
PrinterSetupDialog1.Execute;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
if PrintDialog1.Execute then
begin
m[PageControl1.ActivePageIndex].REd.Print('');
end;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var r: word;
    i: integer;
begin
for i:=0 to length(m)-1 do begin
if m[i].REd.Modified then begin
r:=MessageDLG('Сохранить изменения в файле '+m[i].Ts.Caption+'?',mtConfirmation,[mbYes,mbNo,mbCancel],0);
if r=mrYes then
begin
m[PageControl1.ActivePageIndex].REd.Lines.SaveToFile(m[PageControl1.ActivePageIndex].Ts.Caption);
m[i].REd.Modified:=False;
CanClose:=True;
end else
if r=mrNo then begin
m[i].REd.Modified:=False;
CanClose:=True;
end else if r=mrCancel then CanClose:=False;
end
end;

end;

procedure TForm1.N15Click(Sender: TObject);
begin
MessageDLG('FreePad v1.0'+ #13#10+'  (c) 2015',mtInformation,[mbOK],0)
end;

procedure TForm1.N18Click(Sender: TObject);
var TabSheetNew: TTabSheet;
    NewEdit: TRichEdit;
begin
TabSheetNew:=TTabSheet.Create(Form1);
 with TabSheetNew do
    begin
      PageControl := PageControl1;
      Caption := 'NewFile' + IntToStr(PageControl1.PageCount);
    end;
      SetLength(m,PageControl1.PageCount);
      m[PageControl1.PageCount-1].Ts:=TabSheetNew;
      NewEdit:=TRichEdit.Create(Form1);
      NewEdit.Align:=AlClient;
      NewEdit.ScrollBars:=ssBoth;
      NewEdit.Parent:=TabSheetNew;
      NewEdit.PlainText:=True;
      NewEdit.WordWrap:=True;
      NewEdit.Name:='DEdit'+IntToStr(PageControl1.PageCount);
      PageControl1.ActivePage:=TabSheetNew;
      NewEdit.Clear;
      m[PageControl1.PageCount-1].REd:=NewEdit;
 end;

procedure TForm1.N19Click(Sender: TObject);
begin
N19.Checked:=not N19.Checked;
if N19.Checked then m[PageControl1.ActivePageIndex].REd.WordWrap:=true else
  m[PageControl1.ActivePageIndex].REd.WordWrap:=false;
end;


procedure TForm1.PageControl1Change(Sender: TObject);
begin
N19.Checked:=m[PageControl1.ActivePageIndex].REd.WordWrap;
end;

procedure TForm1.N16Click(Sender: TObject);
begin
Application.CreateForm(TForm3, Form3);
Form3.ShowModal;
Form3.Free;
end;

end.
