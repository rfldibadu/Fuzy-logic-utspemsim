unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm2 = class(TForm)
    ZConnection1: TZConnection;
    input_zq: TZQuery;
    input_ds: TDataSource;
    rule_zq: TZQuery;
    rule_ds: TDataSource;
    var_zq: TZQuery;
    var_ds: TDataSource;
    perm_zq: TZQuery;
    perm_ds: TDataSource;
    pers_zq: TZQuery;
    pers_ds: TDataSource;
    prod_zq: TZQuery;
    prod_ds: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses
unit1;
{$R *.dfm}

end.
