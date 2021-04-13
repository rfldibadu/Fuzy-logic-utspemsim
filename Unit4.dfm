object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 542
  ClientWidth = 808
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 358
    Top = 8
    Width = 108
    Height = 23
    Caption = 'FUZZIFIKASI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 506
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'CLOSE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Panel1: TPanel
    Left = 16
    Top = 48
    Width = 377
    Height = 209
    TabOrder = 1
    object Label1: TLabel
      Left = 152
      Top = 8
      Width = 65
      Height = 13
      Caption = 'PERMINTAAN'
    end
    object Memo1: TMemo
      Left = 8
      Top = 136
      Width = 361
      Height = 57
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 0
    end
    object hitung_perm: TButton
      Left = 294
      Top = 105
      Width = 75
      Height = 25
      Caption = 'HITUNG'
      TabOrder = 1
      OnClick = hitung_permClick
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 27
      Width = 361
      Height = 65
      DataSource = Form2.perm_ds
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Istilah'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_x'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_y'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_x2'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_y2'
          Width = 60
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 416
    Top = 48
    Width = 384
    Height = 209
    TabOrder = 2
    object Label2: TLabel
      Left = 170
      Top = 8
      Width = 63
      Height = 13
      Caption = 'PERSEDIAAN'
    end
    object DBGrid2: TDBGrid
      Left = 16
      Top = 27
      Width = 361
      Height = 65
      DataSource = Form2.pers_ds
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'istilah'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_x'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_y'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_x2'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_y2'
          Width = 60
          Visible = True
        end>
    end
    object hitung_pers: TButton
      Left = 302
      Top = 103
      Width = 75
      Height = 25
      Caption = 'HITUNG'
      TabOrder = 1
      OnClick = hitung_persClick
    end
    object Memo2: TMemo
      Left = 16
      Top = 134
      Width = 361
      Height = 57
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 16
    Top = 272
    Width = 784
    Height = 228
    TabOrder = 3
    object Label3: TLabel
      Left = 358
      Top = 13
      Width = 51
      Height = 13
      Caption = 'PRODUKSI'
    end
    object DBGrid3: TDBGrid
      Left = 16
      Top = 32
      Width = 361
      Height = 65
      DataSource = Form2.prod_ds
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'istilah'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_x'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_y'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_x2'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_y2'
          Width = 60
          Visible = True
        end>
    end
    object implikasi: TButton
      Left = 416
      Top = 30
      Width = 75
      Height = 25
      Caption = 'IMPLIKASI'
      TabOrder = 1
      OnClick = implikasiClick
    end
    object Memo3: TMemo
      Left = 416
      Top = 56
      Width = 361
      Height = 169
      ReadOnly = True
      TabOrder = 2
    end
    object prod_hitung: TButton
      Left = 497
      Top = 30
      Width = 75
      Height = 25
      Caption = 'HITUNG (Z)'
      TabOrder = 3
      OnClick = prod_hitungClick
    end
    object Memo4: TMemo
      Left = 184
      Top = 119
      Width = 185
      Height = 50
      Lines.Strings = (
        '')
      ReadOnly = True
      TabOrder = 4
    end
    object centroid_hitung: TButton
      Left = 80
      Top = 120
      Width = 75
      Height = 25
      Caption = 'CENTROID'
      TabOrder = 5
      OnClick = centroid_hitungClick
    end
  end
  object home_btn: TButton
    Left = 718
    Top = 509
    Width = 75
    Height = 25
    Caption = 'MAIN MENU'
    TabOrder = 4
    OnClick = home_btnClick
  end
end
