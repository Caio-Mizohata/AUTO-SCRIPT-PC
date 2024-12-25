@echo off

title Verificacao e Restauracao do Sistema

echo Verificando a Saude do Windows
echo.

echo [1/4] Iniciando a verificacao de saude da imagem do Windows...

DISM /Online /Cleanup-Image /ScanHealth
echo.

echo [2/4] Restaurando a saude da imagem do Windows...

DISM /Online /Cleanup-Image /RestoreHealth
echo.

echo [3/4] Verificando arquivos de sistema...

sfc /scannow
echo.

echo [4/4] Iniciando a verificacao do disco...

chkdsk /scan

echo Verificacao Concluida com Sucesso!
echo.

pause
