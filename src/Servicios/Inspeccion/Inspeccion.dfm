object FrmInspeccion: TFrmInspeccion
  Left = 0
  Top = 0
  Caption = 'Inspecci'#243'n'
  ClientHeight = 558
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
    Width = 409
    Height = 558
    Align = alLeft
    TabOrder = 0
    DesignSize = (
      409
      558)
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 407
      Height = 36
      Align = alTop
      Alignment = taCenter
      Caption = 'Inspecci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      ExplicitWidth = 141
    end
    object DBrgEstado: TDBRadioGroup
      Left = 211
      Top = 195
      Width = 163
      Height = 67
      Caption = 'Gomas de Repuesto'
      Columns = 2
      DataField = 'GOMA_REPUESTO'
      DataSource = DsData
      Items.Strings = (
        'Si'
        'No')
      TabOrder = 2
      Values.Strings = (
        '1'
        '0')
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
    object DBRadioGroup1: TDBRadioGroup
      Left = 28
      Top = 268
      Width = 169
      Height = 64
      Caption = 'Gato'
      Columns = 2
      DataField = 'GATO'
      DataSource = DsData
      Items.Strings = (
        'Si'
        'No')
      TabOrder = 3
      Values.Strings = (
        '1'
        '0')
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
      TabOrder = 4
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'EMPLEADO'
      DataSource = DsData
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 28
      Top = 195
      Width = 169
      Height = 67
      Caption = 'Ralladuras'
      Columns = 2
      DataField = 'RALLADURAS'
      DataSource = DsData
      Items.Strings = (
        'Si'
        'No')
      TabOrder = 5
      Values.Strings = (
        '1'
        '0')
    end
    object DBRadioGroup3: TDBRadioGroup
      Left = 211
      Top = 268
      Width = 163
      Height = 64
      Caption = 'Rotura de Cristal'
      Columns = 2
      DataField = 'ROTURA_CRISTAL'
      DataSource = DsData
      Items.Strings = (
        'Si'
        'No')
      TabOrder = 6
      Values.Strings = (
        '1'
        '0')
    end
    object btnCliente: TAdvGlowButton
      Left = 351
      Top = 50
      Width = 29
      Height = 27
      Hint = 'Busqueda de Clientes'
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
      Left = 351
      Top = 83
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
      TabOrder = 8
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
      Left = 351
      Top = 116
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
      TabOrder = 9
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
    object DrpDownGas: TAdvGridDropDown
      Left = 28
      Top = 165
      Width = 113
      Height = 24
      LineColor = 15855083
      FixedLineColor = 13745060
      Columns = <
        item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end>
      HeaderColor = clWhite
      HeaderColorTo = clGray
      HeaderHeight = 25
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = 7485192
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      Items = <
        item
          Text.Strings = (
            '1/4'
            '')
        end
        item
          Text.Strings = (
            '1/2')
        end
        item
          Text.Strings = (
            '3/4')
        end
        item
          Text.Strings = (
            'Lleno')
        end>
      ItemIndex = 0
      Navigation.HomeEndKey = heFirstLastRow
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      Style = dsDropDown
      ParentFont = False
      DropDownBorderColor = clNone
      DropDownHeight = 200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelCaption = 'Combustible.:'
      LabelPosition = lpTopLeft
      LabelMargin = 0
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Version = '6.0.2.1'
      SelectionColor = 14155773
      SelectionColorTo = 5821692
      ButtonAppearance.BorderColorHot = 10079963
      ButtonAppearance.BorderColorDown = 4370174
      ButtonAppearance.Color = 16773091
      ButtonAppearance.ColorTo = 16768452
      ButtonAppearance.ColorDisabledTo = 11974326
      ButtonAppearance.ColorDown = 11196927
      ButtonAppearance.ColorDownTo = 7257087
      ButtonAppearance.ColorHot = 15465983
      ButtonAppearance.ColorHotTo = 11332863
      ButtonAppearance.Font.Charset = DEFAULT_CHARSET
      ButtonAppearance.Font.Color = clWindowText
      ButtonAppearance.Font.Height = -11
      ButtonAppearance.Font.Name = 'Tahoma'
      ButtonAppearance.Font.Style = []
      DropDownHeader.Color = 16773091
      DropDownHeader.ColorTo = 16765615
      DropDownHeader.Font.Charset = DEFAULT_CHARSET
      DropDownHeader.Font.Color = 7485192
      DropDownHeader.Font.Height = -11
      DropDownHeader.Font.Name = 'Tahoma'
      DropDownHeader.Font.Style = []
      DropDownHeader.Visible = True
      DropDownHeader.BorderColor = 16765615
      DropDownHeader.Buttons = <>
      DropDownFooter.Color = 16773091
      DropDownFooter.ColorTo = 16765615
      DropDownFooter.Font.Charset = DEFAULT_CHARSET
      DropDownFooter.Font.Color = 7485192
      DropDownFooter.Font.Height = -11
      DropDownFooter.Font.Name = 'Tahoma'
      DropDownFooter.Font.Style = []
      DropDownFooter.Visible = True
      DropDownFooter.BorderColor = 16765615
      DropDownFooter.Buttons = <>
      TabOrder = 10
      SelectionColorStyle = 1
      TMSStyle = 4
    end
    object AdvDBDateTimePicker1: TAdvDBDateTimePicker
      Left = 147
      Top = 165
      Width = 227
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
      TabOrder = 11
      TabStop = True
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 44226.632523148150000000
      Version = '1.2.2.0'
      LabelCaption = 'Fecha.:'
      LabelPosition = lpTopLeft
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      DataField = 'FECHA'
      DataSource = DsData
    end
    object DBRadioGroup8: TDBRadioGroup
      Left = 28
      Top = 482
      Width = 346
      Height = 64
      Caption = 'Estado'
      Columns = 2
      DataField = 'ESTADO'
      DataSource = DsData
      Items.Strings = (
        'Activo'
        'Inactivo')
      TabOrder = 12
      Values.Strings = (
        '1'
        '0')
    end
    object DBRadioGroup4: TDBRadioGroup
      Left = 211
      Top = 338
      Width = 163
      Height = 67
      Caption = 'Estado Neum'#225'tico 2'
      Columns = 2
      DataField = 'ESTADO_NEUMATICO_2'
      DataSource = DsData
      Items.Strings = (
        'Bueno'
        'Malo')
      TabOrder = 13
      Values.Strings = (
        '1'
        '0')
    end
    object DBRadioGroup5: TDBRadioGroup
      Left = 28
      Top = 409
      Width = 169
      Height = 67
      Caption = 'Estado Neum'#225'tico 3'
      Columns = 2
      DataField = 'ESTADO_NEUMATICO_3'
      DataSource = DsData
      Items.Strings = (
        'Bueno'
        'Malo')
      TabOrder = 14
      Values.Strings = (
        '1'
        '0')
    end
    object DBRadioGroup7: TDBRadioGroup
      Left = 211
      Top = 409
      Width = 163
      Height = 67
      Caption = 'Estado Neum'#225'tico 4'
      Columns = 2
      DataField = 'ESTADO_NEUMATICO_4'
      DataSource = DsData
      Items.Strings = (
        'Bueno'
        'Malo')
      TabOrder = 15
      Values.Strings = (
        '1'
        '0')
    end
  end
  object CRDBGrid1: TCRDBGrid
    Left = 409
    Top = 0
    Width = 558
    Height = 558
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
        FieldName = 'CLIENTE'
        Title.Caption = 'Cliente'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEHICULO'
        Title.Caption = 'Veh'#237'culo'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPLEADO'
        Title.Caption = 'Empleado'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CANTIDAD_COMBUSTIBLE'
        Title.Caption = 'Combustible'
        Width = 304
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA'
        Title.Caption = 'Fecha'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Estado'
        Width = 45
        Visible = True
      end>
  end
  object DBRadioGroup6: TDBRadioGroup
    Left = 28
    Top = 338
    Width = 169
    Height = 67
    Caption = 'Estado Neum'#225'tico 1'
    Columns = 2
    DataField = 'ESTADO_NEUMATICO_1'
    DataSource = DsData
    Items.Strings = (
      'Bueno'
      'Malo')
    TabOrder = 2
    Values.Strings = (
      '1'
      '0')
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
      'SELECT * FROM INSPECCION')
    AfterInsert = qDataAfterInsert
    BeforePost = qDataBeforePost
    OnCalcFields = qDataCalcFields
    Left = 584
    Top = 184
    object qDataID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qDataID_VEHICULO: TIntegerField
      FieldName = 'ID_VEHICULO'
      Visible = False
    end
    object qDataID_EMPLEADO: TIntegerField
      FieldName = 'ID_EMPLEADO'
      Visible = False
    end
    object qDataCANTIDAD_COMBUSTIBLE: TStringField
      FieldName = 'CANTIDAD_COMBUSTIBLE'
      Size = 50
    end
    object qDataRALLADURAS: TIntegerField
      FieldName = 'RALLADURAS'
      Visible = False
    end
    object qDataGOMA_REPUESTO: TIntegerField
      FieldName = 'GOMA_REPUESTO'
      Visible = False
    end
    object qDataGATO: TIntegerField
      FieldName = 'GATO'
      Visible = False
    end
    object qDataROTURA_CRISTAL: TIntegerField
      FieldName = 'ROTURA_CRISTAL'
      Visible = False
    end
    object qDataESTADO_NEUMATICO_1: TIntegerField
      FieldName = 'ESTADO_NEUMATICO_1'
      Visible = False
    end
    object qDataESTADO_NEUMATICO_2: TIntegerField
      FieldName = 'ESTADO_NEUMATICO_2'
      Visible = False
    end
    object qDataESTADO_NEUMATICO_3: TIntegerField
      FieldName = 'ESTADO_NEUMATICO_3'
      Visible = False
    end
    object qDataESTADO_NEUMATICO_4: TIntegerField
      FieldName = 'ESTADO_NEUMATICO_4'
      Visible = False
    end
    object qDataFECHA: TDateField
      FieldName = 'FECHA'
    end
    object qDataESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object qDataID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
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
    object qDataSTATUS: TStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS'
      Size = 150
      Calculated = True
    end
  end
end
