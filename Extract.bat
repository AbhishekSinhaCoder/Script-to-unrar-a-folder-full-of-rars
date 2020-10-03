@echo off
setlocal EnableDelayedExpansion
dir /B /S *.part01.rar >nul 2>&1
if errorlevel 1 (
goto :UNRAR
) else (
forfiles /s /m *.part01.rar /c "cmd /c 7z x -oextracted @file -y" >> rarlog.txt
goto :EOF
) 
 
:UNRAR
forfiles /s /m *.rar /c "cmd /c 7z x -oextracted @file -y" >> rarlog.txt
timeout /t 3 >nul
 
endlocal
goto :EOF