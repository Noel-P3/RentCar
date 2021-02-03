object FrmUsers: TFrmUsers
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Usuarios y Accesos'
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
      Caption = 'Usuarios y Accesos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      ExplicitWidth = 250
    end
    object DBAdvEdit1: TDBAdvEdit
      Left = 80
      Top = 56
      Width = 299
      Height = 27
      Hint = 'Nombre del usuario'
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
      DataSource = DsUsers
    end
    object DBAdvEdit2: TDBAdvEdit
      Left = 80
      Top = 89
      Width = 299
      Height = 27
      Hint = 'Apellidos del usuario'
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
      DataSource = DsUsers
    end
    object DBAdvEdit3: TDBAdvEdit
      Left = 80
      Top = 122
      Width = 299
      Height = 27
      Hint = 'NickName del usuario'
      EmptyTextStyle = []
      LabelCaption = 'Usuario.:'
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
      DataField = 'USUARIO'
      DataSource = DsUsers
    end
    object DBAdvEdit4: TDBAdvEdit
      Left = 80
      Top = 155
      Width = 299
      Height = 27
      Hint = 'Correo del usuario'
      EmptyTextStyle = []
      LabelCaption = 'Correo.:'
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
      TabOrder = 3
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'CORREO'
      DataSource = DsUsers
    end
    object DBAdvEdit5: TDBAdvEdit
      Left = 80
      Top = 188
      Width = 299
      Height = 29
      Hint = 'Nombre del usuario'
      ParentCustomHint = False
      EmptyTextStyle = []
      LabelCaption = 'Contrase'#241'a.:'
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
      Constraints.MinHeight = 29
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      PasswordChar = '.'
      ShowHint = True
      TabOrder = 4
      Text = ''
      Visible = True
      Version = '3.3.2.8'
      DataField = 'PASSWORD'
      DataSource = DsUsers
    end
  end
  object CRDBGrid1: TCRDBGrid
    Left = 385
    Top = 0
    Width = 400
    Height = 247
    OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeStretch]
    Align = alClient
    DataSource = DsUsers
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
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRES'
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APELLIDOS'
        Width = 157
        Visible = True
      end>
  end
  object qUsers: TUniQuery
    Connection = DM.DBNLND
    SQL.Strings = (
      'SELECT * FROM USERS')
    BeforePost = qUsersBeforePost
    Left = 304
    Top = 160
    object qUsersID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      ReadOnly = True
    end
    object qUsersNOMBRES: TStringField
      DisplayLabel = 'Nombres'
      DisplayWidth = 150
      FieldName = 'NOMBRES'
      Size = 250
    end
    object qUsersAPELLIDOS: TStringField
      DisplayLabel = 'Apellidos'
      FieldName = 'APELLIDOS'
      Size = 250
    end
    object qUsersUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object qUsersCORREO: TStringField
      FieldName = 'CORREO'
      Size = 250
    end
    object qUsersPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Size = 250
    end
  end
  object DsUsers: TDataSource
    AutoEdit = False
    DataSet = qUsers
    Left = 216
    Top = 120
  end
end