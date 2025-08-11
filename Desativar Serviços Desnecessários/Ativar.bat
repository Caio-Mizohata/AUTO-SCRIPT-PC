@echo off

title Reativar Servicos

set Servico1=DiagTrack
set Servico2=SysMain
set Servico3=WbioSrvc
set Servico4=WSearch

echo.
echo Ativando o servico %Servico1%
echo.

sc config %Servico1% start=auto

if %errorlevel% equ 0 (
    echo O servico %Servico1% foi configurado para "Automatico" com sucesso.
) else (
    echo Falha ao configurar o servico %Servico1% como "Automatico". 
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

echo.
echo Ativando o servico %Servico2%
echo.

sc config %Servico2% start=auto

if %errorlevel% equ 0 (
    echo O servico %Servico2% foi configurado para "Automatico" com sucesso.
) else (
    echo Falha ao configurar o servico %Servico1% como "Automatico". 
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

echo.
echo Ativando o servico %Servico3%
echo.

sc config %Servico3% start=auto

if %errorlevel% equ 0 (
    echo O servico %Servico3% foi configurado para "Automatico" com sucesso.
) else (
    echo Falha ao configurar o servico %Servico1% como "Automatico". 
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

echo.
echo Ativando o servico %Servico4%
echo.

sc config %Servico4% start=auto

if %errorlevel% equ 0 (
    echo O servico %Servico4% foi configurado para "Automatico" com sucesso.
) else (
    echo Falha ao configurar o servico %Servico1% como "Automatico". 
)

net start %Servico4%

if %errorlevel% equ 0 (
    @echo off
) else (
    echo Falha ao ativar o serviço %%Servico4%%. O serviço pode estar em execução ou você não tem permissões suficientes.
    echo Abortando a ativação do serviço.
    pause
    exit /b
)

pause
