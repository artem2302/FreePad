begin
j:=1;
with sg do begin
DefaultColWidth:=120;
cells[1,0]:='Íîìåð èòåðàöèè';
cells[2,0]:='Àðãóìåíò ôóíêöèè';
cells[3,0]:='Ðåçóëüòàò âû÷èñëåíèÿ';
cells[4,0]:='Óñëîâèå';
if Form1.RadioButton1.Checked then
 begin
RowCount:=Form1.n+1;
for i:=1 to RowCount do
begin
  cells[1,i]:=IntToStr(i);
  cells[2,i]:=FloatToStrF(Form1.x,ffGeneral,3,4);
  cells[3,i]:=FloatToStrF(Form2.TheFunction,ffGeneral,3,4);
  cells[4,i]:=Condition;
  Form1.x:=Form1.x+Form1.h;
end;
end else if Form1.RadioButton2.Checked then begin
while Form1.x<=Form1.B1 do begin
  inc(Form1.n);
  cells[1,j]:=IntToStr(Form1.n);
  cells[2,j]:=FloatToStrF(Form1.x,ffGeneral,3,4);
  cells[3,j]:=FloatToStrF(Form2.TheFunction,ffGeneral,3,4);
  cells[4,j]:=Condition;
  Form1.x:=Form1.x+Form1.h;
  inc(j);
  RowCount:=j;
end;
  Form1.Edit4.Text:=IntToStr(Form1.n);
  end else if Form2.RadioButton3.Checked then begin
end;
end;