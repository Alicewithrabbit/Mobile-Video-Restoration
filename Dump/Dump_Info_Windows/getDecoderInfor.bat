@echo off>nul
setlocal enabledelayedexpansion
set FFMPEG=ffmpeg
set src=seq
set streams=yuv
set results=results
set run_log=run.log
echo >%run_log%
rd /S/Q %streams%
md %streams%
rd /S/Q %results%
md %results%

if "%1" == "dump" set decoder=-vcodec libhevc

for %%i in (%src%\*.mp4) do (

    set fullname=%%i
    set filename=!fullname:~4,-4!

    echo file_input:!fullname:~4!   !filename!

    set run_cmd=%FFMPEG% %decoder% -i %%i -vsync 0 -pix_fmt yuv420p -y %streams%\!filename!.yuv
    echo !run_cmd!
    !run_cmd!>>%run_log% 2>&1

    if "%1" == "dump" move %src%\*.log %results%\ >nul
)

@echo on>nul
