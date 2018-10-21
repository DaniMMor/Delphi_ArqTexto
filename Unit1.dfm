object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 358
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 104
    Width = 626
    Height = 254
    Align = alBottom
    TabOrder = 0
    object Memo2: TMemo
      Left = 129
      Top = 1
      Width = 496
      Height = 252
      Align = alClient
      Lines.Strings = (
        'adsfdsa'
        'fg'
        'erwe'
        'fbfdd'
        '56'
        '86'
        'yu'
        'h')
      TabOrder = 0
      ExplicitLeft = 128
      ExplicitTop = 0
      ExplicitWidth = 503
    end
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 128
      Height = 252
      Align = alLeft
      Lines.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7')
      TabOrder = 1
    end
  end
  object Button2: TButton
    Left = 8
    Top = 41
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
end
