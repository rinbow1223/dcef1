object MainForm: TMainForm
  Left = 276
  Top = 194
  ActiveControl = edAddress
  Caption = 'Chromium Embedded'
  ClientHeight = 445
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    784
    445)
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 0
    Top = 0
    Width = 23
    Height = 22
    Action = actPrev
  end
  object SpeedButton2: TSpeedButton
    Left = 24
    Top = 0
    Width = 23
    Height = 22
    Action = actNext
  end
  object SpeedButton3: TSpeedButton
    Left = 48
    Top = 0
    Width = 23
    Height = 22
    Action = actHome
    Caption = 'H'
  end
  object SpeedButton4: TSpeedButton
    Left = 72
    Top = 0
    Width = 23
    Height = 22
    Action = actReload
    Caption = 'R'
  end
  object SpeedButton5: TSpeedButton
    Left = 745
    Top = 0
    Width = 23
    Height = 22
    Action = actGoTo
    Anchors = [akTop, akRight]
  end
  object crm: TChromium
    Left = 0
    Top = 27
    Width = 784
    Height = 399
    Anchors = [akLeft, akTop, akRight, akBottom]
    DefaultUrl = 'http://www.google.com'
    OnAddressChange = crmAddressChange
    OnTitleChange = crmTitleChange
    OnLoadStart = crmLoadStart
    OnLoadEnd = crmLoadEnd
    OnStatus = crmStatus
  end
  object edAddress: TEdit
    Left = 95
    Top = 0
    Width = 650
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    Text = 'http://www.google.com'
    OnKeyPress = edAddressKeyPress
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 426
    Width = 784
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object ActionList: TActionList
    Left = 624
    Top = 112
    object actPrev: TAction
      Caption = '<-'
      Enabled = False
      OnExecute = actPrevExecute
      OnUpdate = actPrevUpdate
    end
    object actNext: TAction
      Caption = '->'
      Enabled = False
      OnExecute = actNextExecute
      OnUpdate = actNextUpdate
    end
    object actHome: TAction
      Caption = 'actHome'
      OnExecute = actHomeExecute
      OnUpdate = actHomeUpdate
    end
    object actReload: TAction
      Caption = 'actReload'
      OnExecute = actReloadExecute
      OnUpdate = actReloadUpdate
    end
    object actGoTo: TAction
      Caption = '>'
      OnExecute = actGoToExecute
    end
    object actGetSource: TAction
      Caption = 'Get source'
      OnExecute = actGetSourceExecute
    end
    object actGetText: TAction
      Caption = 'Get text'
      OnExecute = actGetTextExecute
    end
    object actShowDevTools: TAction
      Caption = 'Show developper tools'
      OnExecute = actShowDevToolsExecute
    end
    object actCloseDevTools: TAction
      Caption = 'Close developper tools'
      OnExecute = actCloseDevToolsExecute
    end
    object actZoomIn: TAction
      Caption = 'Zoom in'
      OnExecute = actZoomInExecute
    end
    object actZoomOut: TAction
      Caption = 'Zoom out'
      OnExecute = actZoomOutExecute
    end
    object actZoomReset: TAction
      Caption = 'Zoom reset'
      OnExecute = actZoomResetExecute
    end
    object actExecuteJS: TAction
      Caption = 'Execute JavaScript'
      OnExecute = actExecuteJSExecute
    end
    object actPrint: TAction
      Caption = 'Print'
      OnExecute = actPrintExecute
    end
    object actFileScheme: TAction
      Caption = 'File scheme'
      OnExecute = actFileSchemeExecute
    end
  end
  object MainMenu: TMainMenu
    Left = 624
    Top = 56
    object File1: TMenuItem
      Caption = '&File'
      object Print1: TMenuItem
        Action = actPrint
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object est1: TMenuItem
      Caption = '&Test'
      object mGetsource: TMenuItem
        Action = actGetSource
      end
      object mGetText: TMenuItem
        Action = actGetText
      end
      object ExecuteJavaScript1: TMenuItem
        Action = actExecuteJS
      end
      object Zoomin1: TMenuItem
        Action = actZoomIn
      end
      object Zoomout1: TMenuItem
        Action = actZoomOut
      end
      object Zoomreset1: TMenuItem
        Action = actZoomReset
      end
      object Showdevtools1: TMenuItem
        Action = actShowDevTools
      end
      object Closedeveloppertools1: TMenuItem
        Action = actCloseDevTools
      end
      object actFileScheme1: TMenuItem
        Action = actFileScheme
      end
    end
  end
end
