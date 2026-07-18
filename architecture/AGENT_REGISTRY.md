# Registro Oficial de Agentes da KDEVY Engineering Platform

## 1. Controle documental

| Campo | Valor |
| --- | --- |
| Documento | AGENT_REGISTRY |
| Versão | 0.1.1 |
| Status | Draft |
| Classificação | Interno |
| Owner | Governança da KEP |
| Aprovador | A definir pela governança da KEP |
| Última revisão | 2026-07-17 |
| Próxima revisão | A definir pela governança da KEP |
| Referências normativas | `architecture/AGENT_FRAMEWORK_MODEL.md`, `architecture/AGENT_CATALOG.md`, `templates/AGENT_TEMPLATE.md`, `templates/AGENT_PLAYBOOK_TEMPLATE.md`, `architecture/PLATFORM_MODEL.md`, `architecture/KNOWLEDGE_SYSTEM_MODEL.md`, `architecture/KEP_MASTER_ROADMAP.md`, `specifications/KES-0000_MASTER_SPECIFICATION.md`, `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md`, `policies/`, `governance/`, `roadmap/` |
| Histórico | Versão inicial do registro oficial de agentes da KEP. |

## 2. Objetivo

Este documento define o Registro Oficial de Agentes da KDEVY Engineering Platform (KEP).

O registro funciona como inventário oficial de agentes formalmente reconhecidos pela KEP. Ele mantém rastreabilidade histórica, permite verificar existência, status, versão, responsáveis, documentos associados, produtos autorizados e situação de governança.

O registro existe para:

- funcionar como fonte oficial de verdade sobre agentes registrados;
- manter rastreabilidade histórica;
- permitir verificação de existência, status e versão;
- impedir duplicações e reutilização de identificadores;
- apoiar auditoria, governança e evolução da plataforma;
- preservar separação entre definição, governança e execução.

O registro NÃO substitui:

- `architecture/AGENT_CATALOG.md`;
- `templates/AGENT_TEMPLATE.md`;
- `templates/AGENT_PLAYBOOK_TEMPLATE.md`;
- documentos individuais dos agentes;
- mecanismos de execução;
- mecanismos de autorização;
- evidências de execuções específicas.

## 3. Escopo

Pertence ao registro:

- agentes da plataforma;
- agentes de frameworks;
- agentes de produtos;
- agentes experimentais formalmente controlados;
- agentes suspensos;
- agentes descontinuados;
- agentes arquivados.

Não pertence ao registro:

- prompts isolados;
- scripts;
- playbooks;
- tarefas;
- automações simples;
- protótipos não registrados;
- ferramentas externas sem reconhecimento formal;
- sessões específicas de execução;
- permissões temporárias isoladas;
- documentos de planejamento sem agente formalmente reconhecido.

## 4. Princípios

### Fonte única de verdade

O registro DEVE ser a fonte oficial para confirmar se um agente existe formalmente na KEP.

### Rastreabilidade

Toda entrada DEVE permitir rastrear status, versão, owner, aprovador, documentos, produtos e evidência da alteração mais recente.

### Imutabilidade histórica

Histórico de agentes, IDs, status e alterações NÃO DEVE ser apagado.

### Responsabilidade explícita

Todo agente registrado DEVE possuir owner e aprovador. Agente sem owner NÃO DEVE alcançar status `Active`.

### Versionamento

Versões do documento do agente, da implementação quando existir e do registro DEVEM ser diferenciadas.

### Separação entre definição e execução

Registro define existência e governança. Execução pertence aos mecanismos autorizados e às instâncias de Playbook.

### Menor privilégio

Compatibilidade ou registro NÃO concede acesso. Permissões DEVEM ser explícitas, limitadas e proporcionais ao risco.

### Transparência

Status, restrições, suspensão, depreciação e arquivamento DEVEM ser visíveis no registro.

### Auditabilidade

Toda mudança relevante no registro DEVE possuir justificativa, responsável, aprovador, data e evidência.

### Independência de fornecedor

O registro NÃO DEVE depender de ferramenta, modelo, provedor ou mecanismo específico de IA.

## 5. Identificação dos agentes

O padrão oficial de ID de agente é:

```text
AGT-<DOMINIO>-<NUMERO>
```

Exemplos ilustrativos de formato:

```text
AGT-ARCH-001
AGT-ENG-001
AGT-KNOW-001
AGT-OPS-001
```

Regras obrigatórias:

- cada agente possui ID único;
- IDs não podem ser reutilizados;
- mudança de nome não altera o ID;
- agentes arquivados preservam seus IDs;
- agentes sucessores devem receber novo ID;
- aliases não substituem o nome oficial;
- IDs históricos permanecem rastreáveis.

Uma entrada no catálogo NÃO significa que um agente já existe oficialmente. O agente só existe formalmente quando possuir entrada neste registro.

## 6. Campos obrigatórios do registro

Cada agente registrado DEVE possuir os campos abaixo:

- Agent ID;
- Nome oficial;
- Alias, quando aplicável;
- Categoria;
- Domínio;
- Descrição resumida;
- Status;
- Versão atual;
- Classificação;
- Nível de risco;
- Criticidade operacional;
- Owner;
- Aprovador;
- Documento do agente;
- Playbooks aprovados;
- Produtos compatíveis;
- Ambientes permitidos;
- Capacidades autorizadas;
- Restrições principais;
- Data de registro;
- Data de aprovação;
- Data de ativação;
- Data de suspensão, quando aplicável;
- Data de descontinuação, quando aplicável;
- Data de arquivamento, quando aplicável;
- Última revisão;
- Próxima revisão;
- Agente sucessor, quando aplicável;
- Motivo da substituição, quando aplicável;
- Motivo de suspensão, descontinuação ou arquivamento;
- Observações;
- Evidência da alteração mais recente.

Campos desconhecidos NÃO DEVEM ser inventados. Se ainda não houver informação aprovada, o campo DEVE indicar `A definir`, `Não aplicável` ou `Pendente`, com justificativa quando o agente estiver em status que exija completude.

## 7. Status do agente

O lifecycle oficial do agente no registro é:

```text
Proposed
  ↓
Draft
  ↓
Review
  ↓
Approved
  ↓
Active
  ↓
Suspended
  ↓
Deprecated
  ↓
Archived
```

| Status | Definição |
| --- | --- |
| Proposed | Agente identificado como necessidade, ainda sem definição completa. |
| Draft | Documento individual em elaboração. |
| Review | Agente em revisão técnica, arquitetural ou de governança. |
| Approved | Agente aprovado documentalmente, mas ainda não necessariamente operacional. |
| Active | Agente autorizado para execução dentro de escopo definido. |
| Suspended | Agente temporariamente impedido de executar. |
| Deprecated | Agente mantido por compatibilidade ou transição, sem novas capacidades. |
| Archived | Agente encerrado operacionalmente e preservado somente para histórico. |

Status `Approved` NÃO significa ativação operacional. Status `Active` exige critérios adicionais de ativação.

## 8. Transições de status

| Origem | Destino | Condição | Autoridade necessária | Evidência obrigatória |
| --- | --- | --- | --- | --- |
| Nenhum | Proposed | Necessidade identificada | Governança da KEP ou owner proposto | Justificativa inicial |
| Proposed | Draft | Criação do documento individual autorizada | Owner proposto | Registro de escopo inicial |
| Draft | Review | Documento pronto para revisão | Owner do agente | Documento do agente e checklist inicial |
| Review | Approved | Revisão concluída sem bloqueios obrigatórios | Aprovador autorizado | Relatório de revisão e aceite |
| Approved | Active | Critérios de ativação atendidos | Aprovador e owner operacional | Aprovação explícita, Playbook aprovado, permissões e evidências |
| Active | Suspended | Risco, incidente ou violação identificada | Owner, Segurança, Governança ou Auditoria | Motivo, impacto, evidências e contenção |
| Suspended | Active | Reavaliação concluída e risco tratado | Aprovador e owner operacional | Nova avaliação, validação e aceite humano |
| Active | Deprecated | Substituição ou transição aprovada | Governança e owner | Plano de transição |
| Approved | Deprecated | Agente aprovado não será ativado | Governança e owner | Justificativa |
| Deprecated | Archived | Encerramento aprovado | Governança, owner e produto quando aplicável | Evidência de encerramento e histórico preservado |
| Suspended | Deprecated | Reativação não recomendada | Governança e owner | Análise de impacto |
| Suspended | Archived | Encerramento definitivo | Governança, Segurança ou Auditoria, conforme risco | Evidências, decisão e plano de comunicação |
| Archived | Review | Reabertura excepcional formalmente aprovada | Governança, Arquitetura, Segurança, owner e aprovador redefinidos | Justificativa, análise de impacto, nova versão, validação e decisão registrada |

Regras:

- nenhuma transição deve ocorrer sem rastreabilidade;
- ativação exige aprovação explícita;
- suspensão deve registrar motivo;
- reativação exige nova avaliação;
- arquivamento é definitivo, salvo decisão formal excepcional;
- agentes `Deprecated` não devem receber novas funcionalidades;
- agentes `Archived` não podem executar.

`Archived` é estado terminal padrão. Um agente `Archived` somente PODE ser reaberto por exceção formal quando houver:

- necessidade formalmente justificada;
- ausência de alternativa mais adequada;
- avaliação arquitetural;
- avaliação de segurança;
- análise de impacto;
- revisão de documentos, permissões, dependências e riscos;
- owner e aprovador novamente definidos;
- nova aprovação explícita;
- nova evidência de validação;
- registro completo da decisão.

A reabertura NÃO apaga histórico anterior, NÃO reutiliza versões ou evidências antigas como se fossem atuais, DEVE gerar nova versão, DEVE registrar data, justificativa, responsáveis e aprovações, e normalmente retorna o agente para `Review` ou `Approved`, nunca diretamente para `Active`.

## 9. Critérios mínimos para aprovação

Um agente só pode alcançar `Approved` quando possuir:

- ID oficial;
- nome oficial;
- documento individual;
- owner;
- aprovador;
- escopo;
- limitações;
- classificação;
- nível de risco;
- produtos compatíveis;
- revisão arquitetural;
- validações documentais;
- histórico inicial.

Se qualquer item obrigatório estiver ausente, o agente DEVE permanecer em `Draft` ou `Review`.

## 10. Critérios mínimos para ativação

Um agente só pode alcançar `Active` quando possuir:

- status `Approved`;
- owner ativo;
- versão definida;
- ao menos um Playbook aprovado;
- permissões explícitas;
- ambientes permitidos;
- limites operacionais;
- mecanismos de interrupção;
- evidências de validação;
- processo de supervisão;
- critérios de suspensão;
- aceite humano responsável.

Aprovação documental NÃO significa ativação operacional.

## 11. Suspensão

Causas de suspensão:

- incidente;
- risco elevado;
- inconsistência documental;
- comportamento inesperado;
- ausência de owner;
- permissão inválida;
- dependência indisponível;
- violação de Policy;
- uso fora do escopo;
- falha de segurança;
- evidência insuficiente.

Podem suspender um agente, conforme risco e escopo:

- Owner do agente;
- Aprovador;
- Segurança;
- Governança;
- Auditoria;
- Owner do produto afetado.

Ao suspender, o registro DEVE incluir:

- motivo;
- agente afetado;
- status anterior;
- status novo;
- responsável;
- aprovador ou autoridade de suspensão;
- data;
- execuções interrompidas;
- evidências preservadas;
- impacto em produtos;
- requisitos para reativação.

Execuções em andamento DEVEM ser interrompidas quando houver risco de dano, exposição, violação de Policy, uso fora do escopo ou evidência insuficiente.

Reativação exige nova avaliação, validação proporcional ao risco, revisão humana e aceite explícito.

## 12. Descontinuação e arquivamento

Agentes `Deprecated` permanecem registrados. Agentes `Archived` permanecem rastreáveis.

Regras:

- IDs não são removidos;
- histórico não é apagado;
- substituições devem apontar para o novo agente;
- dependências devem ser identificadas;
- produtos consumidores devem receber plano de transição quando aplicável;
- agente arquivado não pode executar;
- agente depreciado não deve receber novas capacidades.

## 13. Versionamento

O registro DEVE diferenciar:

- versão do documento do agente;
- versão da implementação, quando existir;
- versão do registro;
- compatibilidade entre versões.

Tipos de mudança:

| Tipo | Definição | Exige nova revisão |
| --- | --- | --- |
| Maior | Altera identidade, responsabilidade, risco, permissões ou escopo principal | Sim |
| Menor | Adiciona capacidade compatível sem alterar identidade ou risco principal | Quando impactar produto, risco ou permissão |
| Corretiva | Corrige erro documental sem alterar comportamento ou governança | Revisão proporcional |

Mudança substancial de identidade, responsabilidade ou risco PODE justificar novo agente e novo ID, em vez de apenas nova versão.

Novo ID DEVE ser usado quando:

- a missão central mudar;
- o domínio mudar;
- o risco aumentar materialmente;
- a responsabilidade principal for substituída;
- o agente antigo precisar permanecer rastreável para compatibilidade.

### Sucessão de agentes

Agente sucessor é o novo agente que assume total ou parcialmente responsabilidades de um agente `Deprecated` ou `Archived`.

Regras:

- o agente sucessor deve possuir ID próprio;
- o sucessor não herda automaticamente permissões, aprovações, riscos ou ambientes do agente anterior;
- a relação de sucessão deve ser bidirecionalmente rastreável quando possível;
- o motivo da sucessão deve ser registrado;
- uma sucessão pode ser total ou parcial;
- um agente pode possuir mais de um sucessor em caso de decomposição de responsabilidades;
- o termo `Agente sucessor` DEVE ser usado para continuidade formal de identidade funcional.

## 14. Governança

| Papel | Responsabilidades |
| --- | --- |
| Owner do agente | Mantém missão, escopo, permissões, riscos, lifecycle, incidentes e revisões. |
| Aprovador | Autoriza aprovação, ativação, exceções, reativação e arquivamento quando aplicável. |
| Arquitetura | Avalia coerência estrutural, fronteiras, duplicidade e impacto na KEP. |
| Engenharia | Avalia aderência à KES, qualidade, validação e práticas de engenharia. |
| Segurança | Avalia dados, segredos, acessos, ambientes, classificação e riscos. |
| Governança | Mantém integridade do registro, status, histórico, auditoria e cadência de revisão. |
| Produto | Autoriza uso no contexto do produto e preserva regras locais. |
| Operações | Avalia execução, ambientes, interrupção, evidências e continuidade. |
| Auditoria | Verifica conformidade, evidências, desvios, incidentes e integridade histórica. |

Separações obrigatórias:

- responsabilidade documental não equivale a responsabilidade operacional;
- responsabilidade operacional não equivale a aprovação;
- aprovação documental não equivale a ativação;
- compatibilidade com produto não equivale a autorização de uso;
- execução específica não pertence ao registro.

### Segregação de funções

Agentes classificados como risco `Alto` ou `Crítico` NÃO DEVEM depender de uma única pessoa ou função para:

- definição;
- aprovação;
- ativação;
- concessão de permissões;
- supervisão;
- revisão;
- suspensão;
- reativação.

Quando aplicável:

- o Owner não deve ser o único Aprovador;
- quem implementa não deve aprovar isoladamente a própria implementação;
- quem solicita acesso de alto risco não deve ser o único responsável por concedê-lo;
- reativação após incidente deve exigir revisão independente;
- exceções exigem justificativa formal, aprovação explícita e evidência.

Essa regra aplica os princípios de segregação de funções, menor privilégio, revisão independente, rastreabilidade e supervisão humana.

## 15. Relação com Playbooks

Agentes executam Playbooks.

Regras:

- Playbooks não criam agentes;
- Playbooks não concedem permissões;
- somente Playbooks aprovados podem ser associados a agentes `Active`;
- um agente pode possuir vários Playbooks;
- um Playbook pode ser compatível com vários agentes;
- o registro deve apontar para os Playbooks aprovados;
- execuções específicas não pertencem ao registro;
- evidências de execução pertencem à instância de execução, não ao registro.

## 16. Relação com produtos

Um agente pode ser compatível com vários produtos.

Regras:

- compatibilidade não significa autorização automática;
- cada produto mantém regras locais;
- permissões devem ser concedidas por contexto;
- produtos não podem alterar silenciosamente a identidade do agente;
- especializações de produto devem permanecer rastreáveis;
- código, dados, configurações e segredos de produto não pertencem ao registro da KEP;
- o AutoBody ERP e produtos futuros devem consumir agentes conforme baseline, autorização e governança aplicáveis.

## 17. Relação com ambientes

Ambientes reconhecidos:

- local;
- desenvolvimento;
- teste;
- homologação;
- staging;
- produção;
- ambiente restrito;
- ambiente externo.

Regras:

- autorização é específica por ambiente;
- acesso à produção exige controles adicionais;
- compatibilidade com um ambiente não significa acesso permanente;
- permissões temporárias devem possuir escopo, justificativa, aprovador, início, expiração e evidência;
- ambiente externo exige validação de segurança, classificação e propriedade intelectual.

## 18. Classificação

Classificações operacionais possíveis:

| Classificação | Definição |
| --- | --- |
| Plataforma | Agente voltado à própria KEP. |
| Framework | Agente ligado a framework interno da KEP. |
| Produto | Agente ligado a produto consumidor específico ou conjunto de produtos. |
| Experimental | Agente em controle formal, ainda sem maturidade operacional. |
| Externo controlado | Agente ou ferramenta externa reconhecida formalmente e governada pela KEP. |
| Legado | Agente preservado por compatibilidade, transição ou histórico. |

A classificação operacional não substitui a classificação da informação definida pelas Policies.

## 19. Níveis de risco e criticidade operacional

### Nível de risco

Nível de risco representa a exposição associada às capacidades, permissões, dados, ambientes, autonomia, reversibilidade e impacto das ações do agente.

| Risco | Características | Exigência mínima |
| --- | --- | --- |
| Baixo | Consulta, leitura, síntese ou documentação sem impacto operacional | Evidências básicas e owner definido |
| Médio | Edição documental, validação não destrutiva, análise com decisão sugerida | Revisão proporcional, diff quando aplicável e registro de evidências |
| Alto | Produto, segurança, dados sensíveis, automação, Git, banco, dependências ou mudança normativa | Revisão humana obrigatória, aprovação explícita e evidências completas |
| Crítico | Produção, segredos, dados restritos, ação destrutiva, release, incidente ou impacto amplo | Autorização explícita, supervisão independente, rollback ou contenção e auditoria |

Risco deve considerar:

- autonomia;
- permissões;
- dados acessados;
- ambientes;
- reversibilidade;
- impacto;
- necessidade de supervisão;
- exigência de evidências.

Agente de risco alto ou crítico NÃO DEVE operar sem owner ativo, Playbook aprovado, evidência de validação e autorização explícita.

### Criticidade operacional

Criticidade operacional representa a importância do agente para a continuidade de processos, produtos ou serviços.

| Criticidade operacional | Definição |
| --- | --- |
| Não crítico | Ausência do agente não afeta continuidade relevante. |
| Baixa | Ausência causa inconveniência ou retrabalho limitado. |
| Moderada | Ausência afeta processo recorrente, mas há alternativa manual viável. |
| Alta | Ausência afeta continuidade relevante de plataforma, produto ou operação. |
| Essencial | Ausência compromete continuidade crítica ou capacidade operacional relevante. |

Regras:

- um agente pode ter baixo risco e alta criticidade;
- um agente pode ter alto risco e baixa criticidade;
- risco e criticidade operacional DEVEM ser avaliados separadamente;
- criticidade não concede permissões;
- risco não representa sozinho a importância operacional.

## 20. Registro de alterações

Toda alteração de registro DEVE registrar:

- agente afetado;
- campo alterado;
- valor anterior;
- valor novo;
- justificativa;
- responsável;
- aprovador;
- data;
- evidência;
- referência a incidente, revisão ou decisão, quando aplicável.

Alterações sem evidência NÃO DEVEM ser aceitas.

## 21. Integridade do registro

Controles obrigatórios:

- impedir duplicação de IDs;
- impedir agentes ativos sem owner;
- impedir referências para documentos inexistentes;
- impedir associação com Playbooks não aprovados;
- impedir versões inconsistentes;
- impedir status incompatíveis;
- impedir risco e criticidade operacional tratados como o mesmo campo;
- impedir agentes `Alto` ou `Crítico` sem segregação de funções;
- impedir agentes `Archived` reabertos sem processo formal;
- impedir relações de sucessão sem justificativa;
- impedir sucessores inexistentes;
- impedir datas obrigatórias ausentes;
- impedir ambientes não autorizados;
- impedir produtos inexistentes;
- impedir remoção de histórico;
- impedir alterações sem evidência.

Toda revisão do registro DEVE verificar consistência entre catálogo, documento do agente, Playbooks, produtos, permissões, ambientes e status.

## 22. Matriz oficial do registro

A matriz abaixo está vazia intencionalmente nesta versão inicial. Nenhum agente concreto é registrado neste documento.

| Agent ID | Nome oficial | Categoria | Domínio | Status | Versão atual | Classificação | Nível de risco | Criticidade operacional | Owner | Aprovador | Documento do agente | Playbooks aprovados | Produtos compatíveis | Ambientes permitidos | Data de registro | Data de aprovação | Data de ativação | Data de suspensão | Data de descontinuação | Data de arquivamento | Última revisão | Próxima revisão | Agente sucessor | Motivo da substituição | Motivo de suspensão, descontinuação ou arquivamento | Evidência da alteração mais recente | Observações |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

A ausência de agentes concretos é intencional nesta versão inicial. A inclusão futura de qualquer agente exige documento individual, owner, aprovador, revisão e evidência.

Uma implementação estruturada futura PODE separar esses dados em registros próprios, desde que preserve todos os campos normativos definidos neste documento.

## 23. Critérios de qualidade

Toda entrada deve ser:

- completa;
- verificável;
- atualizada;
- não ambígua;
- referenciada;
- auditável;
- coerente com o catálogo;
- coerente com o documento do agente;
- coerente com os Playbooks;
- coerente com o produto;
- compatível com KAF, KES e Policies aplicáveis.

## 24. Auditoria

Verificações periódicas DEVEM procurar:

- agentes sem owner;
- agentes sem aprovador;
- revisões vencidas;
- próxima revisão vencida;
- documentos ausentes;
- Playbooks inválidos;
- agentes ativos sem evidência operacional;
- permissões expiradas;
- criticidade operacional não classificada;
- risco e criticidade tratados como se fossem o mesmo campo;
- agentes `Alto` ou `Crítico` sem segregação de funções;
- agentes `Archived` reabertos sem processo formal;
- sucessores inexistentes;
- relações de sucessão sem justificativa;
- datas obrigatórias ausentes;
- evidência da última alteração ausente;
- produtos incompatíveis;
- agentes suspensos ainda em uso;
- agentes `Deprecated` recebendo funcionalidades;
- agentes `Archived` ainda referenciados operacionalmente;
- IDs duplicados;
- status incompatíveis;
- alterações sem evidência.
- divergência entre matriz Markdown e futura representação estruturada.

## 25. Diagramas ASCII

### Relação entre artefatos

```text
AGENT_CATALOG
      │
      ▼
AGENT_TEMPLATE
      │
      ▼
Documento do Agente
      │
      ▼
AGENT_REGISTRY
      │
      ▼
Agente autorizado
      │
      ▼
Playbook aprovado
      │
      ▼
Execução
```

### Lifecycle do agente

```text
Proposed
   ↓
Draft
   ↓
Review
   ↓
Approved
   ↓
Active
   ↓
Suspended
   ↓
Deprecated
   ↓
Archived
```

### Processo de ativação

```text
Documento do agente
      ↓
Revisão técnica e governança
      ↓
Approved
      ↓
Playbook aprovado + permissões + ambientes + owner ativo
      ↓
Aceite humano responsável
      ↓
Active
```

### Processo de suspensão

```text
Risco, incidente ou violação
      ↓
Suspensão registrada
      ↓
Execuções interrompidas quando aplicável
      ↓
Evidências preservadas
      ↓
Reavaliação humana
      ↓
Active / Deprecated / Archived
```

### Processo de arquivamento

```text
Deprecated ou Suspended sem reativação
      ↓
Impactos e dependências avaliados
      ↓
Produtos consumidores comunicados quando aplicável
      ↓
Substituto registrado quando houver
      ↓
Archived
      ↓
Histórico preservado
```

## 26. Anti-patterns

São proibidos:

- usar o catálogo como registro;
- registrar agente sem documento;
- ativar agente sem owner;
- ativar agente sem Playbook;
- reutilizar ID;
- apagar agente arquivado;
- ocultar suspensão;
- alterar status sem evidência;
- tratar compatibilidade como autorização;
- considerar aprovação documental como operação ativa;
- criar agentes duplicados para pequenas variações de tarefa;
- transformar prompts isolados em agentes registrados;
- registrar ferramenta externa sem governança formal;
- registrar agente `Active` sem ambiente permitido;
- associar Playbook não aprovado a agente `Active`.

## 27. Exemplo ilustrativo

```text
EXEMPLO
NÃO NORMATIVO
NÃO APROVADO
SOMENTE REFERÊNCIA
```

O exemplo abaixo ilustra formato visual. Ele NÃO registra agente concreto e NÃO deve ser copiado para a matriz oficial.

| Campo | Exemplo |
| --- | --- |
| Agent ID | AGT-EXM-999 |
| Nome oficial | Agente Exemplo de Registro |
| Status | Proposed |
| Versão atual | 0.0.0 |
| Classificação | Experimental |
| Risco | Baixo |
| Owner | Governança de exemplo |
| Documento do agente | Documento ilustrativo inexistente |
| Playbooks aprovados | Nenhum |
| Produtos compatíveis | Nenhum |
| Observação | Exemplo não normativo, não aprovado e somente referência. |

## 28. Evoluções futuras

O Markdown é a representação inicial, documental e legível por humanos do Registro Oficial de Agentes. Ele é adequado para a fase atual de maturidade da KEP, mas não deve ser considerado necessariamente o formato operacional definitivo.

O modelo normativo deste registro DEVE permanecer independente da representação física.

Possibilidades futuras, sem criação de novos artefatos nesta versão:

- registro estruturado em YAML ou JSON;
- banco de dados;
- catálogo governado;
- API;
- validação automática;
- geração de dashboards;
- integração com CI;
- alertas de revisão vencida;
- integração com incidentes;
- integração com métricas;
- verificação de compatibilidade;
- trilha de auditoria automatizada;
- assinatura ou hash de documentos;
- consultas automatizadas;
- geração automática da visualização Markdown.

Essas evoluções NÃO concedem permissões, NÃO ativam agentes e NÃO substituem governança humana.

Uma migração futura para formato estruturado DEVE:

- preservar IDs;
- preservar histórico;
- preservar evidências;
- preservar relações de sucessão;
- preservar lifecycle;
- manter versão legível por humanos;
- evitar múltiplas fontes concorrentes de verdade.

Quando surgir um formato estruturado oficial, DEVE existir regra explícita indicando qual representação é autoritativa e quais representações são apenas projeções.

## 29. Histórico

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.1 | 2026-07-17 | Ampliação da matriz oficial, separação entre risco e criticidade operacional, segregação de funções para agentes Alto e Crítico, processo excepcional de reabertura de Archived, padronização do termo Agente sucessor, definição do Markdown como representação inicial e preparação para futura representação estruturada validável. |
| 0.1.0 | 2026-07-17 | Modelo inicial do registro oficial de agentes, lifecycle dos agentes, regras de identificação, critérios de aprovação e ativação, suspensão, descontinuação, arquivamento, governança e matriz oficial vazia. |
