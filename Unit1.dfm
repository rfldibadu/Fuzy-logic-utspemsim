object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 531
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 536
    Top = 56
    Width = 50
    Height = 13
    Caption = 'Tabel Rule'
  end
  object Label5: TLabel
    Left = 352
    Top = 368
    Width = 70
    Height = 13
    Caption = 'Tabel  Variabel'
  end
  object Label6: TLabel
    Left = 376
    Top = 13
    Width = 65
    Height = 13
    Caption = 'FUZZY LOGIC'
  end
  object Panel1: TPanel
    Left = 55
    Top = 56
    Width = 289
    Height = 289
    Color = clMenu
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 120
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Inputan'
    end
    object Label3: TLabel
      Left = 48
      Top = 99
      Width = 53
      Height = 13
      Caption = 'Persediaan'
    end
    object Label2: TLabel
      Left = 48
      Top = 59
      Width = 54
      Height = 13
      Caption = 'Permintaan'
    end
    object DBGrid1: TDBGrid
      Left = 56
      Top = 164
      Width = 185
      Height = 49
      DataSource = Form2.input_ds
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
          FieldName = 'permintaan'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'persediaan'
          Width = 70
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 17
      Top = 231
      Width = 240
      Height = 25
      DataSource = Form2.input_ds
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      TabOrder = 1
    end
    object Button1: TButton
      Left = 174
      Top = 133
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 2
      OnClick = Button1Click
    end
    object input_pers: TEdit
      Left = 120
      Top = 96
      Width = 129
      Height = 21
      TabOrder = 3
    end
    object input_perm: TEdit
      Left = 120
      Top = 56
      Width = 129
      Height = 21
      TabOrder = 4
    end
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 498
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
  object DBGrid2: TDBGrid
    Left = 443
    Top = 96
    Width = 254
    Height = 105
    DataSource = Form2.rule_ds
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'permintaan'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'persediaan'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'produksi'
        Width = 60
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 103
    Top = 387
    Width = 569
    Height = 86
    DataSource = Form2.var_ds
    ReadOnly = True
    TabOrder = 3
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
        FieldName = 'jenis'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_variabel'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'min_istilah'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'min_angka'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'max_istilah'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'max_angka'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'satuan'
        Width = 80
        Visible = True
      end>
  end
  object next_btn: TButton
    Left = 712
    Top = 498
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'FUZZIFIKASI'
    TabOrder = 4
    OnClick = next_btnClick
  end
  object prev_btn: TButton
    Left = 617
    Top = 498
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'GRAFIK'
    TabOrder = 5
    OnClick = prev_btnClick
  end
end
