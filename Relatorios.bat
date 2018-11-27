@echo off
net use lpt2 /d
cls
:start
set /p loja=Loja?:
echo.
echo _______________Impressoras:
echo.
echo 1 - impmulti40
echo 2 - implaser47
echo 3 - implaser49
set /p imp=Impressora?:
goto %imp%

:1
net use lpt2 \\server%loja%\impmulti40
echo.
echo.
echo.
net use
pause
exit

:2
net use lpt2 \\server%loja%\implaser47
echo.
echo.
echo.
net use
pause
exit

:3
net use lpt2 \\server%loja%\implaser49
echo.
echo.
echo.
net use
pause
exit
