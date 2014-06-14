import XMonad

import XMonad.Hooks.EwmhDesktops
{-
myKeyBindings =
  [
    ((0, 0x1008FF12), spawn "amixer -q set Master toggle")
    , ((0, 0x1008FF11), spawn "amixer -q set Master 10%-")
    , ((0, 0x1008FF13), spawn "amixer -q set Master 10%+")
  ]
-}


main = xmonad defaultConfig
     {  borderWidth = 1,
        focusedBorderColor  = "#777",
        normalBorderColor   = "#000",
        handleEventHook     = fullscreenEventHook
     }
{-        `additionalKeys` myKeyBindings -}


