@echo off
cd /d "%~dp0"
call atualizar.bat
git add docs
git commit -m "Atualizacao automatica de ofertas"
git push
