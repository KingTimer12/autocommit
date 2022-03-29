@echo off
title Auto commit
color 0A

cd "C:\Users\ender\Desktop\Discord Bots\Weeble"

:main
echo.
echo ---------------------------
echo.
echo BEM-VINDO AO AUTO COMMIT
echo Antes de tudo, verifique se
echo o diretorio esta no cd do .bat
echo.
echo ---------------------------
echo.
echo Se estiver tudo certo, escreva A
echo Se quiser atualizar o repertório local, escreva B
echo.
echo A) Prosseguir
echo B) Atualizar
echo.
set /p do=R:

if %do% == A goto commit
if %do% == a goto commit

if %do% == B goto pul
if %do% == b goto pul

echo.
cls
echo Invalid value = %do%
echo.
pause
cls
goto main

:pul
cls
echo -- PULL --
git pull origin master
echo git pull origin master
echo Atualizado com sucesso todos os arquivos!
echo.
pause
cls
goto main

:commit
cls
echo -- COMMIT --
git add .
echo git add .
echo Adicionado os arquivos no git!
echo.
set /p message="Nos informe o commit:"
echo git commit -m "%message%"
git commit -m "%message%"
echo Commit feito com sucesso!
echo git push origin master
git push origin master
echo Push feita com sucesso!
echo.
pause
cls
goto main