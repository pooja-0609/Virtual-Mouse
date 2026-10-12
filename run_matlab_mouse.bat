@echo off
title Launch MATLAB Hand Gesture Virtual Mouse
color 0A

echo ======================================================================
echo          LAUNCHING MATLAB HAND GESTURE VIRTUAL MOUSE
echo ======================================================================
echo.

set "MATLAB_EXE=C:\Program Files\MATLAB\R2026b\bin\matlab.exe"
set "SHORT_DIR=C:\Users\pooja\OneDrive\5DD3~1\CVPROJ~1\matlab_cv"

if not exist "%MATLAB_EXE%" (
    echo [WARNING] MATLAB R2026b not found at default location.
    echo Trying PATH...
    set "MATLAB_EXE=matlab"
)

echo Starting MATLAB R2026b...
start "" "%MATLAB_EXE%" -nosplash -r "cd('%SHORT_DIR%'); fprintf('\n>>> Running backend connectivity test...\n\n'); test_connection; fprintf('\n>>> Starting Hand Gesture Virtual Mouse Tracking...\n\n'); main_virtual_mouse;"

echo.
echo MATLAB is starting in a separate window.
echo Please look for the MATLAB window opening on your taskbar.
