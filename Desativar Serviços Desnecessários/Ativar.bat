@echo off

title Reativar Servicos

set Servico1=DiagTrack
set Servico2=SysMain
set Servico3=WbioSrvc

echo Ativando o servico %Servico1%
echo.

sc config %Servico1% start=auto

if %errorlevel% equ 0 (
    echo O servico %Servico1% foi configurado para "Automatico" com sucesso.
) else (
    echo Falha ao configurar o servico %Servico1% como "Automatico". Verifique o nome do servico e tente novamente.
)

net start %Servico1%

if %errorlevel% equ 0 (
    @echo off 
) else (
    echo Falha ao iniciar o servico %Servico1%. O servico pode estar em execucao ou voce nao tem permissoes suficientes.
    echo Abortando a inicializacao do servico.
    pause
    exit /b
)

echo Ativando o servico %Servico2%
echo.

sc config %Servico2% start=auto

if %errorlevel% equ 0 (
    echo O servico %Servico2% foi configurado para "Automatico" com sucesso.
) else (
    echo Falha ao iniciar o servico %Servico2%. O servico pode estar em execucao ou voce nao tem permissoes suficientes.
    echo Abortando a inicializacao do servico.
    pause
    exit /b
)

net start %Servico2%

if %errorlevel% equ 0 (
    @echo off
) else (
    echo Falha ao iniciar o servico %Servico2%. O servico pode estar em execucao ou voce nao tem permissoes suficientes.
    echo Abortando a inicializacao do servico.
    pause
    exit /b
)

echo Ativando o servico %Servico3%
echo.

sc config %Servico3% start=auto

if %errorlevel% equ 0 (
    echo O servico %Servico3% foi configurado para "Automatico" com sucesso.
) else (
    echo Falha ao ativar o servico %Servico3%. O servico pode estar em execucao ou voce nao tem permissoes suficientes.
    echo Abortando a ativacao do servico.
    pause
    exit /b
)

net start %Servico3%

if %errorlevel% equ 0 (
    @echo off
) else (
    echo Falha ao ativar o servico %Servico3%. O servico pode estar em execucao ou voce nao tem permissoes suficientes.
    echo Abortando a ativacao do servico.
    pause
    exit /b
)

exit
