unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    input_pers: TEdit;
    Label3: TLabel;
    input_perm: TEdit;
    Label2: TLabel;
    DBGrid3: TDBGrid;
    Label5: TLabel;
    next_btn: TButton;
    Label6: TLabel;
    prev_btn: TButton;
    procedure close_btnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure next_btnClick(Sender: TObject);
    procedure prev_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
unit2, unit3, unit4;
{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Form1.Close;
Form2.Close;
Application.Terminate;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form2.input_zq.Active:=True;
with Form2 do
if (input_perm.Text='') or (input_pers.Text='') then begin
  MessageBox(Handle, 'Please fill all input', 'Caution!', MB_ICONEXCLAMATION or MB_OK);
end
  else begin
  if input_zq.RecordCount>0 then begin
      MessageBox(Handle, 'Record hanya boleh satu', 'Caution!', MB_ICONEXCLAMATION or MB_OK);
  end else begin

    input_zq.Close;
    input_zq.SQL.Clear;
    input_zq.SQL.Add('INSERT INTO inputan (permintaan, persediaan) VALUES ("'+input_perm.Text+'","'+input_pers.Text+'")');
    input_zq.ExecSQL;

    input_zq.Close;
    input_zq.SQL.Clear;
    input_zq.SQL.Add('SELECT * FROM inputan');
    input_zq.Open;

    MessageBox(Handle, 'Record saved', 'Notification', MB_ICONINFORMATION or MB_OK);
    Form2.input_zq.Open;
    Form2.rule_zq.Open;
    Form2.var_zq.Open;
    Form2.perm_zq.Open;
    Form2.pers_zq.Open;
    Form2.prod_zq.Open;

    Form2.perm_zq.First;
    Form2.pers_zq.First;
    Form2.prod_zq.First;

    Form4.Memo1.Clear;
    Form4.Memo2.Clear;
    Form4.Memo3.Clear;
    Form4.Memo4.Clear;
    Form4.implikasi.Enabled:=True;
    Form4.prod_hitung.Enabled:=True;
    Form4.centroid_hitung.Enabled:=True;
  end;
  end;

end;

procedure TForm1.close_btnClick(Sender: TObject);
begin
Form1.Close;
Form2.Close;
Application.Terminate;
end;

procedure TForm1.next_btnClick(Sender: TObject);
begin
  Form1.Hide;
  Form4.Show;
end;

procedure TForm1.prev_btnClick(Sender: TObject);
begin
  Form1.Hide;
  Form3.Show;
end;

end.
