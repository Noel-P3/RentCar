object FrmModelos: TFrmModelos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Modelos'
  ClientHeight = 247
  ClientWidth = 851
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
    DesignSize = (
      385
      247)
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 383
      Height = 36
      Align = alTop
      Alignment = taCenter
      Caption = 'Modelos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      ExplicitWidth = 111
    end
    object DBAdvEdit1: TDBAdvEdit
      Left = 56
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
      Left = 56
      Top = 121
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
    object DBAdvEdit2: TDBAdvEdit
      Left = 56
      Top = 88
      Width = 299
      Height = 27
      Hint = 'Descripci'#243'n del modelo'
      EmptyTextStyle = []
      LabelCaption = 'M'#243'delo.:'
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
      DataField = 'MODELO'
      DataSource = DsData
    end
    object btnBusqueda: TAdvGlowButton
      Left = 355
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
      OnClick = btnBusquedaClick
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
  end
  object CRDBGrid1: TCRDBGrid
    Left = 385
    Top = 0
    Width = 466
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
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        Title.Caption = 'Marca'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODELO'
        Title.Caption = 'M'#243'delo'
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Estado'
        Width = 53
        Visible = True
      end>
  end
  object DsData: TDataSource
    AutoEdit = False
    DataSet = qData
    OnStateChange = DsDataStateChange
    Left = 216
    Top = 192
  end
  object qData: TUniQuery
    Connection = DM.DBNLND
    SQL.Strings = (
      'SELECT * FROM MODELOS')
    AfterInsert = qDataAfterInsert
    BeforePost = qDataBeforePost
    OnCalcFields = qDataCalcFields
    Left = 296
    Top = 192
    object qDataID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object qDataID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
      Required = True
    end
    object qDataMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 150
    end
    object qDataESTADO: TIntegerField
      FieldName = 'ESTADO'
      Required = True
    end
    object qDataSTATUS: TStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS'
      Calculated = True
    end
    object qDataMARCA: TStringField
      FieldKind = fkCalculated
      FieldName = 'MARCA'
      Size = 150
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
    ReportOptions.CreateDate = 44227.397144872690000000
    ReportOptions.LastChange = 44227.397144872690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 560
    Top = 104
    Datasets = <
      item
        DataSet = frxDBDsData
        DataSetName = 'frxDBDsData'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 740.787880000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 740.787880000000000000
        object Memo2: TfrxMemoView
          Width = 740.787401574803200000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 31.899348778741900000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ID')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 31.899348778741900000
          Width = 310.685458386437800000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 342.584807165179700000
          Width = 318.242942193201500000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 660.827749358381200000
          Width = 79.959652216421950000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 740.787880000000000000
        DataSet = frxDBDsData
        DataSetName = 'frxDBDsData'
        RowCount = 0
        object Memo7: TfrxMemoView
          Width = 31.899348778741900000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBDsData
          DataSetName = 'frxDBDsData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDsData."ID"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          Left = 31.899348778741900000
          Width = 310.685458386437800000
          Height = 18.897650000000000000
          DataField = 'MARCA'
          DataSet = frxDBDsData
          DataSetName = 'frxDBDsData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDsData."MARCA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          Left = 342.584807165179700000
          Width = 318.242942193201500000
          Height = 18.897650000000000000
          DataField = 'MODELO'
          DataSet = frxDBDsData
          DataSetName = 'frxDBDsData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDsData."MODELO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          Left = 660.827749358381200000
          Width = 79.959652216421950000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = frxDBDsData
          DataSetName = 'frxDBDsData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDsData."STATUS"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 230.551330000000000000
        Width = 740.787880000000000000
        object Memo11: TfrxMemoView
          Align = baWidth
          Width = 740.787880000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo12: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo13: TfrxMemoView
          Align = baRight
          Left = 665.197280000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxDBDsData: TfrxDBDataset
    UserName = 'frxDBDsData'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_MARCA=ID_MARCA'
      'MODELO=MODELO'
      'ESTADO=ESTADO'
      'STATUS=STATUS'
      'MARCA=MARCA')
    DataSet = qData
    BCDToCurrency = False
    Left = 448
    Top = 136
  end
end
