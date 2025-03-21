object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Modelo de Sistema Comercial Monousu'#225'rio - Cadastro de Clientes'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object StatusBar1: TStatusBar
    Left = 0
    Top = 422
    Width = 624
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Desenvolvido em Delphi 12.1 - vers'#227'o 0.1 (2025)'
        Width = 50
      end>
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 624
    Height = 422
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
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
        Title.Caption = 'Nome Completo*'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 220
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
        Width = 200
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
        Width = 100
        Visible = True
      end>
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\OneDrive\Documentos\Embarcadero\Studio\Projects\Git\' +
        'Delphi\Comercial\MonoUserSystem\Win32\Debug\MonoUserSystem0.1.0.' +
        '0.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 368
  end
  object FDTable1: TFDTable
    Active = True
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
    DataSet = FDTable1
    Left = 224
    Top = 368
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    Left = 352
    Top = 368
  end
end
