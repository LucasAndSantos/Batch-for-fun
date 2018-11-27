@echo off
::Feito por Lucas.SSilva
cls

set /p usuarios=Usuario:

powershell -Command $pword = read-host "Senha" -AsSecureString ; ^
$BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword) ; ^
[System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR) > .tmp.txt 

set /p senhas=<.tmp.txt & del .tmp.txt


net use z: \\servicedesk\arquivos$ /user:%usuarios% %senhas%
explorer z:

pause echo Pressione para encerrar conexao

net use z: /d
exit