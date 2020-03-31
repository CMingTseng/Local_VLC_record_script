@echo off
set temp=%DATE:/=%
::set fulltimename=%time::=%
set dirname=%temp:~0,4%%temp:~4,2%%temp:~6,2%
set timename=%fulltimename:~0,4%%fulltimename:~4,2%
::IF exist E:\Users\Neo\Videos\%dirname% ( echo exists) ELSE ( mkdir E:\Videos\%dirname% && echo Today Dir created )
set inp=%1
start /b vlc https://video-wshls.langlive.com/live/%inp%S.flv --sout "#file{dst=E:\Videos\%inp%_h_w_%dirname%_%timename%.mp4,no-overwrite}"  --tcp-caching=1000 --ipv4-timeout=90  --sout-keep vlc://quit
echo %inp%

       
        