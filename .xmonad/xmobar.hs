Config { font = "-misc-fixed-*-*-*-*-13-*-*-*-*-*-*-*"
       , additionalFonts = []
       , borderColor = "black"
       , border = TopB
       , bgColor = "black"
       , fgColor = "grey"
       , alpha = 255
       , position = Top
       -- , textOffset = -1
       -- , iconOffset = -1
       , lowerOnStart = True
       -- , pickBroadest = False
       , persistent = False
       , hideOnStart = False
       -- , iconRoot = "."
       , allDesktops = True
       , overrideRedirect = False
       , commands = [ Run Network "enp5s0f1" ["-L","0","-H","32",
                                          "--normal","green","--high","red"] 10
                    , Run Network "wlp4s0" ["-L","0","-H","32",
                                          "--normal","green","--high","red"] 10
                    , Run Cpu ["-L","3","-H","50",
                                          "--normal","green","--high","red"] 10
                    , Run Memory ["-t","Mem: <usedratio>%"] 10
                    , Run Swap [] 10
                    , Run Com "uname" ["-s","-r"] "" 36000
                    , Run Date "%a %b %_d %Y %H:%M:%S" "date" 10
                    , Run BatteryP ["BAT0"]
                                   ["-t", "Battery: (<left>%)",
                                    "-L", "10", "-H", "80", "-p", "3",
                                    "--", "-O", "<fc=green>On</fc> - ", "-i", "",
                                    "-l", "red", "-m", "blue", "-h", "green"]
                                    600
                    -- , Volume "default" "Master" [] 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%cpu% | %memory% * %swap% | %wlp4s0% - %enp5s0f1% }\
                     \{| %battery%   | <fc=#ee9a00>%date%</fc> "
       }
