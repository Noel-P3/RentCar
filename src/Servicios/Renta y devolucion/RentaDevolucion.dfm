object FrmRentaDevolucion: TFrmRentaDevolucion
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Renta y devoluci'#243'n'
  ClientHeight = 516
  ClientWidth = 861
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 861
    Height = 241
    Align = alTop
    TabOrder = 0
    DesignSize = (
      861
      241)
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 859
      Height = 36
      Align = alTop
      Alignment = taCenter
      Caption = 'Renta y devoluci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      ExplicitWidth = 250
    end
    object Label2: TLabel
      Left = 1
      Top = 184
      Width = 79
      Height = 16
      Caption = 'Observaci'#243'n.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBAdvEdit2: TDBAdvEdit
      Left = 80
      Top = 50
      Width = 265
      Height = 27
      Hint = 'Cliente'
      EmptyTextStyle = []
      LabelCaption = 'Cliente.:'
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
      TabOrder = 0
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'CLIENTE'
      DataSource = DsData
    end
    object DBAdvEdit6: TDBAdvEdit
      Left = 80
      Top = 83
      Width = 265
      Height = 27
      Hint = 'Vehiculo'
      EmptyTextStyle = []
      LabelCaption = 'Vehiculo.:'
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
      TabOrder = 1
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'VEHICULO'
      DataSource = DsData
    end
    object DBAdvEdit1: TDBAdvEdit
      Left = 80
      Top = 116
      Width = 265
      Height = 27
      Hint = 'Empleado'
      EmptyTextStyle = []
      LabelCaption = 'Empleado.:'
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
      TabOrder = 2
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'EMPLEADO'
      DataSource = DsData
    end
    object btnCliente: TAdvGlowButton
      Left = 350
      Top = 50
      Width = 29
      Height = 27
      Hint = 'Busqueda de Clientes'
      Anchors = []
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
      OnClick = btnClienteClick
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
    object btnVehiculo: TAdvGlowButton
      Left = 350
      Top = 83
      Width = 29
      Height = 27
      Hint = 'Busqueda de Marcas'
      Anchors = []
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
      OnClick = btnVehiculoClick
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
    object btnEmpleado: TAdvGlowButton
      Left = 350
      Top = 116
      Width = 29
      Height = 27
      Hint = 'Busqueda de Marcas'
      Anchors = []
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
      TabOrder = 5
      OnClick = btnEmpleadoClick
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
    object AdvDBDateTimePicker1: TAdvDBDateTimePicker
      Left = 410
      Top = 68
      Width = 213
      Height = 24
      Date = 44226.632523148150000000
      Format = ''
      Time = 44226.632523148150000000
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dkDateTime
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 6
      TabStop = True
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 44226.632523148150000000
      Version = '1.2.2.0'
      LabelCaption = 'Fecha renta.:'
      LabelPosition = lpTopLeft
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      DataField = 'FECHA_RENTA'
      DataSource = DsData
    end
    object AdvDBDateTimePicker2: TAdvDBDateTimePicker
      Left = 629
      Top = 68
      Width = 213
      Height = 24
      Date = 44226.632523148150000000
      Format = ''
      Time = 44226.632523148150000000
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dkDateTime
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 7
      TabStop = True
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 44226.632523148150000000
      Version = '1.2.2.0'
      LabelCaption = 'Fecha devoluci'#243'n'
      LabelPosition = lpTopLeft
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      DataField = 'FECHA_DEVOLUCION'
      DataSource = DsData
    end
    object DBAdvEdit3: TDBAdvEdit
      Left = 410
      Top = 116
      Width = 103
      Height = 27
      Hint = 'Empleado'
      EmptyTextStyle = []
      LabelCaption = 'Cantidad de dias'
      LabelPosition = lpTopLeft
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
      TabOrder = 8
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'DIAS'
      DataSource = DsData
    end
    object DBAdvEdit4: TDBAdvEdit
      Left = 518
      Top = 116
      Width = 103
      Height = 27
      Hint = 'Empleado'
      EditType = etNumeric
      EmptyTextStyle = []
      LabelCaption = 'Monto por dia'
      LabelPosition = lpTopLeft
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
      TabOrder = 9
      Text = '0'
      Visible = True
      Version = '3.3.2.8'
      DataField = 'MONTOXDIA'
      DataSource = DsData
    end
    object btnRentar: TButton
      Left = 519
      Top = 193
      Width = 149
      Height = 45
      Caption = 'Rentar'
      Enabled = False
      TabOrder = 10
      OnClick = btnRentarClick
    end
    object btnDevolver: TButton
      Left = 674
      Top = 193
      Width = 149
      Height = 45
      Caption = 'Devolver'
      Enabled = False
      TabOrder = 11
      OnClick = btnDevolverClick
    end
    object DBMemo1: TDBMemo
      Left = 86
      Top = 149
      Width = 426
      Height = 89
      DataField = 'OBSERVACION'
      DataSource = DsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 12
    end
    object DBAdvEdit5: TDBAdvEdit
      Left = 628
      Top = 116
      Width = 214
      Height = 35
      Hint = 'Empleado'
      EmptyTextStyle = []
      LabelCaption = 'ESTADO'
      LabelPosition = lpTopLeft
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
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'RENTADO'
      DataSource = DsData
    end
  end
  object CRDBGrid1: TCRDBGrid
    Left = 0
    Top = 241
    Width = 861
    Height = 275
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
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Title.Caption = 'Cliente'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEHICULO'
        Title.Caption = 'Veh'#237'culo'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPLEADO'
        Title.Caption = 'Empleado'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA_RENTA'
        Title.Caption = 'Fecha Renta'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA_DEVOLUCION'
        Title.Caption = 'Fecha Devoluci'#243'n'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RENTADO'
        Title.Caption = 'Estado'
        Width = 61
        Visible = True
      end>
  end
  object DsData: TDataSource
    AutoEdit = False
    DataSet = qData
    OnStateChange = DsDataStateChange
    Left = 456
    Top = 152
  end
  object qData: TUniQuery
    Connection = DM.DBNLND
    SQL.Strings = (
      'SELECT * FROM RENTA_DEVOLUCION')
    AfterInsert = qDataAfterInsert
    BeforePost = qDataBeforePost
    AfterPost = qDataAfterPost
    AfterCancel = qDataAfterCancel
    BeforeDelete = qDataBeforeDelete
    AfterScroll = qDataAfterScroll
    OnCalcFields = qDataCalcFields
    Left = 504
    Top = 160
    object qDataID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object qDataID_EMPLEADO: TIntegerField
      FieldName = 'ID_EMPLEADO'
      Visible = False
    end
    object qDataID_VEHICULO: TIntegerField
      FieldName = 'ID_VEHICULO'
      Visible = False
    end
    object qDataID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Visible = False
    end
    object qDataFECHA_RENTA: TDateField
      FieldName = 'FECHA_RENTA'
    end
    object qDataFECHA_DEVOLUCION: TDateField
      FieldName = 'FECHA_DEVOLUCION'
      OnChange = qDataFECHA_DEVOLUCIONChange
    end
    object qDataMONTOXDIA: TSingleField
      FieldName = 'MONTOXDIA'
      DisplayFormat = '###,###,##0.00'
    end
    object qDataDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object qDataOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
      Size = 250
    end
    object qDataESTADO: TIntegerField
      FieldName = 'ESTADO'
      Visible = False
    end
    object qDataCLIENTE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLIENTE'
      Size = 150
      Calculated = True
    end
    object qDataVEHICULO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VEHICULO'
      Size = 150
      Calculated = True
    end
    object qDataEMPLEADO: TStringField
      FieldKind = fkCalculated
      FieldName = 'EMPLEADO'
      Size = 150
      Calculated = True
    end
    object qDataRENTADO: TStringField
      FieldKind = fkCalculated
      FieldName = 'RENTADO'
      Size = 150
      Calculated = True
    end
    object qDataSTATUS: TStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS'
      Size = 150
      Calculated = True
    end
  end
  object qRentar: TUniQuery
    Connection = DM.DBNLND
    Left = 464
    Top = 240
  end
  object qUnquery: TUniQuery
    Connection = DM.DBNLND
    Left = 456
    Top = 296
  end
end
