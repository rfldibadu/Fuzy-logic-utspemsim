unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, VclTee.TeeGDIPlus, Data.DB,
  Vcl.Grids, Vcl.DBGrids, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart;

type
  TForm3 = class(TForm)
    close_btn: TButton;
    Label1: TLabel;
    Chart1: TChart;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Chart2: TChart;
    FastLineSeries1: TFastLineSeries;
    FastLineSeries2: TFastLineSeries;
    Chart3: TChart;
    FastLineSeries3: TFastLineSeries;
    FastLineSeries4: TFastLineSeries;
    DBGrid3: TDBGrid;
    perm_btn: TButton;
    pers_btn: TButton;
    prod_btn: TBitBtn;
    home_btn: TButton;
    procedure close_btnClick(Sender: TObject);
    procedure perm_btnClick(Sender: TObject);
    procedure pers_btnClick(Sender: TObject);
    procedure prod_btnClick(Sender: TObject);
    procedure home_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses
unit1, unit2, unit4;
{$R *.dfm}

procedure TForm3.home_btnClick(Sender: TObject);
begin
Form3.Hide;
Form1.Show;
end;

procedure TForm3.perm_btnClick(Sender: TObject);
begin
  Chart1.Visible:=True;
  DBGrid1.Visible:=True;

  Chart2.Visible:=False;
  DBGrid2.Visible:=False;
  Chart3.Visible:=False;
  DBGrid3.Visible:=False;
end;

procedure TForm3.pers_btnClick(Sender: TObject);
begin

  Chart2.Visible:=True;
  DBGrid2.Visible:=True;
  
  Chart1.Visible:=False;
  DBGrid1.Visible:=False;
  Chart3.Visible:=False;
  DBGrid3.Visible:=False;

  
end;

procedure TForm3.prod_btnClick(Sender: TObject);
begin
  Chart3.Visible:=True;
  DBGrid3.Visible:=True;

  Chart1.Visible:=False;
  DBGrid1.Visible:=False;
  Chart2.Visible:=False;
  DBGrid2.Visible:=False;
end;

procedure TForm3.close_btnClick(Sender: TObject);
begin
Form1.Close;
Form2.Close;
Application.Terminate;
end;

end.
