object frmBusqueda: TfrmBusqueda
  Left = 0
  Top = 0
  Caption = 'Busqueda'
  ClientHeight = 344
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object edtBusqueda: TAdvEdit
    Left = 0
    Top = 0
    Width = 620
    Height = 33
    AutoFocus = True
    EmptyText = 'Buscar ...'
    EmptyTextStyle = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    BevelInner = bvNone
    Align = alTop
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = ''
    Visible = True
    OnChange = edtBusquedaChange
    Version = '3.3.2.8'
  end
  object CRDBGrid1: TCRDBGrid
    Left = 0
    Top = 33
    Width = 620
    Height = 311
    Align = alClient
    DataSource = DSUnquery
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = CRDBGrid1DblClick
  end
  object qUnquery: TUniQuery
    Connection = DM.DBNLND
    Left = 328
    Top = 176
  end
  object DSUnquery: TDataSource
    AutoEdit = False
    DataSet = qUnquery
    Left = 200
    Top = 120
  end
end
