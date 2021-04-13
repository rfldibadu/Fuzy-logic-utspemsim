unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ValEdit, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.Math;

type
  TForm4 = class(TForm)
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Memo1: TMemo;
    hitung_perm: TButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    hitung_pers: TButton;
    Memo2: TMemo;
    Panel3: TPanel;
    Label3: TLabel;
    DBGrid3: TDBGrid;
    implikasi: TButton;
    Memo3: TMemo;
    prod_hitung: TButton;
    Label4: TLabel;
    home_btn: TButton;
    Memo4: TMemo;
    centroid_hitung: TButton;
    procedure hitung_permClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure hitung_persClick(Sender: TObject);
    procedure implikasiClick(Sender: TObject);
    procedure prod_hitungClick(Sender: TObject);
    procedure home_btnClick(Sender: TObject);
    procedure centroid_hitungClick(Sender: TObject);
  private
  z_perm,z2_perm,z_pers,z2_pers:Float64;
  z1,z2,z3:Integer;
  c,z4,r1,r2,r3,r4:Float64;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses
unit1,unit2,unit3;
{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm4.centroid_hitungClick(Sender: TObject);
var
s:string;
begin
if (z1=0) or (z2=0) or (z3=0) or (z4=0) then begin
MessageBox(Handle, 'Hitung nilai z terlebih dahulu', 'Caution!', MB_ICONEXCLAMATION or MB_OK);
end else if (z_perm=0) or (z2_perm=0) or (z_pers=0) or (z2_pers=0) then begin
MessageBox(Handle, 'Hitung nilai Permintaan dan Persediaan terlebih dahulu', 'Caution!', MB_ICONEXCLAMATION or MB_OK);
end else begin
Memo4.Lines.Add('Centroid');
c:=((r1*z1)+(r2*z2)+(r3*z3)+(r4*z4))/(r1+r2+r3+r4);
s:= FloatToStr(c)+' Kemasan/Hari';
Memo4.Lines.Add(s);
centroid_hitung.Enabled:=False;
end;
end;

procedure TForm4.hitung_permClick(Sender: TObject);

var
fuzzy,s : string;
a:Integer;
x,x2:Integer;

begin
a:=Form2.input_zq.FieldByName('permintaan').AsInteger;

x:= Form2.perm_zq.FieldByName('nilai_x').AsInteger;
x2:= Form2.perm_zq.FieldByName('nilai_x2').AsInteger;
fuzzy := Form2.perm_zq.FieldByName('istilah').AsString;

while not Form2.perm_zq.Eof do begin

  z_perm:= (x2-a)/a;
  s:= 'Hasil ('+fuzzy+') : ('+ IntToStr(x2)+'-'+IntToStr(a)+')/'
  +IntToStr(a)+'='+FloatToStr(z_perm);
  Memo1.Lines.Add(s);
  s:='';
  fuzzy:='';
  Form2.perm_zq.Next;
  fuzzy := Form2.perm_zq.FieldByName('istilah').AsString;
  z2_perm:=(a-x)/a;
  s:= 'Hasil ('+fuzzy+') : ('+ IntToStr(a)+'-'+IntToStr(x)+')/'
  +IntToStr(a)+'='+FloatToStr(z2_perm);
  Memo1.Lines.Add(s);
  Form2.perm_zq.Next;
end


end;

procedure TForm4.hitung_persClick(Sender: TObject);
var
fuzzy,s : string;
a,b:Integer;
x,x2:Integer;

begin
a:=Form2.input_zq.FieldByName('persediaan').AsInteger;
x:= Form2.pers_zq.FieldByName('nilai_x').AsInteger;
x2:= Form2.pers_zq.FieldByName('nilai_x2').AsInteger;
fuzzy := Form2.pers_zq.FieldByName('istilah').AsString;

while not Form2.pers_zq.Eof do begin

  b:= x2-x;
  z_pers:= (x2-a)/b;
  s:= 'Hasil ('+fuzzy+') : ('+ IntToStr(x2)+'-'+IntToStr(a)+')/'
  +IntToStr(b)+'='+FloatToStr(z_pers);
  Memo2.Lines.Add(s);
  s:='';
  fuzzy:='';
  Form2.pers_zq.Next;
  fuzzy := Form2.pers_zq.FieldByName('istilah').AsString;
  z2_pers:=(a-x)/b;
  s:= 'Hasil ('+fuzzy+') : ('+ IntToStr(a)+'-'+IntToStr(x)+')/'
  +IntToStr(a)+'='+FormatFloat('#,##0.0',z2_pers);
  Memo2.Lines.Add(s);
  Form2.pers_zq.Next;
end
end;

procedure TForm4.home_btnClick(Sender: TObject);
begin
Form4.hide;
Form1.Show;
end;

procedure TForm4.implikasiClick(Sender: TObject);
var
fuzzy,id,perm,pers,prod:string;

begin
if (z_perm=0) or (z2_perm=0) or (z_pers=0) or (z2_pers=0) then begin
MessageBox(Handle, 'Hitung nilai Permintaan dan Persediaan terlebih dahulu', 'Caution!', MB_ICONEXCLAMATION or MB_OK);
end else begin
implikasi.Enabled:=False;
Form2.rule_zq.First;
id:= Form2.rule_zq.FieldByName('id').AsString;
perm:= Form2.rule_zq.FieldByName('permintaan').AsString;
pers:= Form2.rule_zq.FieldByName('persediaan').AsString;
prod:= Form2.rule_zq.FieldByName('produksi').AsString;

with Form2 do
  Memo3.Lines.Add('Implikasi');
  r1:=Min(z_perm,z2_pers);
  r2:=Min(z_perm,z_pers);
  r3:=Min(z2_perm,z2_pers);
  r4:=Min(z2_perm,z_pers);

  fuzzy:=id+' - '+perm+'('+FloatToStr(z_perm)+') ∩ '+pers+'('+FloatToStr(z2_pers)+'), '+prod+'('+FloattoStr(r1)+')';
  Memo3.Lines.Add(fuzzy);
  Form2.rule_zq.Next;
  fuzzy:='';
  fuzzy:=id+' - '+perm+'('+FloatToStr(z_perm)+') ∩ '+pers+'('+FloatToStr(z_pers)+'), '+prod+'('+FloattoStr(r2)+')';
  Memo3.Lines.Add(fuzzy);
  Form2.rule_zq.Next;
  fuzzy:='';
  fuzzy:=id+' - '+perm+'('+FloatToStr(z2_perm)+') ∩ '+pers+'('+FloatToStr(z2_pers)+'), '+prod+'('+FloattoStr(r3)+')';
  Memo3.Lines.Add(fuzzy);
  Form2.rule_zq.Next;
  fuzzy:='';
  fuzzy:=id+' - '+perm+'('+FloatToStr(z2_perm)+') ∩ '+pers+'('+FloatToStr(z_pers)+'), '+prod+'('+FloattoStr(r4)+')';
  Memo3.Lines.Add(fuzzy);
  Form2.rule_zq.Next;
end;

end;
procedure TForm4.prod_hitungClick(Sender: TObject);
var
a,b:Integer;
s:string;
begin
prod_hitung.Enabled:=False;
Memo3.Lines.Add('');
Memo3.Lines.Add('Nilai Z');
a:=Form2.input_zq.FieldByName('permintaan').AsInteger;
b:=Form2.input_zq.FieldByName('persediaan').AsInteger;
z1:=a-b;
z2:=a;
z3:=a;
z4:=1.25*(z1);

s:= 'Z1 - '+'Permintaan('+IntToStr(a)+')-'+'Persediaan('+IntToStr(b)+')='+IntToStr(z1);
Memo3.Lines.Add(s);
s:='';
s:= 'Z2 - '+'Permintaan('+IntToStr(a)+'=)'+IntToStr(z2);
Memo3.Lines.Add(s);
s:='';
s:= 'Z3 - '+'Permintaan('+IntToStr(a)+'=)'+IntToStr(z3);
Memo3.Lines.Add(s);
s:='';
s:= 'Z4 - '+'1.25*(Permintaan('+IntToStr(a)+')-'+'Persediaan('+IntToStr(b)+'))='+FloatToStr(z4);
Memo3.Lines.Add(s);
end;

end.
