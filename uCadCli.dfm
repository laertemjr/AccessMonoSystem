object frmCadCli: TfrmCadCli
  Left = 0
  Top = 0
  Caption = 
    'Modelo de Sistema Comercial monousu'#225'rio com o MS-Access - Cadast' +
    'ro de Clientes'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  OnClose = FormClose
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 120
    Width = 624
    Height = 302
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Cliente_ID'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente_NomeCompleto'
        Title.Alignment = taCenter
        Title.Caption = 'Nome completo *'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente_Email'
        Title.Alignment = taCenter
        Title.Caption = 'Email'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente_Celular'
        Title.Alignment = taCenter
        Title.Caption = 'Celular'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end>
  end
  object DBLabeledEdit1: TDBLabeledEdit
    Left = 8
    Top = 40
    Width = 57
    Height = 23
    TabStop = False
    DataField = 'Cliente_ID'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    EditLabel.Width = 55
    EditLabel.Height = 15
    EditLabel.Caption = 'Cliente ID'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Segoe UI'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
  end
  object DBLabeledEdit2: TDBLabeledEdit
    Left = 71
    Top = 40
    Width = 252
    Height = 23
    DataField = 'Cliente_NomeCompleto'
    DataSource = DataSource1
    TabOrder = 1
    OnExit = DBLabeledEdit2Exit
    OnKeyPress = DBLabeledEdit2KeyPress
    EditLabel.Width = 98
    EditLabel.Height = 15
    EditLabel.Caption = 'Nome completo *'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Segoe UI'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
  end
  object DBLabeledEdit3: TDBLabeledEdit
    Left = 329
    Top = 40
    Width = 200
    Height = 23
    DataField = 'Cliente_Email'
    DataSource = DataSource1
    TabOrder = 2
    OnKeyPress = DBLabeledEdit3KeyPress
    EditLabel.Width = 35
    EditLabel.Height = 15
    EditLabel.Caption = 'e-Mail'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Segoe UI'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
  end
  object DBLabeledEdit4: TDBLabeledEdit
    Left = 535
    Top = 40
    Width = 81
    Height = 23
    DataField = 'Cliente_Celular'
    DataSource = DataSource1
    TabOrder = 3
    EditLabel.Width = 38
    EditLabel.Height = 15
    EditLabel.Caption = 'Celular'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Segoe UI'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 77
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
    TabStop = True
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 422
    Width = 624
    Height = 19
    BiDiMode = bdRightToLeft
    Panels = <
      item
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = '   Vers'#227'o '
        Width = 310
      end
      item
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = 
          'Copyright '#169' 2025 Mancuso Software (laertemjr@outlook.com.br)    ' +
          ' '
        Width = 330
      end>
    ParentBiDiMode = False
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=MSAcc')
    LoginPrompt = False
    Left = 48
    Top = 368
  end
  object FDTable1: TFDTable
    AfterInsert = FDTable1AfterInsert
    AfterEdit = FDTable1AfterInsert
    BeforePost = FDTable1BeforePost
    IndexFieldNames = 'Cliente_NomeCompleto'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'TbClientes'
    Left = 144
    Top = 368
    object FDTable1Cliente_ID: TFDAutoIncField
      Alignment = taCenter
      FieldName = 'Cliente_ID'
      Origin = 'Cliente_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      DisplayFormat = '000'
    end
    object FDTable1Cliente_NomeCompleto: TWideStringField
      FieldName = 'Cliente_NomeCompleto'
      Origin = 'Cliente_NomeCompleto'
      Size = 40
    end
    object FDTable1Cliente_Email: TWideStringField
      FieldName = 'Cliente_Email'
      Origin = 'Cliente_Email'
      Size = 40
    end
    object FDTable1Cliente_Celular: TWideStringField
      FieldName = 'Cliente_Celular'
      Origin = 'Cliente_Celular'
      EditMask = '!\(99\) 00000-0000;0;_'
      Size = 11
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = FDTable1
    Left = 224
    Top = 368
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    Left = 352
    Top = 368
  end
end
