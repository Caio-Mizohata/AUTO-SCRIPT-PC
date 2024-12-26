# Reparar Windows

### Este é um script que executa 4 ferramentas para diagnosticar e corrigir problemas relacionados a arquivos de sistema, integridade do sistema e erros no disco rígido.

## Os Comandos utilizados

### 1. DISM /Online /Cleanup-Image /ScanHealth

- **Descrição:** Este comando verifica a integridade da imagem do Windows em execução. Ele identifica se há corrupção na imagem do sistema, mas não realiza reparos.

### 2. DISM /Online /Cleanup-Image /RestoreHealth

- **Descrição:** Este comando não apenas verifica a imagem do Windows, mas também tenta reparar qualquer corrupção encontrada. Ele pode baixar arquivos de reparo da Microsoft, se necessário.

### 3. sfc /scannow

- **Descrição:** O sfc (System File Checker) verifica a integridade dos arquivos de sistema protegidos e substitui arquivos corrompidos ou ausentes. É uma ferramenta fundamental para resolver problemas relacionados a arquivos de sistema.

### 4. chkdsk /scan

- **Descrição:** O chkdsk (Check Disk) verifica a integridade do sistema de arquivos e do disco rígido. O parâmetro /scan permite que a verificação seja realizada sem a necessidade de reiniciar o sistema.

## Recado final
### Se você pressentir que não há nada de errado com o seu Windows, não haverá necessidade de executar este script.
