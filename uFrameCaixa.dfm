object FrameCaixa: TFrameCaixa
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  Color = clDarkgray
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object lblStatusCaixa: TLabel
    Left = 418
    Top = 452
    Width = 49
    Height = 25
    Caption = 'status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblCaixaInfo: TLabel
    Left = 72
    Top = 452
    Width = 108
    Height = 25
    Caption = 'Info do caixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object EdtValorAbertura: TEdit
    Left = 272
    Top = 203
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'valor abertura'
  end
  object btnAbrirCaixa: TButton
    Left = 105
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Abrir'
    TabOrder = 1
    OnClick = btnAbrirCaixaClick
  end
  object btnFecharCaixa: TButton
    Left = 392
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = btnFecharCaixaClick
  end
end
