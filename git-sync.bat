@echo off
chcp 65001 >nul
echo ==========================================
echo Sincronizando notas com o GitHub...
echo ==========================================
git add .
git commit -m "update: notas atualizadas pelo Obsidian"
git push
echo.
echo ==========================================
echo Sincronizacao concluida com sucesso!
echo ==========================================
timeout /t 3 >nul
