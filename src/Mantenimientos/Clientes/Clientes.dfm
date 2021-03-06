object FrmClientes: TFrmClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 343
  ClientWidth = 967
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
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 343
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 463
      Height = 36
      Align = alTop
      Alignment = taCenter
      Caption = 'Clientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      ExplicitWidth = 105
    end
    object DBAdvEdit2: TDBAdvEdit
      Left = 144
      Top = 66
      Width = 299
      Height = 27
      Hint = 'Nombres del Empleado'
      EmptyTextStyle = []
      LabelCaption = 'Nombres.:'
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
      DataField = 'NOMBRES'
      DataSource = DsData
    end
    object DBAdvEdit6: TDBAdvEdit
      Left = 144
      Top = 99
      Width = 299
      Height = 27
      Hint = 'Descripci'#243'n del modelo'
      EmptyTextStyle = []
      LabelCaption = 'Apellidos.:'
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
      TabOrder = 1
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'APELLIDOS'
      DataSource = DsData
    end
    object DBAdvEdit7: TDBAdvEdit
      Left = 144
      Top = 165
      Width = 299
      Height = 27
      Hint = 'Tarjeta de Credito'
      EditAlign = eaRight
      EmptyTextStyle = []
      LabelCaption = 'Tarjeta de Credito.:'
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
      MaxLength = 16
      ParentFont = False
      TabOrder = 2
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'TARJETA_CREDITO'
      DataSource = DsData
    end
    object DBrgEstado: TDBRadioGroup
      Left = 24
      Top = 198
      Width = 419
      Height = 67
      Caption = 'Tipo de Persona'
      Columns = 2
      DataField = 'TIPO_PERSONA'
      DataSource = DsData
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      TabOrder = 3
      Values.Strings = (
        '1'
        '0')
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 24
      Top = 271
      Width = 419
      Height = 64
      Caption = 'Estado'
      Columns = 2
      DataField = 'ESTADO'
      DataSource = DsData
      Items.Strings = (
        'Activo'
        'Inactivo')
      TabOrder = 4
      Values.Strings = (
        '1'
        '0')
    end
  end
  object CRDBGrid1: TCRDBGrid
    Left = 465
    Top = 0
    Width = 502
    Height = 343
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
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRES'
        Title.Caption = 'Nombres'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APELLIDOS'
        Title.Caption = 'Apellidos'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEDULA'
        Title.Caption = 'C'#233'dula'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TARJETA_CREDITO'
        Title.Caption = 'Tarjeta de Cr'#233'dito'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TYPE_PERSON'
        Title.Caption = 'Tipo de Persona'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Estado'
        Width = 904
        Visible = True
      end>
  end
  object DBAdvMaskEdit1: TDBAdvMaskEdit
    Left = 144
    Top = 132
    Width = 105
    Height = 24
    Color = clWindow
    Enabled = True
    EditMask = '###-#######-#;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 13
    ParentFont = False
    TabOrder = 2
    Text = '   -       - '
    Visible = True
    AutoFocus = False
    Flat = False
    FlatLineColor = clBlack
    FlatParentColor = True
    ShowModified = False
    FocusColor = clWindow
    FocusBorder = False
    FocusFontColor = clBlack
    LabelCaption = 'C'#233'dula.:'
    LabelAlwaysEnabled = False
    LabelPosition = lpLeftCenter
    LabelMargin = 4
    LabelTransparent = False
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -13
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    ModifiedColor = clRed
    SelectFirstChar = False
    Version = '3.3.2.8'
    DataField = 'CEDULA'
    DataSource = DsData
  end
  object DsData: TDataSource
    AutoEdit = False
    DataSet = qData
    Left = 664
    Top = 176
  end
  object qData: TUniQuery
    Connection = DM.DBNLND
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    AfterInsert = qDataAfterInsert
    BeforePost = qDataBeforePost
    OnCalcFields = qDataCalcFields
    Left = 584
    Top = 184
    object qDataID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qDataNOMBRES: TStringField
      FieldName = 'NOMBRES'
      Size = 250
    end
    object qDataAPELLIDOS: TStringField
      FieldName = 'APELLIDOS'
      Size = 250
    end
    object qDataCEDULA: TStringField
      FieldName = 'CEDULA'
      Size = 250
    end
    object qDataTARJETA_CREDITO: TStringField
      FieldName = 'TARJETA_CREDITO'
      Size = 250
    end
    object qDataLIMITE_CREDITO: TSingleField
      FieldName = 'LIMITE_CREDITO'
    end
    object qDataTIPO_PERSONA: TIntegerField
      FieldName = 'TIPO_PERSONA'
      Visible = False
    end
    object qDataESTADO: TIntegerField
      FieldName = 'ESTADO'
      Visible = False
    end
    object qDataSTATUS: TStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS'
      Size = 150
      Calculated = True
    end
    object qDataTYPE_PERSON: TStringField
      FieldKind = fkCalculated
      FieldName = 'TYPE_PERSON'
      Size = 150
      Calculated = True
    end
  end
end
