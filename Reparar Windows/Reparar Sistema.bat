@echo off
:: Configura a cor do fundo e do texto para uma interface mais agradável
color 0A

:: Título da janela do terminal
title Verificação e Restauração do Sistema

:: Exibe uma mensagem inicial
echo ===============================
echo  Verificando a Saúde do Windows
echo ===============================
echo.

:: Inicia a verificação de saúde da imagem do Windows
echo [1/4] Iniciando a verificação de saúde da imagem do Windows...
echo ==============================================================
echo.
DISM /Online /Cleanup-Image /ScanHealth
echo.

:: Restaura a saúde da imagem do Windows
echo [2/4] Restaurando a saúde da imagem do Windows...
echo =================================================
echo.
DISM /Online /Cleanup-Image /RestoreHealth
echo.

:: Verifica os arquivos de sistema
echo [3/4] Verificando arquivos de sistema...
echo ========================================
echo.
sfc /scannow
echo.

:: Verifica o disco rígido
echo [4/4] Iniciando a verificação do disco...
echo =========================================
echo.
chkdsk /scan
echo.

:: Mensagem final
echo ====================================
echo  Verificação Concluída com Sucesso!
echo ====================================
echo.

:: Pausa para o usuário ver os resultados
pause
