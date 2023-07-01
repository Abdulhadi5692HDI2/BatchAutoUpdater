@echo off
:: this is to prevent errors
cd updater

if exist nversion.cmd del version.cmd && copy nversion.cmd version.cmd
curl https://raw.githubusercontent.com/Abdulhadi5692HDI2/BatchAutoUpdater/main/example.cmd > nversion.cmd
call version.cmd
set OLDVER=%VERSION%
echo Current Version: %OLDVER%
call nversion.cmd
echo New Version: %VERSION%
if not %VERSION%==%OLDVER% goto :newupdatelol
pause

:: same here
cd ..
goto :eof


:: neat
:newupdatelol
echo NEW UPDATEEEEE!!!!!!!1
echo installing
del ..\test.bat
curl https://raw.githubusercontent.com/Abdulhadi5692HDI2/BatchAutoUpdater/main/test.bat > ..\test.bat
echo new updatee installeed
echo Press any key to exitas...
pause>nul
exit
exit :: this exit is required