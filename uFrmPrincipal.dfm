object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'PDV'
  ClientHeight = 570
  ClientWidth = 905
  Color = clDarkgray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MenuFrmPrincipal
  WindowState = wsMaximized
  TextHeight = 15
  object pnlConteudoPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 570
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 368
    ExplicitTop = 296
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object MenuFrmPrincipal: TMainMenu
    Left = 864
    Top = 536
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cadastros2: TMenuItem
        Caption = 'Produtos'
        OnClick = Cadastros2Click
      end
    end
    object Movimento1: TMenuItem
      Caption = 'Movimento'
      object PDV1: TMenuItem
        Caption = 'PDV'
      end
      object Caixa1: TMenuItem
        Caption = 'Caixa'
      end
    end
    object Consultas1: TMenuItem
      Caption = 'Consultas'
    end
    object HistricodeVendas1: TMenuItem
      Caption = 'Hist'#243'rico de Vendas'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
