# Desativar Serviços Desnecessários

### Este é um script que desativa três serviços do Windows: 

- **DiagTrack**: Serviço de rastreamento de diagnóstico do Windows.

- **SysMain**: Serviço de otimização de desempenho do sistema.

- **WbioSrvc**: Serviço de autenticação biométrica.

### Estes 3 serviços em muitos casos são consideráveis "Desnecessários" para o sistema operacional devido a várias razões relacionadas ao desempenho, uso de recursos e funcionalidade. 

# Sobre os serviços

### 1. DiagTrack (Serviço de Rastreamento de Diagnóstico)

**Coleta de Dados:** O DiagTrack é responsável pela coleta de dados de diagnóstico e de uso do sistema. Para muitos usuários, essa coleta é vista como uma invasão de privacidade, especialmente se não houver um benefício claro em termos de desempenho ou funcionalidade.

**Uso de Recursos:** Este serviço pode consumir recursos do sistema, como CPU e memória, sem que o usuário perceba um benefício direto. Isso pode resultar em um desempenho mais lento, especialmente em máquinas com hardware mais limitado.

**Desnecessidade para Usuários Comuns:** Muitos usuários não se beneficiam das informações coletadas, tornando o serviço desnecessário para suas necessidades diárias.

### 2. SysMain (Antigo Superfetch)

**Otimização de Desempenho:** O SysMain é projetado para otimizar o desempenho do sistema, pré-carregando aplicativos frequentemente usados na memória. No entanto, em sistemas modernos com SSDs, o ganho de desempenho é mínimo, tornando o serviço menos relevante.

**Conflito de Recursos:** Em máquinas com recursos limitados, o SysMain pode competir por CPU e RAM, causando lentidão em vez de melhorar o desempenho. Isso leva muitos usuários a desativá-lo para evitar problemas de desempenho.

**Não Essencial:** Para a maioria dos usuários, especialmente aqueles que não utilizam aplicativos pesados, o SysMain não é considerado essencial, pois o tempo de carregamento de aplicativos não é um problema significativo.

### 3. WbioSrvc (Serviço de Autenticação Biométrica)

**Uso Limitado:** O WbioSrvc é utilizado para autenticação biométrica, como impressões digitais. No entanto, muitos usuários não possuem hardware biométrico ou não utilizam essa funcionalidade, tornando o serviço desnecessário.

**Impacto no Desempenho:** Assim como os outros serviços, o WbioSrvc pode consumir recursos do sistema sem oferecer benefícios para usuários que não utilizam autenticação biométrica.

**Preferência por Métodos Alternativos:** A maioria dos usuários ainda prefere métodos tradicionais de autenticação, como senhas, o que torna o WbioSrvc redundante.

### 4. WSearch (Serviço de Pesquisa)

**Indexação e Busca:** O WSearch (Windows Search) cria e mantém um índice de arquivos, e-mails e conteúdo para acelerar as pesquisas no Explorador de Arquivos e no Menu Iniciar. É útil para quem realiza buscas frequentes por nomes de arquivos ou por conteúdo dentro de documentos.

**Uso de Recursos:** Durante a indexação, especialmente a inicial ou após grandes alterações em arquivos, o serviço pode consumir CPU e causar alto uso de disco, impactando o desempenho e a autonomia da bateria em máquinas mais simples. Em SSDs modernos, o impacto tende a ser menor, mas ainda pode ocorrer.

**Não Essencial:** Para usuários que raramente utilizam a busca do Windows ou não precisam de pesquisa por conteúdo, o WSearch pode ser considerado desnecessário. Desativá-lo reduz o consumo de recursos, mas torna as pesquisas mais lentas e menos completas, inclusive no Outlook, que depende do índice do Windows para buscas rápidas.

## Aviso importante
### Se você estiver usando um dispositivo equipado com um leitor biométrico (como um scanner de impressão digital ou reconhecimento facial), evite desativar o serviço **WbioSrvc (Serviço de Autenticação Biométrica)** para que não haja falhas de login e autenticação

## Considerações finais
### Caso queira reativar os 3 serviços, execute o arquivo Ativar.bat, a execução fará com que os serviços voltem em suas definições padrões.

### Para que a execução dos 2 scripts ocorram sem problemas, execute-os como administrador.
