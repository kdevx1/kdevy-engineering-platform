# Revisão Arquitetural do AGENT_INCIDENT_REGISTER

## Controle da revisão

| Campo | Valor |
| --- | --- |
| Documento revisado | `architecture/AGENT_INCIDENT_REGISTER.md` |
| Tipo | Revisão arquitetural completa |
| Classificação | Interno |
| Data | 2026-07-18 |
| Revisor | Chief AI Governance Architect |
| Escopo | Registro de incidentes de agentes, lifecycle, evidências, governança, auditoria, produtos, ambientes e automação futura |
| Decisão sugerida | Aprovar com ajustes |
| Nota geral | 8,3 / 10 |

## 1. Resumo executivo

O `AGENT_INCIDENT_REGISTER.md` estabelece uma boa fundação normativa para registrar incidentes e near misses relacionados a agentes da KDEVY Engineering Platform.

O documento diferencia incidente, near miss, problema e mudança; define tipos, severidade, prioridade, criticidade operacional, lifecycle, critérios de abertura, investigação, evidências, contenção, mitigação, recuperação, encerramento, governança, auditoria e matriz oficial vazia.

A decisão sugerida é **Aprovar com ajustes**. O documento está maduro conceitualmente, mas antes do commit deve fortalecer cadeia de custódia, escalonamento, reabertura, campos da matriz oficial e auditoria de incidentes abertos por tempo excessivo.

## 2. Clareza conceitual

A separação entre conceitos está clara:

| Conceito | Definição no documento | Avaliação |
| --- | --- | --- |
| Incidente | Evento confirmado que afetou ou poderia afetar agente, produto, ambiente ou processo | Clara |
| Near Miss | Evento interrompido antes de causar impacto operacional | Clara |
| Problema | Causa raiz persistente que pode originar incidentes | Clara |
| Mudança | Alteração planejada para reduzir recorrência | Clara |

Ponto de atenção: "incidente confirmado que poderia afetar" pode parecer próximo de near miss. A diferença está razoável, mas recomenda-se reforçar que Near Miss é evento interrompido antes de impacto e Incidente inclui impacto ocorrido ou exposição confirmada com potencial material.

## 3. Compatibilidade

### AGENT_FRAMEWORK_MODEL

Compatível. O registro aplica rastreabilidade, evidências, supervisão humana, preservação de worktree, segurança e separação entre execução e aprovação.

### AGENT_REGISTRY

Compatível. Incidentes podem gerar suspensão, reativação condicionada, depreciação, arquivamento, alteração de risco, criticidade, owner, aprovador, permissões ou ambientes.

### AGENT_TEMPLATE

Compatível. O registro respeita owner, aprovador, risco, permissões, lifecycle, incidentes e validações.

### AGENT_PLAYBOOK_TEMPLATE

Compatível. O registro considera execução de Playbook como origem possível de incidentes e preserva que Playbook não é incidente por si só.

### PLATFORM_MODEL

Compatível. Mantém separação entre KEP, agentes, produtos e ambientes.

### KNOWLEDGE_SYSTEM_MODEL

Compatível. O registro preserva conhecimento histórico, operacional e avaliativo.

### KEP_MASTER_ROADMAP

Compatível. Materializa o componente futuro de incidentes do AI Framework sem implementar automação prematura.

### KES-0000

Compatível. A KEP permanece proprietária, interna e separada de produtos consumidores.

### KES-0001

Compatível. Reforça rastreabilidade, IA supervisionada, validação, segurança, propriedade intelectual e preservação de trabalho existente.

### Policies aplicáveis

Compatível. O documento preserva classificação da informação, segurança, propriedade intelectual e licenciamento como limites.

## 4. Tipos de incidente

As categorias mínimas são suficientes para primeira versão:

- Operacional;
- Segurança;
- Governança;
- Documentação;
- Execução;
- Integração;
- Produto;
- Ambiente;
- Evidências;
- Compliance;
- Near Miss.

Sobreposições aceitáveis:

- Segurança e Compliance podem se sobrepor em exposição de dados ou classificação.
- Execução e Operacional podem se sobrepor em falha durante rotina.
- Produto e Integração podem se sobrepor quando contrato entre KEP e produto falha.

Lacuna recomendada: incluir tipo `Dados` em versão futura ou tratar explicitamente dados como subcategoria de Segurança/Produto/Compliance.

## 5. Severidade

A severidade está consistente e separada de prioridade, criticidade operacional e risco.

Pontos fortes:

- considera impacto real e potencial;
- inclui exigência mínima por severidade;
- severidade crítica exige contenção, escalonamento, auditoria, recuperação e aprovação formal.

Lacuna: falta matriz de exemplo para cruzar severidade com prioridade e criticidade operacional.

## 6. Prioridade

Prioridade está bem definida como urgência de resposta.

Ponto fraco: as definições P1-P4 mencionam urgência, mas ainda não consideram explicitamente dependências bloqueadas ou janela de risco. Recomenda-se incluir dependência crítica e tempo de exposição como fatores de prioridade.

## 7. Criticidade operacional

A criticidade operacional está definida corretamente e não é confundida com risco.

Pontos fortes:

- trata continuidade operacional;
- não concede permissões;
- não substitui severidade.

Melhoria recomendada: declarar que criticidade operacional pode elevar prioridade mesmo quando severidade inicial for média.

## 8. Lifecycle

O lifecycle principal é claro:

```text
Detected → Triaged → Investigating → Contained → Mitigated → Resolved → Closed
```

Estados alternativos `Cancelled`, `Duplicate` e `False Positive` estão adequados.

Lacunas:

- não há estado explícito `Reopened`;
- não há matriz de transições permitidas;
- não há critério para pular `Contained` quando não houver impacto a conter;
- `Contained` e `Mitigated` podem ser confundidos em incidentes simples.

Essas lacunas não invalidam o modelo, mas devem ser tratadas antes do commit para evitar ambiguidade operacional.

## 9. Critérios de abertura

Os critérios são objetivos e suficientemente amplos.

Ponto forte: recomenda abrir registro preliminar na dúvida, reduzindo risco de perda de near misses.

## 10. Critérios de investigação

Os critérios são bons.

Incluem:

- preservação de evidências;
- sequência de eventos;
- fatos, inferências e hipóteses;
- agente, produto, ambiente e Playbook;
- permissões e autorizações;
- logs, diffs, comandos e validações;
- causa raiz ou provável;
- recorrência;
- recomendações.

Lacuna: falta processo explícito de cadeia de custódia.

## 11. Evidências

As evidências contemplam:

- logs;
- `git status`;
- diff;
- `git diff --check`;
- comandos;
- builds;
- testes;
- hashes;
- rollback;
- aprovações;
- documentos;
- capturas;
- registros de recuperação.

Boa proporcionalidade por severidade.

Lacuna obrigatória: cadeia de custódia ainda não aparece como processo. Há preservação de evidências, mas falta registrar origem, integridade, responsáveis, alterações e armazenamento.

## 12. Cadeia de custódia

Não existe seção formal de cadeia de custódia.

Recomenda-se incluir processo mínimo com:

- origem da evidência;
- responsável pela coleta;
- data/hora da coleta;
- local de armazenamento;
- classificação da informação;
- hash ou referência de integridade quando aplicável;
- alterações realizadas na evidência;
- responsável por cada acesso ou alteração;
- justificativa para descarte ou impossibilidade de coleta.

Essa é a principal lacuna antes do commit.

## 13. Governança

A separação de responsabilidades está boa.

Papéis cobertos:

- Owner do incidente;
- Investigador;
- Arquitetura;
- Engenharia;
- Segurança;
- Governança;
- Produto;
- Auditoria.

Ponto forte: investigação, aprovação e encerramento devem ser separados em severidade alta ou crítica.

Lacuna: falta escalonamento formal por severidade, prioridade, ambiente ou exposição.

## 14. Escalonamento

Critérios formais de escalonamento ainda são insuficientes.

O documento menciona escalonamento em severidade crítica e governança, mas não define quando escalar para Segurança, Produto, Auditoria ou Governança.

Deve incluir escalonamento obrigatório para:

- severidade alta ou crítica;
- produção;
- ambiente restrito;
- dados sensíveis;
- segredo ou credencial;
- violação de Policy;
- agente Active que precise ser suspenso;
- recorrência;
- ausência de owner;
- evidência comprometida.

## 15. Contenção

Contenção está clara.

Pontos fortes:

- suspender agente;
- interromper execução;
- revogar permissão temporária;
- isolar ambiente;
- bloquear Playbook;
- preservar worktree;
- impedir commit, push ou release.

## 16. Mitigação

Mitigação está clara e corretamente separada de recuperação.

Ponto forte: exige motivo, responsável, evidência e risco residual.

## 17. Recuperação

Recuperação está clara.

Ponto forte: não permite reutilizar evidência antiga como atual.

Lacuna: poderia exigir validação independente quando severidade for alta ou crítica.

## 18. Encerramento

Critérios mínimos estão bons.

Lacuna obrigatória: falta processo de reabertura. O texto diz que `Closed` não deve ser alterado sem reabertura ou correção auditável, mas não define critérios, autoridade, evidência e novo status.

## 19. Ações corretivas

As ações corretivas são rastreáveis.

Incluem incidente relacionado, causa tratada, owner, aprovador, evidência, validação e risco residual.

## 20. Ações preventivas

As ações preventivas se integram com melhoria contínua.

Pontos fortes:

- Policy;
- KAF;
- Playbook;
- permissões;
- evidências;
- automação futura;
- treinamento;
- auditoria recorrente.

## 21. Lições aprendidas

Lições aprendidas alimentam explicitamente:

- Playbooks;
- Policies;
- registros;
- documentos;
- governança.

Lacuna: poderia citar `AGENT_REGISTRY`, `AGENT_FRAMEWORK_MODEL` e frameworks internos de forma mais explícita.

## 22. Relação com AGENT_REGISTRY

Consistente.

O registro de incidentes pode causar mudanças no `AGENT_REGISTRY`, mas não o substitui.

## 23. Relação com Playbooks

Consistente.

Execuções específicas podem gerar incidentes; Playbook não é incidente por si só.

## 24. Relação com Produtos

Consistente.

Produto consumidor é preservado em seu contexto; código, dados, configurações e segredos não devem ser copiados para o registro.

## 25. Relação com Ambientes

Consistente.

Produção, restrito e externo exigem avaliação proporcional de segurança e governança.

## 26. Matriz oficial

A matriz oficial está vazia e corretamente não registra incidentes reais.

Campos atuais são bons, mas faltam:

- Data de triagem;
- Data de contenção;
- Data de resolução;
- Data de reabertura;
- Reaberto por;
- Status anterior;
- Severidade inicial;
- Severidade final;
- Prioridade inicial;
- Prioridade final;
- Canais ou stakeholders comunicados;
- Cadeia de custódia;
- Local das evidências;
- Problema relacionado;
- Mudança relacionada;
- Registro do agente afetado;
- Aprovador de encerramento.

## 27. Auditoria

A auditoria cobre:

- incidentes sem owner;
- incidentes sem investigador;
- evidências ausentes;
- status incompatível;
- `Closed` sem encerramento aprovado;
- near misses ignorados;
- ações corretivas vencidas;
- ações preventivas ausentes;
- agentes suspensos ainda executando;
- incidentes críticos sem auditoria;
- evidências descartadas sem justificativa;
- recorrência sem problema registrado.

Lacunas:

- incidentes abertos por tempo excessivo;
- reaberturas;
- recorrências por agente, produto, Playbook ou ambiente;
- ações preventivas vencidas;
- ausência de cadeia de custódia.

## 28. Anti-patterns

Anti-patterns estão bons e úteis.

Melhorias recomendadas:

- proibir fechar incidente sem cadeia de custódia mínima;
- proibir reabrir sem registro formal;
- proibir alterar severidade final sem justificativa;
- proibir usar mitigação temporária como ação corretiva definitiva sem aceite.

## 29. Evoluções futuras

Coerentes.

Incluem CI, dashboards, alertas, YAML/JSON, APIs, métricas, Change Register, Problem Register, validação de IDs e trilha de auditoria.

Lacuna: banco de dados e geração de visualização Markdown poderiam ser citados.

## 30. Escalabilidade

O modelo conceitual suporta muitos incidentes, mas Markdown não escalará bem para centenas ou milhares de registros.

A matriz vazia é adequada para fase atual. Em escala, será necessário formato estruturado, validação automática, índices e dashboards.

## 31. Sustentabilidade

Sustentável como fundação documental.

Risco de longo prazo: sem schema estruturado, cadeia de custódia e automação, auditoria manual tende a ficar pesada.

## 32. Preparação para automação

Boa preparação conceitual para:

- YAML;
- JSON;
- APIs;
- dashboards;
- CI;
- métricas;
- alertas.

Melhorias futuras:

- banco de dados;
- schema formal;
- validação de campos obrigatórios;
- geração automática de relatórios;
- correlação com Agent Registry, Problem Register e Change Register.

## 33. Princípios da KEP

| Princípio | Avaliação |
| --- | --- |
| Rastreabilidade | Forte |
| Auditabilidade | Boa, com lacuna de cadeia de custódia |
| Independência de fornecedor | Forte |
| Separação de responsabilidades | Forte |
| Evolução incremental | Forte |

## 34. Pontos fortes

- Boa distinção entre incidente, near miss, problema e mudança.
- Compatível com KAF, Agent Registry, Templates, KES e Policies.
- Tipos de incidente suficientes para primeira versão.
- Boa separação entre severidade, prioridade, criticidade e risco.
- Lifecycle claro.
- Evidências proporcionais à severidade.
- Contenção, mitigação e recuperação bem separadas.
- Governança com papéis distintos.
- Relações com agentes, Playbooks, produtos e ambientes claras.
- Matriz oficial vazia e sem incidentes reais.
- Anti-patterns úteis.

## 35. Pontos fracos

- Falta cadeia de custódia formal.
- Falta escalonamento formal.
- Falta processo de reabertura.
- Matriz oficial precisa de mais campos para auditoria real.
- Auditoria não cobre tempo excessivo aberto e reaberturas.
- Lifecycle não possui matriz de transições.
- Markdown não escalará para grande volume sem formato estruturado.

## 36. Riscos arquiteturais

### Evidência sem cadeia de custódia

Sem origem, integridade, responsável, alteração e armazenamento, evidências podem perder valor auditável.

### Reabertura ambígua

Incidentes `Closed` podem precisar reabrir, mas o processo não está definido.

### Escalonamento informal

Sem critérios formais, incidentes altos ou críticos podem depender de julgamento ad hoc.

### Matriz insuficiente em escala

A matriz atual é boa para fundação, mas insuficiente para histórico detalhado e automação.

## 37. Inconsistências

Não há inconsistências graves.

Inconsistências leves:

- `Closed` menciona reabertura, mas reabertura não é modelada.
- `Contained` e `Mitigated` podem parecer redundantes em incidentes simples.
- A matriz oficial não contém campos para datas intermediárias do lifecycle.

## 38. Burocracias desnecessárias

Não há burocracia excessiva para incidentes relevantes.

Para incidentes baixos ou near misses simples, o modelo pode ser pesado. Isso é aceitável se houver, no futuro, perfil resumido para baixa severidade sem reduzir rastreabilidade mínima.

## 39. Ajustes obrigatórios antes do commit

1. Adicionar seção de cadeia de custódia com origem, integridade, responsáveis, alterações, armazenamento, classificação e justificativa para descarte.
2. Adicionar critérios formais de escalonamento por severidade, prioridade, ambiente, dados, Policy, recorrência, owner ausente e evidência comprometida.
3. Adicionar processo de reabertura de incidente `Closed`, com autoridade, justificativa, evidência, novo status e preservação do histórico.
4. Adicionar matriz de transições permitidas do lifecycle, incluindo fluxos alternativos.
5. Expandir a matriz oficial com campos de triagem, contenção, resolução, reabertura, severidade/prioridade inicial e final, cadeia de custódia, local de evidências, problema relacionado, mudança relacionada e aprovador de encerramento.
6. Atualizar auditoria para cobrir incidentes abertos por tempo excessivo, reaberturas, recorrências e cadeia de custódia ausente.
7. Reforçar que `Contained` e `Mitigated` podem ser marcados como não aplicáveis com justificativa em incidentes simples ou false positives.

## 40. Melhorias recomendadas

- Criar perfil resumido para baixa severidade e near misses simples.
- Criar schema YAML/JSON futuro.
- Criar integração com Agent Registry.
- Criar integração com Problem Register e Change Register.
- Criar dashboard por severidade, agente, produto, Playbook e ambiente.
- Criar alertas de SLA/cadência de resposta.
- Criar métrica de recorrência por causa raiz.
- Criar relatório periódico de lições aprendidas.

## 41. Decisão

**Aprovar com ajustes.**

Justificativa: o documento é arquiteturalmente sólido e compatível com a KEP, mas precisa de cadeia de custódia, escalonamento, reabertura e matriz expandida antes de ser commitado como registro oficial.

## 42. Nota geral

**8,3 / 10**

A nota reflete boa maturidade normativa inicial, com lacunas operacionais importantes e corrigíveis.

## 43. Conclusão

O `AGENT_INCIDENT_REGISTER.md` é uma boa fundação para governança de incidentes de agentes.

Após os ajustes obrigatórios, deve ficar robusto o suficiente para rastrear incidentes reais com evidência auditável, governança clara e caminho de automação futura.
