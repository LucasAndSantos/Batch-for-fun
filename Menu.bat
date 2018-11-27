@echo off
cls
::trabalhando com Batchs.. menu de opções
:start
echo Menu:
echo  
echo 1 - Ipconfig
echo 2 - net use
echo 3 - Info do PC
echo 4 - CLS
echo 5 - Exit
echo  
set /p menu=Escolha uma das opcoes a seguir:
goto %menu%

:1
echo Opcao 1
echo.
echo.
echo.
ipconfig
echo.
echo.
echo.
goto start

:2
echo Opcao 2
echo.
echo.
echo.
net use
echo.
echo.
echo.
goto start

:3
echo Opcao 3
echo.
echo.
echo.
wmic computersystem get name, model, manufacturer, username
echo.
echo.
echo.
goto Start

:4
echo Opcao 4
cls
goto Start


:5
set /p confirmar=confirmar saida? s/n:
goto %confirmar%

:s
Exit

:n
cls
goto start
