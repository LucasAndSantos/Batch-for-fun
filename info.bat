@echo off
cls
:start
echo Escolha a Opcao:
echo 1 - Maquina local
echo 2 - Maquina Remoto
echo 3 - exit
echo.
set /p opcao=:
goto %opcao%

:1
wmic computersystem get Username, Name, Manufacturer, Model
pause
cls
goto start

:2
set /p ip=Nome ou IP da maquina?:
wmic /node:%ip% computersystem GET Username, Name, Manufacturer, Model
pause
cls
goto start

:3
echo Confirmar saida? (S/N)?
set /p saida=:
goto %saida%

:s
exit

:n
cls
goto start