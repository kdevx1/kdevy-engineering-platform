# Registro Oficial de Incidentes de Agentes da KDEVY Engineering Platform

## 1. Controle documental

| Campo | Valor |
| --- | --- |
| Documento | AGENT_INCIDENT_REGISTER |
| Versão | 0.1.1 |
| Status | Draft |
| Classificação | Interno |
| Owner | Governança da KEP |
| Aprovador | A definir pela governança da KEP |
| Última revisão | 2026-07-18 |
| Próxima revisão | A definir pela governança da KEP |
| Referências normativas | `architecture/AGENT_FRAMEWORK_MODEL.md`, `architecture/AGENT_REGISTRY.md`, `templates/AGENT_TEMPLATE.md`, `templates/AGENT_PLAYBOOK_TEMPLATE.md`, `architecture/PLATFORM_MODEL.md`, `architecture/KNOWLEDGE_SYSTEM_MODEL.md`, `architecture/KEP_MASTER_ROADMAP.md`, `specifications/KES-0000_MASTER_SPECIFICATION.md`, `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md`, `policies/`, `governance/`, `roadmap/` |
| Histórico | Versão 0.1.1 com ajustes pós-revisão arquitetural aplicados ao registro oficial de incidentes de agentes da KEP. |

## 2. Objetivo

Este documento define o Registro Oficial de Incidentes de Agentes da KDEVY Engineering Platform (KEP).

O registro estabelece o modelo normativo para registrar, classificar, investigar, conter, mitigar, recuperar, resolver, auditar e preservar incidentes relacionados a agentes da plataforma.

Esta versão NÃO registra incidentes reais. Ela cria apenas o modelo oficial, as regras de governança e uma matriz oficial vazia.

O registro existe para:

- preservar rastreabilidade de incidentes e near misses;
- apoiar investigação e mitigação;
- impedir perda ou ocultação de evidências;
- relacionar incidentes a agentes, produtos, ambientes, Playbooks e políticas;
- apoiar auditoria e melhoria contínua;
- diferenciar incidente, near miss, problema e mudança.

## 3. Escopo

Pertence a este registro:

- incidentes envolvendo agentes registrados ou candidatos formalmente controlados;
- near misses relacionados a agentes;
- falhas de execução de Playbooks por agentes;
- violações de Policy, KAF, KES ou critérios de produto;
- falhas de evidência, governança, ambiente, documentação ou integração;
- incidentes em produtos consumidores causados, ampliados ou identificados por agentes;
- incidentes suspensos, cancelados, duplicados, falsos positivos e encerrados.

Não pertence a este registro:

- mudanças planejadas sem incidente;
- problemas sem evento relacionado;
- tarefas comuns de execução;
- bugs de produto sem relação com agente;
- prompts isolados;
- scripts sem agente envolvido;
- auditorias sem evento;
- discussões informais sem registro mínimo.

## 4. Definições

### Incidente

Incidente é evento confirmado que afetou ou poderia afetar um agente, produto, ambiente ou processo.

Um incidente PODE envolver falha, violação, comportamento inesperado, ação fora de escopo, perda de evidência, exposição, instabilidade, interrupção ou risco material.

### Near Miss

Near Miss é evento interrompido antes de causar impacto operacional.

Near Miss DEVE ser registrado mesmo quando nenhum dano ocorreu, pois pode revelar fragilidade de governança, permissão, evidência, automação, Playbook ou processo.

### Problema

Problema é causa raiz persistente que pode originar um ou mais incidentes.

Problema NÃO é o mesmo que incidente. Um incidente é evento; um problema é causa ou condição recorrente.

### Mudança

Mudança é alteração planejada para eliminar ou reduzir recorrências.

Mudança NÃO DEVE ser registrada como incidente por si só. Mudanças podem nascer como ação corretiva ou preventiva derivada de incidente, near miss ou problema.

Esses conceitos possuem responsabilidades diferentes e NÃO DEVEM ser usados como sinônimos.

## 5. Tipos de incidente

| Tipo | Definição |
| --- | --- |
| Operacional | Afeta continuidade, execução, disponibilidade ou rotina de operação de agente. |
| Segurança | Envolve segredo, credencial, dado sensível, acesso indevido, exposição ou falha de controle. |
| Governança | Envolve violação de KAF, KES, Policy, aprovação, owner, status ou responsabilidade. |
| Documentação | Envolve documento incorreto, ausente, ambíguo, desatualizado ou conflitante. |
| Execução | Envolve falha ou desvio durante execução de tarefa, comando, Playbook ou automação autorizada. |
| Integração | Envolve falha de comunicação, contrato, API, dependência, ambiente externo ou produto consumidor. |
| Produto | Afeta produto consumidor, incluindo AutoBody ERP ou produtos futuros. |
| Ambiente | Afeta ambiente local, desenvolvimento, teste, homologação, staging, produção, restrito ou externo. |
| Evidências | Envolve ausência, perda, inconsistência, ocultação ou insuficiência de evidências. |
| Compliance | Envolve descumprimento de políticas, classificação, propriedade intelectual, licenciamento ou governança. |
| Near Miss | Evento interrompido antes de impacto operacional, mas com potencial de incidente. |

## 6. Severidade

Severidade representa impacto real ou potencial do evento.

| Severidade | Definição | Exigência mínima |
| --- | --- | --- |
| Baixa | Impacto limitado, reversível e sem exposição relevante | Registro, evidências básicas e análise proporcional |
| Média | Impacto moderado, retrabalho, falha de processo ou risco controlável | Investigação, owner, mitigação e revisão |
| Alta | Impacto relevante em produto, ambiente, segurança, dados, governança ou operação | Contenção, investigação formal, aprovação e ações corretivas |
| Crítica | Impacto amplo, produção, segredo, dado restrito, perda relevante, violação grave ou risco sistêmico | Contenção imediata, escalonamento, auditoria, recuperação e aprovação formal de encerramento |

Severidade DEVE considerar impacto real e impacto potencial.

## 7. Prioridade

Prioridade representa urgência de resposta.

| Prioridade | Definição |
| --- | --- |
| P1 | Resposta imediata necessária para conter impacto crítico ou risco de expansão. |
| P2 | Resposta rápida necessária para incidente alto ou risco relevante. |
| P3 | Resposta planejada para incidente médio ou baixo com impacto controlado. |
| P4 | Registro e acompanhamento sem urgência operacional imediata. |

Prioridade não substitui severidade. Um incidente pode ter severidade alta e prioridade menor quando já estiver contido.

## 7.1 Severidade e prioridade inicial e final

A classificação inicial representa a melhor avaliação disponível durante a triagem.

A classificação final representa o entendimento após investigação, contenção, mitigação, recuperação e revisão das evidências.

Regras:

- mudanças de severidade ou prioridade DEVEM ser justificadas;
- classificações anteriores NÃO DEVEM ser apagadas;
- redução de severidade ou prioridade exige evidência;
- aumento de severidade DEVE acionar reavaliação do escalonamento;
- diferenças relevantes entre classificação inicial e final DEVEM alimentar lições aprendidas e melhoria da triagem.

## 8. Criticidade operacional

Criticidade operacional representa a importância do agente, produto, ambiente ou processo afetado para continuidade operacional.

| Criticidade | Definição |
| --- | --- |
| Não crítica | Ausência ou falha não afeta continuidade relevante. |
| Baixa | Afeta processo pontual com alternativa simples. |
| Moderada | Afeta rotina recorrente com alternativa manual viável. |
| Alta | Afeta continuidade relevante de plataforma, produto ou operação. |
| Essencial | Afeta capacidade crítica de operação, segurança, produto ou governança. |

Criticidade operacional não concede permissões e não substitui severidade.

## 9. Relação entre risco e severidade

Risco representa exposição antes ou durante a ação. Severidade representa impacto real ou potencial do evento.

Regras:

- risco alto pode gerar incidente de baixa severidade se contido cedo;
- risco baixo pode gerar incidente de alta severidade se afetar processo crítico;
- severidade DEVE ser revisada quando novas evidências surgirem;
- near miss DEVE registrar risco potencial mesmo sem impacto ocorrido;
- classificação de risco do agente no `AGENT_REGISTRY` DEVE ser considerada, mas não determina sozinha a severidade do incidente.

## 10. Lifecycle do incidente

Fluxo principal:

```text
Detected
    │
    ▼
Triaged
    │
    ▼
Investigating
    │
    ▼
Contained
    │
    ▼
Mitigated
    │
    ▼
Resolved
    │
    ▼
Closed
```

Fluxos alternativos:

- `Cancelled`;
- `Duplicate`;
- `False Positive`.

| Estado | Definição |
| --- | --- |
| Detected | Evento identificado e registrado inicialmente. |
| Triaged | Evento classificado por tipo, severidade, prioridade e escopo. |
| Investigating | Investigação ativa, coleta de evidências e análise de causa. |
| Contained | Impacto isolado ou impedido de crescer. |
| Mitigated | Impacto reduzido por ação temporária ou definitiva. |
| Resolved | Causa tratada ou decisão de resolução aceita. |
| Closed | Encerramento aprovado com evidências, lições e ações registradas. |
| Cancelled | Registro cancelado por não atender critérios mínimos de incidente ou near miss. |
| Duplicate | Registro duplicado de incidente já existente. |
| False Positive | Evento investigado e confirmado como não incidente. |

Transições DEVEM possuir rastreabilidade. Incidente `Closed` NÃO DEVE ser alterado sem registro de reabertura ou correção auditável.

### Matriz de transições permitidas

| Origem | Destino | Condição | Autoridade necessária | Evidência obrigatória | Observações |
| --- | --- | --- | --- | --- | --- |
| Detected | Triaged | Evento possui registro mínimo para triagem | Owner do incidente ou Governança | Registro inicial e evidências iniciais | Primeira classificação deve ser registrada. |
| Triaged | Investigating | Classificação inicial concluída | Owner e Investigador | Tipo, severidade, prioridade, criticidade e investigador | Investigação deve preservar evidências. |
| Investigating | Contained | Impacto precisa ser interrompido ou limitado | Owner, Investigador ou Segurança conforme risco | Ação de contenção e evidências | Pode ser não aplicável com justificativa. |
| Investigating | Mitigated | Contenção não é aplicável e impacto pode ser reduzido diretamente | Owner e Investigador; Segurança quando aplicável | Justificativa para omitir contenção e evidência de mitigação | Exige aprovação proporcional ao risco. |
| Contained | Mitigated | Impacto contido e mitigação definida | Owner e Investigador | Evidência de contenção e ação de mitigação | Mitigação pode ser não aplicável com justificativa. |
| Mitigated | Resolved | Causa tratada ou decisão de resolução aceita | Owner, Investigador e aprovador quando aplicável | Evidência de mitigação, validação e risco residual | `Resolved` não significa `Closed`. |
| Resolved | Closed | Critérios de encerramento atendidos | Aprovador de encerramento | Evidências preservadas, lições, ações e aceite | Encerramento exige aprovação explícita. |
| Closed | Investigating | Reabertura formal exige nova investigação | Governança, Auditoria ou Segurança, conforme caso | Justificativa, nova evidência e plano de investigação | Mantém mesmo Incident ID e histórico. |
| Closed | Triaged | Reabertura formal exige nova triagem | Governança, Auditoria ou Segurança, conforme caso | Justificativa, nova classificação e vínculo com evidências anteriores | Nunca retorna diretamente para `Closed`. |
| Qualquer estado permitido antes de `Closed` | Cancelled | Registro deixa de ser aplicável por motivo formal | Owner e Governança | Justificativa, evidência e impacto da interrupção | Não deve ocultar near miss, incidente confirmado ou falha de processo. |
| Detected | Duplicate | Registro duplica incidente existente | Owner ou Governança | ID do incidente original | Histórico do duplicado deve apontar para o original. |
| Triaged | Duplicate | Triagem confirma duplicidade | Owner ou Governança | ID do incidente original | Não criar novo fluxo paralelo. |
| Qualquer estado aplicável antes de `Closed` | Duplicate | Duplicidade identificada após investigação parcial ou avanço do fluxo | Owner e Governança | ID do incidente original, justificativa e evidências já coletadas | Evidências úteis devem ser vinculadas ao incidente original. |
| Detected | False Positive | Evento não se confirma como incidente ou near miss | Owner ou Investigador | Evidência de falso positivo | Deve ser registrado para auditoria. |
| Triaged | False Positive | Triagem confirma falso positivo | Owner ou Investigador | Justificativa e evidência | Não apagar registro sem rastro. |

Transições proibidas:

- `Detected -> Closed`;
- `Triaged -> Closed` sem investigação;
- `Investigating -> Closed` sem resolução;
- `Closed -> Active` ou equivalente inexistente;
- salto de etapas sem justificativa;
- alteração silenciosa de status;
- retorno de status sem registro de motivo.

Etapas podem ser marcadas como não aplicáveis somente quando houver justificativa explícita e aprovação proporcional ao risco.

### Contained e Mitigated em casos simples

`Contained` e `Mitigated` são estados distintos.

`Contained` significa que a propagação ou continuidade do impacto foi interrompida ou limitada.

`Mitigated` significa que o impacto foi reduzido a um nível temporariamente aceitável.

Em incidentes simples ou sem propagação:

- `Contained` pode ser não aplicável;
- `Mitigated` pode ser não aplicável;
- ambas podem ser não aplicáveis;
- a não aplicação DEVE ser explicitamente justificada;
- o fluxo NÃO DEVE ser encurtado apenas por conveniência;
- severidade alta ou crítica exige revisão independente antes de omitir essas etapas.

### Reabertura de incidente Closed

`Closed` é estado terminal padrão.

Um incidente `Closed` somente PODE ser reaberto quando houver:

- nova evidência relevante;
- recorrência diretamente relacionada;
- causa raiz incorreta ou incompleta;
- ação corretiva comprovadamente ineficaz;
- impacto adicional não conhecido no encerramento;
- erro material no processo de investigação;
- determinação formal de Auditoria, Segurança ou Governança.

A reabertura DEVE exigir:

- justificativa formal;
- responsável pela solicitação;
- aprovação explícita;
- data e hora;
- nova classificação de severidade e prioridade;
- preservação do histórico anterior;
- vínculo com as evidências anteriores;
- novo plano de investigação;
- nova data-alvo;
- registro do motivo da reabertura.

O incidente NÃO volta diretamente para `Closed`. Ele normalmente retorna para `Investigating`, `Triaged` ou outro estado justificado. O encerramento anterior permanece registrado, contadores de reabertura devem ser preservados, múltiplas reaberturas devem acionar auditoria ou análise de problema, reabertura não cria novo Incident ID, e novo incidente só deve ser criado quando o evento não for continuação real do anterior.

## 11. Critérios de abertura

Um registro DEVE ser aberto quando houver:

- incidente confirmado;
- near miss;
- suspeita razoável de falha de agente;
- comportamento inesperado;
- violação de Policy, KAF, KES ou escopo autorizado;
- evidência ausente ou comprometida;
- uso fora do ambiente autorizado;
- acesso indevido ou suspeita de exposição;
- impacto em produto consumidor;
- interrupção ou falha de Playbook;
- suspeita de ação destrutiva, reversão indevida, commit, push ou alteração sem autorização.

Na dúvida, RECOMENDA-SE abrir registro preliminar e classificar durante triagem.

## 12. Critérios de classificação

Ao classificar, o responsável DEVE registrar:

- tipo de incidente;
- severidade;
- prioridade;
- criticidade operacional;
- agente envolvido;
- produto afetado;
- ambiente afetado;
- Playbook envolvido;
- evidências iniciais;
- impacto real;
- impacto potencial;
- status inicial;
- owner do incidente;
- investigador.

Classificação inicial PODE ser revisada conforme novas evidências.

## 13. Critérios de investigação

Investigação DEVE:

- preservar evidências antes de alterar estado;
- identificar sequência de eventos;
- separar fatos, inferências e hipóteses;
- identificar agente, produto, ambiente e Playbook envolvidos;
- avaliar permissões e autorizações;
- revisar logs, diffs, comandos e validações;
- identificar causa raiz ou causa provável;
- avaliar se há problema recorrente;
- recomendar contenção, mitigação, recuperação, ação corretiva e ação preventiva.

Investigação NÃO DEVE apagar histórico, ocultar falha ou responsabilizar sem evidência.

## 14. Evidências obrigatórias

Evidências DEVEM ser proporcionais à severidade.

| Evidência | Baixa | Média | Alta | Crítica |
| --- | --- | --- | --- | --- |
| Logs | Quando aplicável | Obrigatórios quando houver execução | Obrigatórios | Obrigatórios |
| Diffs | Quando houver alteração | Quando houver alteração | Obrigatórios quando houver alteração | Obrigatórios quando houver alteração |
| `git status` | Quando houver repositório | Obrigatório quando houver repositório | Obrigatório | Obrigatório |
| `git diff --check` | Quando houver alteração | Quando houver alteração | Obrigatório | Obrigatório |
| Comandos executados | Quando aplicável | Obrigatórios quando houver execução | Obrigatórios | Obrigatórios |
| Builds | Quando aplicável | Quando aplicável | Obrigatórios quando aplicável | Obrigatórios quando aplicável |
| Testes | Quando aplicável | Quando aplicável | Obrigatórios quando aplicável | Obrigatórios quando aplicável |
| Capturas | Quando útil | Quando útil | Quando útil | Quando útil |
| Documentos revisados | Quando aplicável | Obrigatórios quando aplicável | Obrigatórios | Obrigatórios |
| Hashes | Quando aplicável | Quando aplicável | Recomendados | Obrigatórios quando aplicável |
| Aprovações | Quando aplicável | Quando aplicável | Obrigatórias | Obrigatórias |
| Plano de rollback | Quando houver mudança reversível | Quando aplicável | Obrigatório quando aplicável | Obrigatório |
| Registros de recuperação | Quando houver recuperação | Quando houver recuperação | Obrigatórios | Obrigatórios |

Evidências não podem ser descartadas sem justificativa. Evidências sensíveis DEVEM respeitar classificação da informação e não devem expor segredos, credenciais, dados pessoais ou dados financeiros.

### Cadeia de custódia das evidências

A cadeia de custódia preserva origem, integridade, acesso, transferência e histórico de cada evidência relevante.

Cada evidência controlada DEVE registrar:

- ID único da evidência;
- tipo de evidência;
- origem;
- data e hora de coleta;
- responsável pela coleta;
- método de coleta;
- local original;
- local de armazenamento;
- classificação de acesso;
- hash ou mecanismo de integridade;
- responsáveis por transferência;
- histórico de acesso;
- histórico de alterações;
- justificativa de transformação;
- período de retenção;
- autorização de descarte.

Tipos de evidência:

| Tipo | Definição | Regra |
| --- | --- | --- |
| Evidência original | Fonte primária coletada ou preservada | DEVE ser preservada sempre que possível. |
| Cópia verificada | Reprodução validada da evidência original | PODE ser usada para análise, sem substituir o original. |
| Evidência derivada | Resultado produzido a partir da evidência original ou cópia verificada | DEVE apontar para a fonte usada. |
| Resumo ou interpretação | Leitura humana ou de IA sobre evidências | NÃO substitui a evidência fonte. |

Regras:

- evidências originais DEVEM ser preservadas;
- cópias de trabalho NÃO substituem evidências originais;
- transferências DEVEM ser rastreáveis;
- alterações em evidências DEVEM ser evitadas;
- quando transformação for necessária, a evidência original DEVE ser preservada;
- ausência de hash ou mecanismo de integridade DEVE ser justificada;
- acesso a evidências DEVE seguir privilégio mínimo;
- evidências sensíveis exigem controles compatíveis com a classificação da informação;
- descarte sem autorização e sem evidência de descarte é proibido.

### Processo formal de escalonamento

Escalonamento define quando um incidente deixa de ser tratado apenas no nível operacional e passa a exigir autoridade técnica, de produto, segurança, governança ou decisão executiva.

O escalonamento DEVE considerar:

- severidade;
- prioridade;
- criticidade operacional;
- risco;
- impacto;
- urgência;
- escopo;
- ambiente;
- dados afetados;
- violação de Policy;
- recorrência;
- ausência de contenção;
- tempo em aberto;
- dependências externas;
- risco reputacional, legal, regulatório ou de segurança.

| Nível | Autoridade | Prazo de comunicação | Evidência mínima | Decisões permitidas | Aprovação necessária | Frequência de atualização |
| --- | --- | --- | --- | --- | --- | --- |
| Nível 1 Operacional | Owner do incidente e Investigador | Conforme prioridade registrada | Registro inicial, classificação e evidências disponíveis | Triagem, investigação inicial, contenção local e solicitação de apoio | Owner do incidente | A cada mudança relevante ou prazo definido |
| Nível 2 Técnico ou de Produto | Engenharia, Arquitetura ou Produto | P1 imediato; P2 no mesmo ciclo operacional; P3/P4 conforme planejamento | Evidências técnicas, impacto em produto, ambiente e dependências | Ajuste técnico, mitigação, recomendação de mudança e bloqueio técnico proporcional | Responsável técnico ou de produto | Conforme risco e plano de resposta |
| Nível 3 Segurança ou Governança | Segurança e Governança | Imediato para segurança, dados, Policy ou governança material | Cadeia de custódia, classificação da informação, autorizações e impacto | Suspensão, restrição de acesso, exigência de auditoria, escalonamento crítico | Segurança ou Governança | Frequência definida pela severidade |
| Nível 4 Crítico ou Executivo | Governança ampliada, Segurança, Arquitetura e responsáveis executivos definidos | Imediato | Evidências preservadas, impacto amplo, risco residual, plano de contenção e comunicação | Contenção ampla, decisão de continuidade, comunicação formal, auditoria independente | Aprovação formal do nível crítico | Atualização recorrente até estabilização |

Regras:

- incidentes críticos DEVEM ser escalados imediatamente;
- ausência de impacto confirmado NÃO impede escalonamento quando o potencial for alto;
- near miss com alto potencial PODE ser escalado;
- rebaixamento de escalonamento exige justificativa e evidência;
- escalonamento NÃO substitui investigação;
- incidente amplo, crítico, em produção, com risco legal, dados sensíveis, risco sistêmico ou ausência de contenção DEVE chegar ao Nível 4.

## 15. Contenção

Contenção é ação imediata para impedir expansão de impacto.

Pode incluir:

- suspender agente;
- interromper execução;
- revogar permissão temporária;
- isolar ambiente;
- bloquear Playbook;
- preservar worktree;
- congelar mudança;
- impedir commit, push ou release;
- comunicar owner e governança.

Contenção DEVE preservar evidências e NÃO DEVE destruir histórico.

## 16. Mitigação

Mitigação reduz impacto antes da recuperação definitiva.

Mitigação PODE incluir:

- correção temporária;
- limitação de escopo;
- alteração de permissão;
- substituição operacional provisória;
- atualização documental emergencial;
- validação adicional;
- revisão humana ampliada.

Mitigação DEVE registrar motivo, responsável, evidência e risco residual.

## 17. Recuperação

Recuperação restaura estado aceitável.

Recuperação DEVE registrar:

- estado anterior conhecido;
- ação executada;
- validação de resultado;
- evidências de recuperação;
- pendências;
- risco residual;
- responsável;
- aprovação quando aplicável.

Recuperação NÃO DEVE reutilizar evidência antiga como se fosse atual.

## 18. Encerramento

Um incidente só PODE ser encerrado quando:

- impacto cessou ou foi controlado em nível aceito;
- recuperação foi verificada;
- investigação foi concluída ou justificadamente limitada;
- severidade e prioridade finais foram registradas;
- evidências obrigatórias foram preservadas;
- cadeia de custódia foi registrada quando aplicável;
- causa raiz, causa provável ou limitação de análise foi registrada;
- contenção, mitigação e recuperação foram avaliadas;
- ações corretivas e preventivas foram definidas ou justificadas como não aplicáveis;
- riscos residuais foram registrados;
- problema ou mudança relacionada foi referenciada quando necessário;
- lições aprendidas foram registradas;
- comunicação necessária foi concluída;
- owner e aprovador concordaram com o encerramento;
- pendências remanescentes possuem owner e prazo;
- incidentes de severidade alta ou crítica receberam validação independente.

Encerramento NÃO apaga histórico e NÃO remove obrigação de ação futura.

`Resolved` NÃO é equivalente a `Closed`. Pendências não devem ser ocultadas para permitir encerramento. Ações de longo prazo PODEM permanecer abertas fora do encerramento operacional somente quando estiverem registradas, atribuídas, rastreáveis e vinculadas ao incidente. O encerramento NÃO elimina risco residual nem substitui acompanhamento de problema ou mudança relacionada.

## 19. Ações corretivas

Ação corretiva elimina ou reduz causa identificada.

Toda ação corretiva DEVE registrar:

- incidente relacionado;
- causa tratada;
- ação proposta;
- owner;
- aprovador;
- prazo ou cadência, quando aplicável;
- evidência de execução;
- validação;
- risco residual.

## 20. Ações preventivas

Ação preventiva reduz chance de recorrência.

Pode incluir:

- atualização de Policy;
- revisão de KAF;
- atualização de Playbook;
- alteração de permissões;
- melhoria de evidências;
- automação futura;
- treinamento ou orientação;
- auditoria recorrente.

Ação preventiva NÃO deve criar mudança sem governança apropriada.

## 21. Lições aprendidas

Lições aprendidas DEVEM preservar conhecimento sem expor dados sensíveis.

Devem responder:

- o que aconteceu;
- por que aconteceu;
- como foi detectado;
- como foi contido;
- o que foi corrigido;
- o que deve mudar;
- quais documentos, Playbooks, Policies ou registros devem ser revisados.

## 21.1 Relação Incidente, Problema e Mudança

Um incidente PODE revelar um problema persistente e PODE originar uma mudança planejada.

Regras:

- nem todo incidente gera problema;
- nem todo incidente gera mudança;
- problemas persistentes DEVEM ser referenciados quando identificados;
- mudanças derivadas de incidente DEVEM possuir referência própria;
- encerramento do incidente NÃO significa que o problema persistente foi resolvido;
- implementação de mudança NÃO elimina necessidade de validação;
- ações corretivas e preventivas DEVEM permanecer rastreáveis até a evidência de execução ou decisão formal de não execução.

Este documento NÃO cria Registro de Problemas nem Registro de Mudanças. Ele apenas define a rastreabilidade mínima entre incidente, problema e mudança.

## 22. Auditoria

Auditoria DEVE verificar:

- incidentes sem owner;
- incidentes sem investigador;
- incidentes sem aprovador de encerramento;
- incidentes sem evidências;
- severidade ou prioridade ausente;
- severidade ou prioridade reduzida sem justificativa;
- status incompatível;
- transições fora da matriz permitida;
- incidentes `Closed` sem encerramento aprovado;
- incidentes `Closed` sem causa raiz ou justificativa de ausência;
- incidentes `Closed` sem critérios de encerramento atendidos;
- near misses ignorados;
- near miss de alto potencial sem escalonamento;
- ações corretivas vencidas;
- ações preventivas ausentes, vencidas ou não verificadas quando aplicáveis;
- agentes suspensos ainda executando;
- incidentes críticos sem auditoria;
- incidentes críticos encerrados sem revisão independente;
- evidências descartadas sem justificativa;
- evidências sem local, classificação ou mecanismo de integridade quando aplicável;
- cadeia de custódia ausente;
- recorrência sem problema registrado;
- incidentes reabertos;
- múltiplas reaberturas sem análise de problema;
- incidentes em aberto por tempo excessivo;
- incidentes sem atualização recente;
- relação com problema ou mudança sem rastreabilidade;
- etapas `Contained` ou `Mitigated` omitidas sem justificativa.

## 23. Governança

| Papel | Responsabilidades |
| --- | --- |
| Owner do incidente | Responder pelo registro, coordenação, status, evidências e encerramento. |
| Investigador | Coletar evidências, analisar causa, separar fatos de hipóteses e recomendar ações. |
| Arquitetura | Avaliar impacto estrutural, dependências, fronteiras e necessidade de ADR ou revisão. |
| Engenharia | Avaliar impacto técnico, validações, testes, builds, diffs e mudanças corretivas. |
| Segurança | Avaliar exposição, segredos, dados, acessos, ambientes e classificação. |
| Governança | Garantir status, rastreabilidade, lifecycle, auditoria e aderência a KAF, KES e Policies. |
| Produto | Avaliar impacto no produto consumidor, regras locais, baseline e plano de comunicação. |
| Auditoria | Verificar integridade, evidências, conformidade e recorrência. |

Investigação, aprovação e encerramento DEVEM ser separados quando o incidente tiver severidade alta ou crítica. Quem investigou não deve ser a única autoridade de encerramento quando houver risco material.

## 24. Relação com AGENT_REGISTRY

Incidentes DEVEM apontar para agentes registrados quando aplicável.

O incidente PODE resultar em:

- suspensão de agente;
- reativação condicionada;
- depreciação;
- arquivamento;
- alteração de risco;
- alteração de criticidade operacional;
- revisão de owner, aprovador, permissões ou ambientes.

O `AGENT_REGISTRY` não substitui o registro de incidente. Ele deve refletir mudanças de status e governança derivadas de incidentes quando aprovadas.

## 25. Relação com Playbooks

Incidentes PODEM envolver Playbooks quando:

- Playbook foi executado incorretamente;
- Playbook estava incompleto;
- Playbook permitiu ambiguidade;
- evidências da execução foram insuficientes;
- critérios de interrupção falharam;
- execução gerou near miss ou incidente.

Playbook NÃO é incidente por si só. Execuções específicas podem gerar incidentes.

## 26. Relação com Produtos

Quando houver produto consumidor afetado, o registro DEVE identificar:

- produto;
- owner do produto;
- baseline da KEP;
- ambiente;
- impacto;
- evidências;
- regras locais envolvidas;
- comunicação necessária;
- ações corretivas e preventivas.

Código, dados, configurações e segredos de produto NÃO devem ser copiados para este registro.

## 27. Relação com Ambientes

Ambientes reconhecidos:

- local;
- desenvolvimento;
- teste;
- homologação;
- staging;
- produção;
- ambiente restrito;
- ambiente externo.

Incidentes em produção, ambiente restrito ou ambiente externo exigem avaliação de segurança e governança proporcional.

Ambiente compatível no registro do agente não significa autorização permanente nem reduz severidade automaticamente.

## 28. Matriz oficial de incidentes

A matriz abaixo está vazia intencionalmente nesta versão inicial. Nenhum incidente real é registrado neste documento.

| Incident ID | Tipo | Título resumido | Agente afetado | Agentes relacionados | Produto | Ambiente | Playbook | Status atual | Severidade inicial | Severidade final | Prioridade inicial | Prioridade final | Criticidade operacional | Nível de risco | Impacto | Urgência | Data e hora de detecção | Data e hora da triagem | Data e hora do início da investigação | Data e hora da contenção | Data e hora da mitigação | Data e hora da resolução | Data e hora do encerramento | Data da última atualização | Owner | Investigador | Aprovador do encerramento | Nível de escalonamento | Local das evidências | Referência da cadeia de custódia | Causa raiz | Ação corretiva | Ação preventiva | Problema relacionado | Mudança relacionada | Lições aprendidas | Número de reaberturas | Data da última reabertura | Motivo da reabertura | Próxima revisão quando aplicável | Observações |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

Nenhum incidente é registrado nesta versão. A inclusão futura de incidentes exige evidências, owner, classificação, status e rastreabilidade.

Implementações estruturadas futuras em YAML, JSON, banco de dados, API ou ferramenta equivalente DEVEM preservar todos os campos normativos desta matriz.

## 29. Diagramas ASCII

### Relação entre incidente, problema e mudança

```text
Near Miss ou Incidente
        ↓
Investigação
        ↓
Problema identificado?
   ├─ NÃO → ações corretivas/preventivas proporcionais
   └─ SIM → Problema
              ↓
            Mudança planejada
              ↓
            Redução de recorrência
```

### Lifecycle do incidente

```text
Detected
    ↓
Triaged
    ↓
Investigating
    ↓
Contained
    ↓
Mitigated
    ↓
Resolved
    ↓
Closed
```

### Fluxos alternativos

```text
Detected
    ├─ Cancelled
    ├─ Duplicate
    └─ False Positive
```

### Relação com agentes e Playbooks

```text
AGENT_REGISTRY
      ↓
Agente registrado
      ↓
Playbook aprovado
      ↓
Execução
      ↓
Near Miss ou Incidente
      ↓
AGENT_INCIDENT_REGISTER
```

## 30. Anti-patterns

São proibidos:

- fechar incidente sem investigação adequada;
- excluir histórico;
- reutilizar IDs;
- tratar Near Miss como irrelevante;
- registrar mudanças como incidentes;
- ocultar evidências;
- encerrar incidente sem ações corretivas quando aplicáveis;
- alterar registros sem rastreabilidade;
- reduzir severidade para evitar governança;
- descartar evidências sensíveis sem justificativa e alternativa segura;
- copiar segredos, dados pessoais, dados financeiros ou código de produto para o registro;
- tratar mitigação temporária como resolução definitiva sem justificativa.

## 31. Evoluções futuras

Possibilidades futuras, sem criação de novos artefatos nesta versão:

- integração com CI;
- dashboards;
- automação de alertas;
- schema YAML/JSON;
- banco de dados;
- APIs;
- integração com métricas;
- integração com Change Register;
- integração com Problem Register;
- validação automática de IDs;
- trilha de auditoria estruturada;
- escalonamento automático baseado em regras aprovadas;
- métricas de tempo em estado e recorrência;
- relatórios por agente, produto, ambiente, severidade e recorrência.

Essas evoluções NÃO concedem permissões, NÃO registram incidentes reais nesta versão e NÃO substituem governança humana.

Markdown é a representação inicial, humana e suficiente para a fase atual. Ela NÃO é a representação definitiva para alto volume. Quando houver centenas ou milhares de incidentes, RECOMENDA-SE migração para formato estruturado com schema, API, dashboards, alertas e integrações de auditoria.

Qualquer migração futura DEVE preservar:

- IDs;
- histórico;
- classificações iniciais e finais;
- reaberturas;
- evidências;
- cadeia de custódia;
- relações com problema e mudança;
- lifecycle;
- aprovações;
- trilha de auditoria.

## 32. Histórico

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.1 | 2026-07-18 | Ajustes pós-revisão arquitetural: cadeia de custódia, escalonamento formal, reabertura controlada, matriz normativa de transições, distinção entre `Contained` e `Mitigated`, matriz oficial expandida, severidade e prioridade inicial/final, rastreabilidade Incidente-Problema-Mudança, auditoria ampliada, critérios de encerramento fortalecidos e preparação para representação estruturada futura. |
| 0.1.0 | 2026-07-18 | Criação inicial do modelo oficial do Registro de Incidentes de Agentes, com lifecycle, severidade, prioridade, evidências, governança, matriz oficial vazia e regras de auditoria. |
