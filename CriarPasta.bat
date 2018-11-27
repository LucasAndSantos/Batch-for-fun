@echo off
cls
echo.
echo Criar pasta em maquina remota
echo.
set /p caminho= IP:
set /p nome=Nome da pasta:
set /p usuario=Usuario remoto:
md \\%caminho%\c$\users\%usuario%\desktop\%nome%
pause
explorer \\%caminho%\c$\users\%usuario%\desktop\%nome%
EXIT