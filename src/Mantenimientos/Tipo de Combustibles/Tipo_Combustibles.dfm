object FrmTipo_Combustibles: TFrmTipo_Combustibles
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Tipo de Combustibles'
  ClientHeight = 247
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 247
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 383
      Height = 36
      Align = alTop
      Alignment = taCenter
      Caption = 'Tipos de Combustibles'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      ExplicitWidth = 294
    end
    object DBAdvEdit1: TDBAdvEdit
      Left = 80
      Top = 56
      Width = 299
      Height = 27
      Hint = 'Descripci'#243'n de la marca'
      EmptyTextStyle = []
      LabelCaption = 'Descripci'#243'n.:'
      LabelPosition = lpLeftCenter
      LabelMargin = 5
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'DESCRIPCION'
      DataSource = DsData
    end
    object DBrgEstado: TDBRadioGroup
      Left = 80
      Top = 89
      Width = 299
      Height = 55
      Caption = 'Estado'
      Columns = 2
      DataField = 'ESTADO'
      DataSource = DsData
      Items.Strings = (
        'Activo'
        'Inactivo')
      TabOrder = 1
      Values.Strings = (
        '1'
        '0')
    end
  end
  object CRDBGrid1: TCRDBGrid
    Left = 385
    Top = 0
    Width = 400
    Height = 247
    OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeStretch]
    Align = alClient
    DataSource = DsData
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'C'#243'digo'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Title.Caption = 'Descripci'#243'n'
        Width = 248
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Estado'
        Width = 70
        Visible = True
      end>
  end
  object DsData: TDataSource
    AutoEdit = False
    DataSet = qData
    Left = 224
    Top = 160
  end
  object qData: TUniQuery
    Connection = DM.DBNLND
    SQL.Strings = (
      'SELECT * FROM TIPO_COMBUSTIBLES')
    AfterInsert = qDataAfterInsert
    BeforePost = qDataBeforePost
    OnCalcFields = qDataCalcFields
    Left = 304
    Top = 168
    object qDataID: TIntegerField
      FieldName = 'ID'
    end
    object qDataDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 150
    end
    object qDataESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object qDataSTATUS: TStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS'
      Calculated = True
    end
  end
  object frxData: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44227.407163472220000000
    ReportOptions.LastChange = 44227.407163472220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 480
    Top = 96
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDsData: TfrxDBDataset
    UserName = 'frxDBDsData'
    CloseDataSource = False
    DataSet = qData
    BCDToCurrency = False
    Left = 576
    Top = 112
  end
end
