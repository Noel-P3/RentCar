object FrmVehiculos: TFrmVehiculos
  Left = 0
  Top = 0
  Caption = 'Veh'#237'culos'
  ClientHeight = 435
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
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 435
    Align = alLeft
    TabOrder = 0
    DesignSize = (
      465
      435)
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 463
      Height = 36
      Align = alTop
      Alignment = taCenter
      Caption = 'Veh'#237'culos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      ExplicitWidth = 126
    end
    object DBAdvEdit1: TDBAdvEdit
      Left = 134
      Top = 55
      Width = 299
      Height = 27
      Hint = 'Descripci'#243'n de la marca'
      EmptyTextStyle = []
      LabelCaption = 'Marca.:'
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
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'MARCA'
      DataSource = DsData
    end
    object DBrgEstado: TDBRadioGroup
      Left = 134
      Top = 372
      Width = 299
      Height = 55
      Caption = 'Estado'
      Columns = 2
      DataField = 'ESTADO'
      DataSource = DsData
      Items.Strings = (
        'Disponible'
        'Rentado')
      TabOrder = 1
      Values.Strings = (
        '1'
        '0')
    end
    object DBAdvEdit2: TDBAdvEdit
      Left = 134
      Top = 187
      Width = 299
      Height = 27
      Hint = 'Descripci'#243'n general'
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
      TabOrder = 2
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'DESCRIPCION'
      DataSource = DsData
    end
    object btnMarca: TAdvGlowButton
      Left = 435
      Top = 55
      Width = 29
      Height = 27
      Hint = 'Busqueda de Marcas'
      Anchors = [akTop, akRight]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D420100000000000076000000280000001100000011000000010004000000
        00000000000000000000000000001000000010000000000000FF0000BFFF00BF
        00FF00BFBFFFBF0000FFBF00BFFFBFBF00FFC0C0C0FF808080FF0000FFFF00FF
        00FF00FFFFFFFF0000FFFF00FFFFFFFF00FFFFFFFFFF77777777777777777000
        000077777777777777777000000070000077777000007000000070B000777770
        F0007000000070F000777770B00070000000700000007000000070000000700B
        000000B0000070000000700F000700F0000070000000700B000700B000007000
        00007700000000000007700000007770B00070B0007770000000777000007000
        00777000000077770007770007777000000077770B07770B0777700000007777
        0007770007777000000077777777777777777000000077777777777777777000
        0000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnMarcaClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Enabled = False
    end
    object btnModelo: TAdvGlowButton
      Left = 435
      Top = 88
      Width = 29
      Height = 27
      Hint = 'Busqueda de Modelos'
      Anchors = [akTop, akRight]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D420100000000000076000000280000001100000011000000010004000000
        00000000000000000000000000001000000010000000000000FF0000BFFF00BF
        00FF00BFBFFFBF0000FFBF00BFFFBFBF00FFC0C0C0FF808080FF0000FFFF00FF
        00FF00FFFFFFFF0000FFFF00FFFFFFFF00FFFFFFFFFF77777777777777777000
        000077777777777777777000000070000077777000007000000070B000777770
        F0007000000070F000777770B00070000000700000007000000070000000700B
        000000B0000070000000700F000700F0000070000000700B000700B000007000
        00007700000000000007700000007770B00070B0007770000000777000007000
        00777000000077770007770007777000000077770B07770B0777700000007777
        0007770007777000000077777777777777777000000077777777777777777000
        0000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnModeloClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Enabled = False
    end
    object DBAdvEdit3: TDBAdvEdit
      Left = 134
      Top = 88
      Width = 299
      Height = 27
      Hint = 'Descripci'#243'n del modelo'
      EmptyTextStyle = []
      LabelCaption = 'Modelo.:'
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
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'MODELO'
      DataSource = DsData
    end
    object DBAdvEdit4: TDBAdvEdit
      Left = 134
      Top = 121
      Width = 299
      Height = 27
      Hint = 'Tipo de Vehiculo'
      EmptyTextStyle = []
      LabelCaption = 'Tipo de Veh'#237'culo.:'
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
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'TIPO_VEHICULO'
      DataSource = DsData
    end
    object btnTipoVehiculos: TAdvGlowButton
      Left = 435
      Top = 121
      Width = 29
      Height = 27
      Hint = 'Busqueda de tipo de vehiculos'
      Anchors = [akTop, akRight]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D420100000000000076000000280000001100000011000000010004000000
        00000000000000000000000000001000000010000000000000FF0000BFFF00BF
        00FF00BFBFFFBF0000FFBF00BFFFBFBF00FFC0C0C0FF808080FF0000FFFF00FF
        00FF00FFFFFFFF0000FFFF00FFFFFFFF00FFFFFFFFFF77777777777777777000
        000077777777777777777000000070000077777000007000000070B000777770
        F0007000000070F000777770B00070000000700000007000000070000000700B
        000000B0000070000000700F000700F0000070000000700B000700B000007000
        00007700000000000007700000007770B00070B0007770000000777000007000
        00777000000077770007770007777000000077770B07770B0777700000007777
        0007770007777000000077777777777777777000000077777777777777777000
        0000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnTipoVehiculosClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Enabled = False
    end
    object DBAdvEdit5: TDBAdvEdit
      Left = 134
      Top = 154
      Width = 299
      Height = 27
      Hint = 'Tipo de combustible'
      EmptyTextStyle = []
      LabelCaption = 'Tipo de Combustible.:'
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
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'TIPO_COMBUSTIBLE'
      DataSource = DsData
    end
    object btnTipoCombustibles: TAdvGlowButton
      Left = 435
      Top = 154
      Width = 29
      Height = 27
      Hint = 'Busqueda de combustibles'
      Anchors = [akTop, akRight]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D420100000000000076000000280000001100000011000000010004000000
        00000000000000000000000000001000000010000000000000FF0000BFFF00BF
        00FF00BFBFFFBF0000FFBF00BFFFBFBF00FFC0C0C0FF808080FF0000FFFF00FF
        00FF00FFFFFFFF0000FFFF00FFFFFFFF00FFFFFFFFFF77777777777777777000
        000077777777777777777000000070000077777000007000000070B000777770
        F0007000000070F000777770B00070000000700000007000000070000000700B
        000000B0000070000000700F000700F0000070000000700B000700B000007000
        00007700000000000007700000007770B00070B0007770000000777000007000
        00777000000077770007770007777000000077770B07770B0777700000007777
        0007770007777000000077777777777777777000000077777777777777777000
        0000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = btnTipoCombustiblesClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Enabled = False
    end
    object DBAdvEdit6: TDBAdvEdit
      Left = 134
      Top = 273
      Width = 299
      Height = 27
      Hint = 'Descripci'#243'n del modelo'
      EmptyTextStyle = []
      LabelCaption = 'No. de Chasis.:'
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
      TabOrder = 10
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'CHASIS'
      DataSource = DsData
    end
    object DBAdvEdit7: TDBAdvEdit
      Left = 134
      Top = 306
      Width = 299
      Height = 27
      Hint = 'Descripci'#243'n del modelo'
      EmptyTextStyle = []
      LabelCaption = 'No. de Placa.:'
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
      TabOrder = 11
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'PLACA'
      DataSource = DsData
    end
    object DBAdvEdit8: TDBAdvEdit
      Left = 134
      Top = 339
      Width = 299
      Height = 27
      Hint = 'Descripci'#243'n del modelo'
      EmptyTextStyle = []
      LabelCaption = 'No. de Motor.:'
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
      TabOrder = 12
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'MOTOR'
      DataSource = DsData
    end
  end
  object CRDBGrid1: TCRDBGrid
    Left = 465
    Top = 0
    Width = 502
    Height = 435
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
        FieldName = 'MARCA'
        Title.Caption = 'Marca'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODELO'
        Title.Caption = 'Modelo'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Title.Caption = 'Descripci'#243'n'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_VEHICULO'
        Title.Caption = 'Tipo de Vehiculo'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_COMBUSTIBLE'
        Title.Caption = 'Tipo de Combustible'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHASIS'
        Title.Caption = 'No. Chasis'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLACA'
        Title.Caption = 'No. Placa'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOTOR'
        Title.Caption = 'No. Motor'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Estado'
        Width = 79
        Visible = True
      end>
  end
  object DsData: TDataSource
    AutoEdit = False
    DataSet = qData
    OnStateChange = DsDataStateChange
    Left = 664
    Top = 176
  end
  object qData: TUniQuery
    Connection = DM.DBNLND
    SQL.Strings = (
      'SELECT * FROM VEHICULOS')
    AfterInsert = qDataAfterInsert
    BeforePost = qDataBeforePost
    OnCalcFields = qDataCalcFields
    Left = 584
    Top = 184
    object qDataID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qDataID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
      Visible = False
    end
    object qDataID_MODELO: TIntegerField
      FieldName = 'ID_MODELO'
      Visible = False
    end
    object qDataID_TIPO_VEHICULO: TIntegerField
      FieldName = 'ID_TIPO_VEHICULO'
      Visible = False
    end
    object qDataID_TIPO_COMBUSTIBLE: TIntegerField
      FieldName = 'ID_TIPO_COMBUSTIBLE'
      Visible = False
    end
    object qDataDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 250
    end
    object qDataCHASIS: TStringField
      FieldName = 'CHASIS'
      Size = 250
    end
    object qDataPLACA: TStringField
      FieldName = 'PLACA'
      Size = 60
    end
    object qDataMOTOR: TStringField
      FieldName = 'MOTOR'
      Size = 60
    end
    object qDataESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object qDataMARCA: TStringField
      FieldKind = fkCalculated
      FieldName = 'MARCA'
      Size = 250
      Calculated = True
    end
    object qDataMODELO: TStringField
      FieldKind = fkCalculated
      FieldName = 'MODELO'
      Size = 150
      Calculated = True
    end
    object qDataTIPO_VEHICULO: TStringField
      FieldKind = fkCalculated
      FieldName = 'TIPO_VEHICULO'
      Size = 150
      Calculated = True
    end
    object qDataTIPO_COMBUSTIBLE: TStringField
      FieldKind = fkCalculated
      FieldName = 'TIPO_COMBUSTIBLE'
      Size = 150
      Calculated = True
    end
    object qDataSTATUS: TStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS'
      Calculated = True
    end
  end
  object qUnquery: TUniQuery
    Connection = DM.DBNLND
    Left = 592
    Top = 280
  end
end
