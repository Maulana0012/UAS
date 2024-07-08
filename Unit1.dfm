object Form1: TForm1
  Left = 244
  Top = 75
  Width = 646
  Height = 485
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = OnShowForm
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 112
    Top = 24
    Width = 24
    Height = 13
    Caption = 'NIK :'
  end
  object lbl2: TLabel
    Left = 112
    Top = 56
    Width = 36
    Height = 13
    Caption = 'NAMA :'
  end
  object lbl3: TLabel
    Left = 112
    Top = 88
    Width = 30
    Height = 13
    Caption = 'TELP :'
  end
  object lbl4: TLabel
    Left = 112
    Top = 120
    Width = 37
    Height = 13
    Caption = 'EMAIL :'
  end
  object lbl5: TLabel
    Left = 112
    Top = 152
    Width = 47
    Height = 13
    Caption = 'ALAMAT :'
  end
  object lbl6: TLabel
    Left = 112
    Top = 184
    Width = 48
    Height = 13
    Caption = 'MEMBER :'
  end
  object lbl7: TLabel
    Left = 336
    Top = 184
    Width = 45
    Height = 13
    Caption = 'DISKON :'
  end
  object lbl8: TLabel
    Left = 392
    Top = 184
    Width = 49
    Height = 13
    Caption = 'DISKON []'
  end
  object lbl9: TLabel
    Left = 56
    Top = 408
    Width = 87
    Height = 13
    Caption = 'MASUKAN NAMA: '
  end
  object lbl10: TLabel
    Left = 400
    Top = 80
    Width = 25
    Height = 13
    Caption = 'INFO'
  end
  object edt1: TEdit
    Left = 176
    Top = 24
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 176
    Top = 56
    Width = 137
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 176
    Top = 88
    Width = 137
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 176
    Top = 120
    Width = 137
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 176
    Top = 152
    Width = 137
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 176
    Top = 184
    Width = 137
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'Pilih--'
    OnChange = cbb1Change
    Items.Strings = (
      'no'
      'yes')
  end
  object btn1: TButton
    Left = 144
    Top = 216
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 224
    Top = 216
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 304
    Top = 216
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn5: TButton
    Left = 384
    Top = 216
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btn5Click
  end
  object btn4: TButton
    Left = 336
    Top = 400
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 10
  end
  object dbgrd1: TDBGrid
    Left = 64
    Top = 264
    Width = 425
    Height = 129
    DataSource = DataModule2.dsKustomer
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = OnCellClickKustomer
  end
  object edt6: TEdit
    Left = 144
    Top = 408
    Width = 185
    Height = 21
    TabOrder = 12
    Text = 'w'
    OnChange = edt6Change
  end
  object btn6: TButton
    Left = 64
    Top = 216
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 13
    OnClick = btn6Click
  end
end
