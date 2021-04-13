object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
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
  object Label1: TLabel
    Left = 360
    Top = 8
    Width = 64
    Height = 23
    Caption = 'GRAFIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid3: TDBGrid
    Left = 446
    Top = 184
    Width = 323
    Height = 120
    DataSource = Form2.prod_ds
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
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
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilai_x'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilai_y'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilai_x2'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilai_y2'
        Width = 52
        Visible = True
      end>
  end
  object Chart3: TChart
    Left = 24
    Top = 128
    Width = 400
    Height = 250
    Title.Text.Strings = (
      'PRODUKSI')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 9000.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.300000000000000000
    TabOrder = 5
    Visible = False
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object FastLineSeries3: TFastLineSeries
      HoverElement = []
      SeriesColor = clRed
      Title = 'Naik'
      LinePen.Color = clRed
      LinePen.SmallDots = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      Data = {
        01020000000000000000409F400000000000000000000000000040BF40000000
        000000F03F}
    end
    object FastLineSeries4: TFastLineSeries
      HoverElement = []
      SeriesColor = clBlue
      Title = 'Turun'
      LinePen.Color = clBlue
      LinePen.SmallDots = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      Data = {
        03020000000000000000409F40000000000000F03F00000020000000000040BF
        400000000000000000FF000000}
    end
  end
  object close_btn: TButton
    Left = 16
    Top = 498
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'CLOSE'
    TabOrder = 0
    OnClick = close_btnClick
  end
  object DBGrid2: TDBGrid
    Left = 446
    Top = 184
    Width = 320
    Height = 120
    DataSource = Form2.pers_ds
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
        FieldName = 'istilah'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilai_x'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilai_y'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilai_x2'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilai_y2'
        Width = 52
        Visible = True
      end>
  end
  object Chart2: TChart
    Left = 24
    Top = 128
    Width = 400
    Height = 250
    Title.Text.Strings = (
      'PERSEDIAAN')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 700.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.300000000000000000
    TabOrder = 4
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object FastLineSeries1: TFastLineSeries
      HoverElement = []
      SeriesColor = clRed
      Title = 'Naik'
      LinePen.Color = clRed
      LinePen.SmallDots = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      Data = {
        0102000000000000000000594000000000000000000000000000C08240000000
        000000F03F}
    end
    object FastLineSeries2: TFastLineSeries
      HoverElement = []
      SeriesColor = clBlue
      Title = 'Turun'
      LinePen.Color = clBlue
      LinePen.SmallDots = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      Data = {
        03020000000000000000005940000000000000F03F000000200000000000C082
        400000000000000000FF000000}
    end
  end
  object DBGrid1: TDBGrid
    Left = 446
    Top = 184
    Width = 323
    Height = 120
    DataSource = Form2.perm_ds
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
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilai_x'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilai_y'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilai_x2'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilai_y2'
        Width = 52
        Visible = True
      end>
  end
  object Chart1: TChart
    Left = 24
    Top = 128
    Width = 400
    Height = 250
    Title.Text.Strings = (
      'PERMINTAAN')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 6000.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.300000000000000000
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TFastLineSeries
      HoverElement = []
      SeriesColor = clRed
      Title = 'Naik'
      LinePen.Color = clRed
      LinePen.SmallDots = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      Data = {
        01020000000000000000408F400000000000000000000000000088B340000000
        000000F03F}
    end
    object Series2: TFastLineSeries
      HoverElement = []
      SeriesColor = clBlue
      Title = 'Turun'
      LinePen.Color = clBlue
      LinePen.SmallDots = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      Data = {
        03020000000000000000408F40000000000000F03F00000020000000000088B3
        400000000000000000FF000000}
    end
  end
  object perm_btn: TButton
    Left = 216
    Top = 64
    Width = 89
    Height = 25
    Caption = 'PERMINTAAN'
    TabOrder = 7
    OnClick = perm_btnClick
  end
  object pers_btn: TButton
    Left = 351
    Top = 64
    Width = 89
    Height = 25
    Caption = 'PERSEDIAAN'
    TabOrder = 8
    OnClick = pers_btnClick
  end
  object prod_btn: TBitBtn
    Left = 479
    Top = 64
    Width = 89
    Height = 25
    Caption = 'PRODUKSI'
    TabOrder = 9
    OnClick = prod_btnClick
  end
  object home_btn: TButton
    Left = 712
    Top = 498
    Width = 75
    Height = 25
    Caption = 'MAIN MENU'
    TabOrder = 10
    OnClick = home_btnClick
  end
end
