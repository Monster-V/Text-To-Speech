@echo off
title Text to Speech Conversion
color 0f

:: The user decides what to convert here
:input
mode 60,20
cls
echo.
echo ------------------------Monster-V---------------------------
echo.
echo.
echo.
echo    What do you want the computer to convert into speech?
echo.
echo ____________________________________________________________
set /p text="Enter Text to Convert Into Voice : "

:: Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.Rate = -3 >> "temp%num%.vbs"
echo speech.speak "%text%" >> "temp%num%.vbs"
start temp%num%.vbs
pause
del temp%num%.vbs
goto input

