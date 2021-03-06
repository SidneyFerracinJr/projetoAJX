object Principal: TPrincipal
  Left = 0
  Top = 0
  Caption = 'Cliente'
  ClientHeight = 438
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 824
    Height = 438
    ActivePage = TsCadastroEdicao
    Align = alClient
    TabOrder = 0
    object TsCadastroEdicao: TTabSheet
      Caption = 'Cadastro/Edi'#231#227'o'
      object CadPnlTelefone: TPanel
        Left = 616
        Top = 41
        Width = 200
        Height = 369
        Align = alRight
        TabOrder = 0
        object CadGrdPnlTelefone: TGridPanel
          Left = 1
          Top = 1
          Width = 198
          Height = 367
          Align = alClient
          ColumnCollection = <
            item
              Value = 48.687210354405000000
            end
            item
              Value = 39.584417203808610000
            end
            item
              Value = 11.728372441786370000
            end>
          ControlCollection = <
            item
              Column = 2
              Control = CadBtnSalvarTelefone
              Row = 0
            end
            item
              Column = 0
              Control = CadMkEdtTelefone
              Row = 0
            end
            item
              Column = 1
              Control = CadCbBoxOperadora
              Row = 0
            end>
          RowCollection = <
            item
              Value = 8.943377568129467000
            end
            item
              Value = 9.117133731483401000
            end
            item
              Value = 9.296569515108878000
            end
            item
              Value = 9.482063039173966000
            end
            item
              Value = 9.674027154585636000
            end
            item
              Value = 9.872912866098464000
            end
            item
              Value = 8.681254623928204000
            end
            item
              Value = 8.755712508246626000
            end
            item
              Value = 8.824733902118936000
            end
            item
              Value = 8.887566060076828000
            end
            item
              Value = 8.464649031049586000
            end>
          TabOrder = 0
          DesignSize = (
            198
            367)
          object CadBtnSalvarTelefone: TButton
            Left = 174
            Top = 6
            Width = 23
            Height = 23
            Anchors = []
            Enabled = False
            ImageIndex = 1
            Images = ImageList
            TabOrder = 2
            OnClick = CadBtnSalvarTelefoneClick
          end
          object CadMkEdtTelefone: TMaskEdit
            Left = 3
            Top = 7
            Width = 90
            Height = 21
            Anchors = []
            Enabled = False
            TabOrder = 0
            Text = ''
            TextHint = 'Telefone'
            OnEnter = CadMkEdtTelefoneEnter
            OnExit = CadMkEdtTelefoneExit
          end
          object CadCbBoxOperadora: TComboBox
            Left = 96
            Top = 7
            Width = 78
            Height = 21
            Anchors = []
            Enabled = False
            TabOrder = 1
            TextHint = 'Operadora'
            Items.Strings = (
              'Algar'
              'Claro'
              'Nextel'
              'Oi'
              'Porto Seguro'
              'Sercomtel'
              'TIM'
              'Vivo')
          end
        end
      end
      object CadPnlPrincipal: TPanel
        Left = 0
        Top = 41
        Width = 616
        Height = 369
        Align = alClient
        TabOrder = 1
        object CadPnlForm: TPanel
          Left = 136
          Top = 64
          Width = 355
          Height = 217
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
          object CadLblNome: TLabel
            Left = 46
            Top = 32
            Width = 27
            Height = 13
            Caption = 'Nome'
            FocusControl = CadDBEdtNom
          end
          object CadLblCPF: TLabel
            Left = 45
            Top = 126
            Width = 19
            Height = 13
            Caption = 'CPF'
            FocusControl = CadDBEdtCP
          end
          object CadLblEmail: TLabel
            Left = 45
            Top = 78
            Width = 24
            Height = 13
            Caption = 'Email'
            FocusControl = CadDBEdtEmai
          end
          object CadLblDataNascimento: TLabel
            Left = 175
            Top = 126
            Width = 96
            Height = 13
            Caption = 'Data de Nascimento'
            FocusControl = CadDBEdtDataNasciment
          end
          object CadLblDataHora: TLabel
            Left = 12
            Top = 8
            Width = 52
            Height = 13
            Caption = 'Data_Hora'
            Visible = False
          end
          object CadLblRemovido: TLabel
            Left = 203
            Top = 8
            Width = 47
            Height = 13
            Caption = 'Removido'
            FocusControl = CadDBEdtRemovid
            Visible = False
          end
          object CadDBEdtNom: TDBEdit
            Left = 45
            Top = 51
            Width = 236
            Height = 21
            DataField = 'Nome'
            DataSource = DtSrcCliente
            Enabled = False
            TabOrder = 0
          end
          object CadDBEdtCP: TDBEdit
            Left = 46
            Top = 145
            Width = 123
            Height = 21
            DataField = 'CPF'
            DataSource = DtSrcCliente
            Enabled = False
            TabOrder = 2
          end
          object CadDBEdtEmai: TDBEdit
            Left = 45
            Top = 99
            Width = 236
            Height = 21
            DataField = 'Email'
            DataSource = DtSrcCliente
            Enabled = False
            TabOrder = 1
          end
          object CadDBEdtDataNasciment: TDBEdit
            Left = 175
            Top = 145
            Width = 106
            Height = 21
            DataField = 'Data_Nascimento'
            DataSource = DtSrcCliente
            Enabled = False
            TabOrder = 3
          end
          object CadDBEdtRemovid: TDBEdit
            Left = 256
            Top = 5
            Width = 95
            Height = 21
            DataField = 'Removido'
            DataSource = DtSrcCliente
            Enabled = False
            TabOrder = 5
            Visible = False
          end
          object CadBtnSalvar: TButton
            Left = 267
            Top = 184
            Width = 75
            Height = 25
            Caption = 'Gravar'
            Enabled = False
            TabOrder = 4
            OnClick = CadBtnSalvarClick
          end
          object CadBtnNovo: TButton
            Left = 186
            Top = 184
            Width = 75
            Height = 25
            Caption = 'Novo'
            TabOrder = 6
            OnClick = CadBtnNovoClick
          end
          object CadDBEdtDataHor: TDBEdit
            Left = 70
            Top = 5
            Width = 75
            Height = 21
            DataField = 'Data_Hora'
            DataSource = DtSrcCliente
            Enabled = False
            TabOrder = 8
            Visible = False
          end
          object CadDBEdtRemovido: TEdit
            Left = 251
            Top = 5
            Width = 102
            Height = 21
            Enabled = False
            TabOrder = 9
            TextHint = 'Sim/N'#227'o'
            Visible = False
          end
          object CadDBEdtDataHora: TMaskEdit
            Left = 70
            Top = 5
            Width = 99
            Height = 21
            Enabled = False
            TabOrder = 7
            Text = ''
            TextHint = '01/01/0000'
            Visible = False
          end
          object CadDBEdtNome: TEdit
            Left = 45
            Top = 51
            Width = 236
            Height = 21
            Enabled = False
            TabOrder = 10
            TextHint = 'Insira o nome aqui'
          end
          object CadDBEdtEmail: TEdit
            Left = 45
            Top = 99
            Width = 236
            Height = 21
            Enabled = False
            TabOrder = 11
            TextHint = 'email@email.com'
          end
          object CadDBEdtCPF: TMaskEdit
            Left = 45
            Top = 145
            Width = 124
            Height = 21
            Enabled = False
            EditMask = '000.000.000-00;1;_'
            MaxLength = 14
            TabOrder = 12
            Text = '   .   .   -  '
          end
          object CadDBEdtDataNascimento: TMaskEdit
            Left = 175
            Top = 145
            Width = 105
            Height = 21
            Enabled = False
            EditMask = '!99/99/00;1;_'
            MaxLength = 8
            TabOrder = 13
            Text = '  /  /  '
          end
        end
      end
      object CadPnlTitulo: TPanel
        Left = 0
        Top = 0
        Width = 816
        Height = 41
        Align = alTop
        Caption = 'Cadastro de Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object TsConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object ConsPnlTitulo: TPanel
        Left = 0
        Top = 0
        Width = 816
        Height = 41
        Align = alTop
        Caption = 'Consulta de Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object ConsPnlTelefone: TPanel
        Left = 603
        Top = 41
        Width = 213
        Height = 369
        Align = alRight
        TabOrder = 1
        object ConsSpdBtnExcluirTelefone: TSpeedButton
          Left = 178
          Top = 6
          Width = 22
          Height = 21
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
            F8F8FF8888FF6060FF6060FF6060FF6060FF6060FF6060FF7878FFECECFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFBEBEFF0000FF0000FF0000FF0000FF0000FF0000
            FF0000FF0000FFA2A2FFFFFFFFFFFFFF0000FFFFFFFFFFFFADADFF0000FF0000
            FF0000FF0000FF0000FF0000FF0000FF0000FF9696FFFFFFFFFFFFFF0000FFFF
            FFFFFFFFAFAFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF97
            97FFFFFFFFFFFFFF0000FFFFFFFFFFFFAFAFFF0000FF0000FF0000FF0000FF00
            00FF0000FF0000FF0000FF9797FFFFFFFFFFFFFF0000FFFFFFFFFFFFAFAFFF00
            00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF9797FFFFFFFFFFFFFF
            0000FFFFFFFFFFFFAFAFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
            0000FF9797FFFFFFFFFFFFFF0000FFFFFFFFFFFFAFAFFF0000FF0000FF0000FF
            0000FF0000FF0000FF0000FF0000FF9797FFFFFFFFFFFFFF0000FFFFFFFFFFFF
            AFAFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF9797FFFFFF
            FFFFFFFF0000FFFFFFFFFFFFAAAAFF0000FF0000FF0000FF0000FF0000FF0000
            FF0000FF0000FF9191FFFFFFFFFFFFFF0000FFFFFFFFFFFFE4E4FF9494FF9595
            FF9595FF9595FF9595FF9595FF9595FF9494FFD9D9FFFFFFFFFFFFFF0000FFFF
            FFFFFFFF4848FF4444FF4747FF4F4FFF4F4FFF4F4FFF4F4FFF4848FF4444FF4A
            4AFFFFFFFFFFFFFF0000FFFFFFFFFFFF5454FF4848FF3232FF0000FF0000FF00
            00FF0000FF2525FF4848FF5454FFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            FFFFF3F3FF6D6DFF6060FF6060FF6464FFE4E4FFFFFFFFFFFFFFFFFFFFFFFFFF
            0000}
        end
        object ConsDBGrdTelefone: TDBGrid
          Left = 6
          Top = 6
          Width = 166
          Height = 347
          Align = alCustom
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object ConsLblPesquisar: TEdit
        Left = 11
        Top = 47
        Width = 505
        Height = 21
        TabOrder = 2
        TextHint = 'Pesquisar cliente'
      end
      object ConsPnlCardCliente: TPanel
        Left = 3
        Top = 74
        Width = 297
        Height = 94
        TabOrder = 3
        object ConsEdtNome: TEdit
          Left = 8
          Top = 8
          Width = 170
          Height = 21
          TabOrder = 0
          Text = 'Jos'#233' da Silva Penha e Matos'
        end
        object ConsEdtDataHora: TEdit
          Left = 184
          Top = 8
          Width = 105
          Height = 21
          TabOrder = 1
          Text = '18/12/2022 | 18:22'
        end
        object ConsEdtCPF: TEdit
          Left = 8
          Top = 35
          Width = 170
          Height = 21
          TabOrder = 2
          Text = 'CPF'
        end
        object ConsEdtDataNascimento: TEdit
          Left = 184
          Top = 35
          Width = 105
          Height = 21
          TabOrder = 3
          Text = 'Nascimento'
        end
        object ConsBtnEditar: TButton
          Left = 216
          Top = 62
          Width = 73
          Height = 25
          Caption = 'Editar'
          TabOrder = 4
        end
        object ConsEdtEmail: TEdit
          Left = 8
          Top = 62
          Width = 202
          Height = 21
          TabOrder = 5
          Text = 'Email'
        end
      end
      object ConsBtnPesquisar: TButton
        Left = 520
        Top = 47
        Width = 75
        Height = 25
        Caption = 'ConsBtnPesquisar'
        TabOrder = 4
      end
    end
  end
  object ImageList: TImageList
    Left = 16
    Top = 384
    Bitmap = {
      494C010102000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000DADAFF002E2E
      FF000606FF000606FF000606FF000606FF000606FF000606FF000606FF000606
      FF001818FF00B5B5FF00000000000000000000000000000000001D1D1D001515
      1500151515001515150015151500151515001515150015151500151515001515
      1500151515001515150015151500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAFF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF007777FF0000000000000000000000000014141400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009F9FFF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF006D6DFF00FEFEFF00000000000000000013131300000000000000
      00000000000000000000000000002F2F2F00A3A3A300A6A6A600343434000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009696FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF006565FF00FBFBFF00000000000000000015151500000000000000
      0000000000000000000016161600E4E4E400FFFFFF00FFFFFF00E9E9E9001A1A
      1A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFF008B8BFF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF005C5CFF00F6F6FF00000000000000000015151500000000000000
      0000000000000000000042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF004B4B
      4B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFF007D7DFF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF005151FF00EFEFFF00000000000000000015151500000000000000
      000000000000000000001D1D1D00F1F1F100FFFFFF00FFFFFF00F5F5F5002222
      2200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8FF006E6EFF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF004646FF00E8E8FF00000000000000000015151500000000000000
      000000000000000000000000000045454500C0C0C000C2C2C2004B4B4B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6FF005F5FFF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF003A3AFF00E0E0FF00000000000000000015151500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4FF005050FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF002D2DFF00DADAFF00000000000000000015151500000000000101
      0100060606000606060006060600060606000404040004040400060606000606
      0600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2FF004343FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF002323FF00D3D3FF00000000000000000015151500000000008B8B
      8B00D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8
      D800575757000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECECFF002121FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000505FF00C5C5FF0000000000000000001515150000000000B4B4
      B400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00747474000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9FF005C5CFF004646
      FF004747FF004747FF004747FF004747FF004747FF004747FF004747FF004747
      FF004646FF004A4AFF00DADAFF0000000000000000001515150000000000AEAE
      AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00707070000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6FF00B8B8FF00B6B6
      FF00B7B7FF00B7B7FF00B7B7FF00B7B7FF00B7B7FF00B7B7FF00B7B7FF00B7B7
      FF00B6B6FF00B6B6FF00CACAFF0000000000000000001515150000000000B7B7
      B700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00767676000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A2AFF002727FF002A2A
      FF002A2AFF002C2CFF002E2EFF002E2EFF002E2EFF002E2EFF002D2DFF002A2A
      FF002A2AFF002828FF002222FF00000000000000000013131300000000006E6E
      6E00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00ADAD
      AD003B3B3B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003636FF001212FF001818
      FF001818FF000000FF000000FF000000FF000000FF000000FF000000FF001515
      FF001818FF001111FF001F1FFF00000000000000000015151500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000081818100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0FF00EAEAFF00EBEB
      FF00EBEBFF009898FF001C1CFF001616FF001A1AFF001717FF007171FF00EBEB
      FF00EBEBFF00EAEAFF00EDEDFF000000000000000000959595001E1E1E001515
      1500151515001515150015151500151515001515150015151500151515001515
      15001D1D1D0088888800FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00C003C00100000000C003800100000000
      C001800100000000C00180010000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000800180010000000000000000000000000000000000000000
      000000000000}
  end
  object DtSrcOperadora: TDataSource
    DataSet = DMConexaoBD.QryOperadora
    Left = 88
    Top = 384
  end
  object DtSrcCliente_Telefone: TDataSource
    DataSet = DMConexaoBD.QryCliente_Telefone
    Left = 192
    Top = 384
  end
  object DtSrcCliente: TDataSource
    DataSet = DMConexaoBD.QryCliente
    Left = 288
    Top = 384
  end
end
