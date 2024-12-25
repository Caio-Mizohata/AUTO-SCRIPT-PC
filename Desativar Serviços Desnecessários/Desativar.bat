@echo off

title Desativar Servicos

set Servico1=DiagTrack
set Servico2=SysMain
set Servico3=WbioSrvc

echo.
echo Desativando o servico %Servico1%
echo.

net stop %Servico1%

if %errorlevel% equ 0 (
    @echo off
) else (
    echo Falha ao parar o servico %Servico1%. O servico ja pode estar desativado ou voce nao tem permissoes suficientes.
    echo Abortando a desativacao do servico.
    pause
    exit /b
)

sc config %Servico1% start=disabled

if %errorlevel% equ 0 (
    echo O servico %Servico1% foi configurado para "Desativado" com sucesso.
) else (
    echo Falha ao configurar o servico %Servico1% como "Desativado". Verifique o nome do servico e tente novamente.
)

echo.
echo Desativando o servico %Servico2%
echo.

net stop %Servico2%

if %errorlevel% equ 0 (
    @echo off
) else (
    echo Falha ao parar o servico %Servico2%. O servico ja pode estar desativado ou voce nao tem permissoes suficientes.
    echo Abortando a desativacao do servico.
    pause
    exit /b
)

sc config %Servico2% start=disabled

if %errorlevel% equ 0 (
    echo O servico %Servico2% foi configurado para "Desativado" com sucesso. 
) else (
    echo Falha ao parar o servico %Servico2%. O servico ja pode estar desativado ou voce nao tem permissoes suficientes.
    echo Abortando a desativacao do serviço.
    pause
    exit /b
)

echo.
echo Desativando o servico %Servico3%
echo.

net stop %Servico3%

if %errorlevel% equ 0 (
    @echo off
) else (
    echo Falha ao parar o servico %Servico3%. O servico ja pode estar desativado ou voce nao tem permissoes suficientes.
    echo Abortando a desativacao do serviço.
    pause
    exit /b
)

sc config %Servico3% start=disabled

if %errorlevel% equ 0 (
    echo O servico %Servico3% foi configurado para "Desativado" com sucesso. 
) else (
    echo Falha ao parar o servico %Servico3%. O servico ja pode estar desativado ou voce nao tem permissoes suficientes.
    echo Abortando a desativacao do serviço.
    pause
    exit /b
)

exit
