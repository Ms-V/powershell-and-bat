@echo off
cls
color 0A
 
@echo off
echo.
echo ===Choose you os lanuage for activation===
echo.
echo 1:activation in chinese os
echo.
echo 2:activation in japanese os
echo.
echo.
set/p sel=Please choose lanuage£º
if "%sel%"=="1" goto cn
if "%sel%"=="2" goto jp
echo Choose error,exit the bat.
goto end

:cn
echo please wait......
powershell -ExecutionPolicy bypass  -File %cd%\auto-activation-cn.ps1
echo activation procedure is end please enter any to exit!
pause
goto end

:jp
echo please wait......
powershell -ExecutionPolicy bypass  -File %cd%\auto-activation-jp.ps1
echo activation procedure is end please enter any to exit!
pause
goto end