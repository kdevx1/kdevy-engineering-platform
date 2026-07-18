# Modelo Oficial de Métricas de Agentes da KDEVY Engineering Platform

## 1. Controle documental

| Campo | Valor |
| --- | --- |
| Documento | AGENT_METRICS_MODEL |
| Versão | 0.1.1 |
| Status | Draft |
| Classificação | Interno |
| Domínio | AI, Governance e Operations |
| Owner | Governança da KEP |
| Aprovador | A definir pela governança da KEP |
| Última revisão | 2026-07-18 |
| Próxima revisão | A definir pela governança da KEP |
| Referências normativas | `architecture/AGENT_FRAMEWORK_MODEL.md`, `architecture/AGENT_REGISTRY.md`, `architecture/AGENT_INCIDENT_REGISTER.md`, `templates/AGENT_TEMPLATE.md`, `templates/AGENT_PLAYBOOK_TEMPLATE.md`, `architecture/PLATFORM_MODEL.md`, `architecture/KNOWLEDGE_SYSTEM_MODEL.md`, `architecture/KEP_MASTER_ROADMAP.md`, `specifications/KES-0000_MASTER_SPECIFICATION.md`, `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md`, `governance/`, `policies/`, `roadmap/` |
| Histórico | Versão 0.1.1 com ajustes pós-revisão arquitetural aplicados ao modelo oficial de métricas de agentes da KEP. |

## 2. Objetivo

Este documento define o Modelo Oficial de Métricas de Agentes da KDEVY Engineering Platform (KEP).

O modelo estabelece como a KEP DEVE medir, interpretar e evoluir a operação, qualidade, governança, risco, conhecimento, incidentes, evolução e valor dos agentes da plataforma.

Este documento NÃO implementa dashboards, NÃO cria consultas, NÃO cria código, NÃO define KPIs específicos de produtos e NÃO coleta métricas reais.

As métricas existem para apoiar decisão, aprendizado e melhoria contínua. Elas NÃO substituem julgamento técnico, revisão humana, contexto arquitetural, análise de risco ou governança formal.

## 3. Escopo

Pertence a este modelo:

- domínios de métricas de agentes;
- contrato normativo mínimo de cada métrica;
- métricas conceituais mínimas por domínio;
- relação entre agente, Playbook, execução, incidente, métrica e melhoria;
- critérios de qualidade das métricas;
- limites de interpretação;
- preparação para automação futura.

Não pertence a este modelo:

- dashboards;
- consultas SQL, YAML, JSON, APIs ou código;
- metas numéricas;
- coleta de métricas reais;
- métricas específicas de AutoBody ERP ou produto futuro;
- ranqueamento de pessoas;
- concessão de permissões;
- alteração de governança da KEP.

## 4. Princípios

### 4.1 Métricas como evidência, não como verdade isolada

Métricas DEVEM apoiar análise. Elas NÃO DEVEM ser tratadas como prova isolada de qualidade, risco, valor ou maturidade.

### 4.2 Rastreabilidade

Toda métrica relevante DEVE permitir rastrear fonte, período, responsável, interpretação e limitações.

### 4.3 Auditabilidade

Métricas usadas para decisão DEVEM ser auditáveis. Quando a fonte dos dados for incompleta, a limitação DEVE ser declarada.

### 4.4 Proporcionalidade ao risco

Quanto maior o risco do agente, ambiente, produto ou processo, maior DEVE ser a exigência de evidência, revisão e qualidade da métrica.

### 4.5 Independência de fornecedor

O modelo NÃO DEVE depender de ferramenta, provedor de IA, dashboard, banco de dados, linguagem ou plataforma específica.

### 4.6 Melhoria contínua

Métricas DEVEM alimentar aprendizado, revisão de Playbooks, ajustes de agentes, prevenção de incidentes e evolução da governança.

### 4.7 Contexto antes de comparação

Agentes com objetivos, riscos, autonomia, produtos ou ambientes diferentes NÃO DEVEM ser comparados diretamente sem normalização e contexto explícitos.

## 5. Definições

### Métrica

Métrica é uma medida definida, rastreável e interpretável sobre uma dimensão da operação, qualidade, risco, governança, conhecimento, evolução ou valor de agentes.

### Indicador

Indicador é uma leitura derivada de uma ou mais métricas para apoiar decisão.

### Fonte de dados

Fonte de dados é o documento, registro, execução, evidência, incidente, revisão, Playbook ou sistema futuro de onde a métrica PODE ser obtida.

### Fórmula conceitual

Fórmula conceitual descreve o significado normativo de cálculo de uma métrica. Implementações futuras PODEM adaptar a forma técnica sem alterar o significado normativo.

### Período de medição

Período de medição é a janela temporal usada para apurar a métrica.

### Consumidor da métrica

Consumidor é a pessoa, domínio, agente, produto, governança ou auditoria que utiliza a métrica para análise, aprendizado ou decisão.

## 6. Domínios de métricas

| Domínio | Propósito |
| --- | --- |
| Operação | Medir execução, fluxo, capacidade, disponibilidade, falhas e retrabalho dos agentes. |
| Qualidade | Medir aderência a critérios, revisões, evidências, defeitos, conformidade e reaberturas. |
| Incidentes | Medir eventos, near misses, severidade, resposta, contenção, mitigação, resolução e recorrência. |
| Governança | Medir estado de agentes, documentos, Playbooks, políticas, revisões e pendências governadas. |
| Conhecimento | Medir preservação, atualização, reuso e geração de conhecimento a partir da operação. |
| Risco | Medir exposição, mitigação, tendência, criticidade e incidentes críticos. |
| Evolução | Medir melhorias, versões, dívida, ações corretivas e ações preventivas. |
| Valor | Medir benefício operacional, redução de retrabalho, tempo economizado e valor entregue com contexto. |

Domínios podem se relacionar. Uma métrica de incidente PODE alimentar risco, governança, conhecimento e evolução.

### 6.1 Hierarquia de métricas

Métricas DEVEM declarar sua classificação de uso:

| Classificação | Finalidade | Uso esperado |
| --- | --- | --- |
| Estratégica | Apoiar direção, investimento, maturidade e decisões de longo prazo | Governança, arquitetura, liderança e roadmap |
| Tática | Apoiar priorização, coordenação, melhoria e revisão de domínios | Engenharia, segurança, produto, operações e governança |
| Operacional | Apoiar execução, diagnóstico, acompanhamento e resposta diária | Owners, revisores, operadores e agentes supervisionados |

Métricas estratégicas NÃO DEVEM ser calculadas por agregação opaca de métricas operacionais. Métricas operacionais NÃO DEVEM ser usadas como decisão estratégica sem interpretação, contexto e revisão.

## 7. Contrato normativo de métrica

Toda métrica formal de agentes DEVE possuir, no mínimo:

| Campo | Obrigatoriedade | Descrição |
| --- | --- | --- |
| Metric ID | Obrigatório | Identificador único e estável da métrica. |
| Nome | Obrigatório | Nome claro, único no contexto do domínio. |
| Versão | Obrigatório | Versão da definição normativa da métrica. |
| Objetivo | Obrigatório | Pergunta que a métrica ajuda a responder. |
| Definição | Obrigatório | O que é medido e o que não é medido. |
| Fórmula conceitual | Obrigatório | Relação conceitual usada para cálculo. |
| Unidade de medida | Obrigatório | Contagem, percentual, tempo, razão, índice ou outra unidade. |
| Frequência de atualização | Obrigatório | Cadência esperada de revisão ou apuração. |
| Fonte dos dados | Obrigatório | Registro, documento, execução ou evidência de origem. |
| Owner da definição | Obrigatório | Responsável pelo significado normativo da métrica. |
| Owner da qualidade dos dados | Obrigatório | Responsável por completude, consistência, precisão, atualidade e integridade dos dados. |
| Consumidores | Obrigatório | Quem usa a métrica. |
| Classificação | Obrigatório | Estratégica, Tática ou Operacional. |
| Tipo | Obrigatório | Leading Indicator ou Lagging Indicator. |
| Dependências | Obrigatório | Métricas, fontes, documentos ou eventos necessários para cálculo ou interpretação. |
| Nível esperado de confiabilidade dos dados | Obrigatório | Baixo, médio, alto ou crítico, com critério de aceitação declarado. |
| Critérios mínimos de validade | Obrigatório | Condições mínimas para a métrica ser usada em decisão. |
| Data da última revisão | Obrigatório | Data da última revisão da definição. |
| Próxima revisão prevista | Obrigatório | Data ou critério para próxima revisão. |
| Interpretação | Obrigatório | Como a leitura deve ser entendida. |
| Limitações | Obrigatório | Onde a métrica pode falhar, distorcer ou ficar incompleta. |
| Anti-patterns relacionados | Obrigatório | Usos proibidos ou interpretações indevidas. |

Fórmulas são conceituais e PODEM variar na implementação futura sem alterar o significado normativo da métrica. Mudanças no contrato, definição, fonte, fórmula, owner, classificação ou dependências DEVEM preservar rastreabilidade histórica.

### 7.1 Lifecycle das métricas

O lifecycle normativo de uma métrica é:

```text
Proposta
    ↓
Draft
    ↓
Review
    ↓
Approved
    ↓
Active
    ↓
Deprecated
    ↓
Archived
```

| Estado | Objetivo | Responsáveis | Critérios de transição |
| --- | --- | --- | --- |
| Proposta | Registrar necessidade de medição | Solicitante e owner proposto | Problema, consumidor e decisão apoiada identificados |
| Draft | Elaborar definição inicial | Owner da definição | Contrato mínimo preenchido |
| Review | Revisar utilidade, fonte, risco e interpretação | Owner da definição, owner da qualidade e consumidores | Fontes, dependências, validade e anti-patterns revisados |
| Approved | Aceitar a definição normativa | Aprovador definido pela governança | Revisão concluída e histórico registrado |
| Active | Autorizar uso em análise e decisão compatíveis | Owner da definição e consumidores | Fonte disponível, qualidade conhecida e periodicidade definida |
| Deprecated | Manter por compatibilidade ou transição | Owner da definição e governança | Substituição, perda de utilidade ou mudança de fonte registrada |
| Archived | Preservar apenas para histórico e auditoria | Governança | Métrica descontinuada, com histórico e motivo preservados |

Métrica `Archived` permanece auditável. Identificadores históricos NÃO DEVEM ser reutilizados. Reativação PODE ocorrer somente quando houver justificativa, revisão, owner ativo, qualidade de dados conhecida e aprovação formal.

### 7.2 Ownership

Os papéis de ownership DEVEM ser separados:

| Papel | Responsabilidade | Limite |
| --- | --- | --- |
| Owner da definição | Responde pelo significado, fórmula conceitual, escopo, interpretação e anti-patterns da métrica | Não garante sozinho a qualidade dos dados coletados |
| Owner da qualidade dos dados | Responde por completude, consistência, precisão, atualidade, integridade e rastreabilidade dos dados | Não altera o significado normativo sem revisão |
| Consumidor | Interpreta e usa a métrica para decisão, aprendizado ou acompanhamento | Não deve mudar fonte, cálculo ou escopo por conveniência |

Esses papéis PODEM ser exercidos por pessoas ou domínios diferentes. Métrica sem owner da definição, owner da qualidade ou consumidor identificado NÃO DEVE permanecer `Active`.

## 8. Domínio Operação

O domínio Operação mede se agentes e Playbooks executam trabalho autorizado de forma compreensível, rastreável e operacionalmente útil.

| Métrica | Objetivo | Fórmula conceitual | Unidade | Fonte principal | Interpretação e limitações |
| --- | --- | --- | --- | --- | --- |
| Execuções | Medir volume de execuções de agentes ou Playbooks | total de execuções registradas no período | contagem | Execuções de Playbooks e registros operacionais futuros | Volume alto não significa valor alto. |
| Execuções bem-sucedidas | Medir execuções concluídas com critérios atendidos | execuções concluídas com aceite / execuções totais | contagem ou percentual | Evidências de execução | Sucesso depende de critérios claros. |
| Falhas | Medir execuções interrompidas, bloqueadas ou sem aceite | execuções com status de falha, bloqueio ou incidente | contagem | Execuções e Incident Register | Falhas podem indicar boa detecção, não apenas baixa qualidade. |
| Taxa de sucesso | Medir proporção de execuções bem-sucedidas | execuções bem-sucedidas / execuções totais | percentual | Execuções | Não deve ser otimizada ocultando falhas. |
| Tempo médio de execução | Medir duração média de execuções | soma das durações / execuções concluídas | tempo | Execuções com início e término | Pode variar por complexidade e risco. |
| Throughput | Medir capacidade de conclusão em uma janela | execuções concluídas por período | razão temporal | Execuções | Não mede qualidade sozinho. |
| Disponibilidade | Medir capacidade de agente estar apto a operar quando autorizado | tempo apto / tempo esperado de aptidão | percentual | Agent Registry e registros operacionais futuros | Não concede autorização nem mede qualidade de saída. |
| Retrabalho | Medir trabalho refeito por falha, lacuna ou não conformidade | execuções reabertas, refeitas ou corrigidas / execuções totais | percentual | Revisões, incidentes e execuções | Parte do retrabalho pode ser aprendizado legítimo. |

## 9. Domínio Qualidade

O domínio Qualidade mede aderência a critérios de aceite, revisão, evidências e conformidade documental.

| Métrica | Objetivo | Fórmula conceitual | Unidade | Fonte principal | Interpretação e limitações |
| --- | --- | --- | --- | --- | --- |
| Revisões aprovadas | Medir mudanças ou execuções aceitas em revisão | revisões aprovadas / revisões concluídas | percentual | Reviews e evidências de revisão | Aprovação não elimina risco residual. |
| Não conformidades | Medir desvios de KAF, KES, Policies, Templates ou Playbooks | total de não conformidades registradas | contagem | Reviews, auditorias e incidentes | Aumento pode refletir melhor inspeção. |
| Defeitos identificados | Medir defeitos encontrados antes ou depois da entrega | total de defeitos por período | contagem | Revisões, QA, testes, incidentes | Deve separar defeito de melhoria desejável. |
| Reaberturas | Medir necessidade de reabrir entrega, revisão ou incidente | total de reaberturas / itens encerrados | percentual | Reviews, Incident Register e registros futuros | Reabertura legítima é melhor que ocultar falha. |
| Cobertura de evidências | Medir completude das evidências obrigatórias | evidências apresentadas / evidências exigidas | percentual | Playbooks, Incident Register e revisões | Deve respeitar proporcionalidade ao risco. |
| Conformidade documental | Medir aderência a templates e campos obrigatórios | documentos conformes / documentos avaliados | percentual | Templates, reviews e auditorias | Não mede profundidade técnica sozinha. |

## 10. Domínio Incidentes

O domínio Incidentes DEVE se relacionar explicitamente ao `architecture/AGENT_INCIDENT_REGISTER.md`.

| Métrica | Objetivo | Fórmula conceitual | Unidade | Fonte principal | Interpretação e limitações |
| --- | --- | --- | --- | --- | --- |
| Incidentes por agente | Medir distribuição de incidentes por agente | incidentes vinculados ao agente no período | contagem | Agent Incident Register | Deve considerar volume de uso e risco do agente. |
| Near Miss | Medir eventos evitados antes de impacto | near misses registrados no período | contagem | Agent Incident Register | Queda excessiva pode indicar subnotificação. |
| MTTD | Medir tempo médio até detecção | média entre início estimado do evento e detecção | tempo | Incident Register e evidências | Pode ser incerto quando início não é conhecido. |
| Tempo até reconhecimento | Medir rapidez para reconhecer que o evento exige resposta | média entre detecção e reconhecimento formal | tempo | Incident Register | Não substitui triagem nem atribuição. |
| Tempo até triagem | Medir rapidez para classificar o evento | média entre detecção e `Triaged` | tempo | Incident Register | Depende de registro consistente da triagem. |
| Tempo até atribuição | Medir rapidez para definir responsável pela resposta | média entre detecção e atribuição de owner ou investigador | tempo | Incident Register | Não mede qualidade da investigação. |
| MTTR | Medir tempo médio até resolução | média entre detecção e `Resolved` | tempo | Incident Register | `Resolved` não significa `Closed`. |
| Tempo até contenção | Medir rapidez para limitar propagação | média entre detecção e `Contained` | tempo | Incident Register | Pode ser N/A com justificativa. |
| Tempo até mitigação | Medir rapidez para reduzir impacto | média entre detecção e `Mitigated` | tempo | Incident Register | Mitigação temporária não é resolução definitiva. |
| Recorrência | Medir repetição de eventos relacionados | incidentes recorrentes / incidentes totais | percentual | Incident Register e relações com problema | Exige critério claro de relação. |
| Escalonamentos | Medir incidentes que exigiram níveis superiores | incidentes escalados por nível no período | contagem | Incident Register | Escalonamento alto pode indicar maturidade ou risco. |
| Distribuição por severidade | Medir perfil de impacto | incidentes por severidade inicial e final | contagem ou percentual | Incident Register | Mudanças de severidade devem preservar histórico. |

Métricas de incidentes DEVEM preservar classificação inicial e final, reaberturas, cadeia de custódia, severidade, prioridade e relação com problema ou mudança quando aplicável.

Implementações futuras PODEM usar uma ou mais métricas equivalentes ao conceito amplo de MTTA, desde que declarem claramente se medem reconhecimento, triagem, atribuição ou combinação desses eventos. A implementação NÃO DEVE misturar esses conceitos sem regra explícita.

## 11. Domínio Governança

O domínio Governança mede estado e saúde dos controles formais de agentes.

| Métrica | Objetivo | Fórmula conceitual | Unidade | Fonte principal | Interpretação e limitações |
| --- | --- | --- | --- | --- | --- |
| Agentes ativos | Medir agentes com status `Active` | total de agentes `Active` | contagem | Agent Registry | Quantidade não deve incentivar proliferação. |
| Agentes obsoletos | Medir agentes `Deprecated`, `Archived` ou sem uso justificado | total de agentes obsoletos | contagem | Agent Registry | Obsoleto não é erro quando preserva histórico. |
| Playbooks atualizados | Medir Playbooks dentro da janela de revisão | Playbooks revisados no prazo / Playbooks aplicáveis | percentual | Playbook Template e registros futuros | Depende de inventário confiável. |
| Documentos revisados | Medir documentos de agentes e governança revisados | documentos revisados / documentos com revisão vencida ou prevista | percentual | Registry, templates e reviews | Revisão formal não garante adoção prática. |
| Políticas cumpridas | Medir aderência a Policies aplicáveis | itens conformes / itens avaliados | percentual | Auditorias, reviews e incidentes | Deve declarar quais policies foram avaliadas. |
| Pendências de governança | Medir pendências abertas de owner, aprovação, revisão ou exceção | total de pendências abertas | contagem | Registry, reviews e governance | Nem toda pendência tem o mesmo risco. |

## 12. Domínio Conhecimento

O domínio Conhecimento mede se a operação dos agentes produz aprendizado preservado e reutilizável.

| Métrica | Objetivo | Fórmula conceitual | Unidade | Fonte principal | Interpretação e limitações |
| --- | --- | --- | --- | --- | --- |
| Lições aprendidas registradas | Medir aprendizado formalizado | lições registradas por período | contagem | Incident Register, reviews e Knowledge System | Quantidade não mede qualidade do aprendizado. |
| Atualizações de documentação | Medir evolução documental derivada de operação | documentos atualizados por necessidade validada | contagem | Knowledge, reviews e changelog | Deve evitar churn documental sem valor. |
| Playbooks derivados | Medir transformação de conhecimento em operação reutilizável | Playbooks criados ou atualizados a partir de lições | contagem | Playbook Template e Knowledge System | Criar Playbook demais aumenta complexidade. |
| Cobertura documental | Medir presença de documentação mínima para agentes e processos | itens documentados / itens que exigem documentação | percentual | Registry, Catalog, Templates e Knowledge | Cobertura não substitui clareza. |
| Reutilização de conhecimento | Medir uso de conhecimento existente antes de criar novo artefato | referências a fontes existentes / novas criações relacionadas | razão | Reviews, KIPs, Playbooks e Knowledge | Deve respeitar classificação da informação. |

## 13. Domínio Risco

O domínio Risco mede exposição, redução de risco e tendência associada a agentes.

| Métrica | Objetivo | Fórmula conceitual | Unidade | Fonte principal | Interpretação e limitações |
| --- | --- | --- | --- | --- | --- |
| Riscos abertos | Medir riscos sem tratamento concluído | total de riscos abertos vinculados a agentes | contagem | Reviews, Incident Register e Registry | Deve separar risco aceito de risco pendente. |
| Riscos mitigados | Medir riscos com ação de mitigação aceita | riscos mitigados / riscos identificados | percentual | Incident Register e reviews | Mitigado não significa eliminado. |
| Exposição residual | Medir risco restante após controles | avaliação qualitativa ou índice conceitual de risco residual | escala definida em implementação futura | Incidentes, reviews e governança | Não deve virar pontuação falsa sem critério. |
| Tendência de risco | Medir direção do risco ao longo do tempo | comparação entre períodos equivalentes | tendência | Registros de risco e incidentes | Requer séries consistentes. |
| Incidentes críticos | Medir eventos de maior impacto | total de incidentes críticos no período | contagem | Incident Register | Ausência não prova segurança absoluta. |

## 14. Domínio Evolução

O domínio Evolução mede se agentes, Playbooks, documentos e governança melhoram de forma incremental.

| Métrica | Objetivo | Fórmula conceitual | Unidade | Fonte principal | Interpretação e limitações |
| --- | --- | --- | --- | --- | --- |
| Melhorias implementadas | Medir melhorias concluídas com evidência | melhorias concluídas / melhorias planejadas ou aceitas | percentual | KIPs, ADRs, reviews e roadmap | Deve evitar inflar melhorias pequenas sem impacto. |
| Tempo entre versões | Medir cadência de evolução documental ou operacional | intervalo entre versões aprovadas | tempo | Históricos documentais e Registry | Cadência alta não significa qualidade. |
| Dívida de governança | Medir lacunas conhecidas de owner, revisão, autorização ou documentação | pendências de governança abertas | contagem ou índice | Governance, reviews e roadmap | Deve diferenciar dívida aceita de dívida não tratada. |
| Ações preventivas concluídas | Medir redução planejada de recorrências | ações preventivas concluídas / ações preventivas abertas | percentual | Incident Register | Conclusão requer evidência. |
| Ações corretivas concluídas | Medir tratamento de causas identificadas | ações corretivas concluídas / ações corretivas abertas | percentual | Incident Register | Correção não substitui validação. |

## 15. Domínio Valor

O domínio Valor mede contribuição operacional e estratégica dos agentes. Métricas de valor DEVEM ser interpretadas em conjunto com contexto operacional.

Métricas de valor DEVEM diferenciar:

- valor estimado: benefício calculado por premissas, baseline aproximado ou avaliação preliminar;
- valor observado: benefício percebido em operação, ainda sujeito a variação e contexto;
- valor comprovado: benefício sustentado por evidência suficiente, período conhecido e validação compatível.

Estimativas NÃO DEVEM ser tratadas como comprovação objetiva. Valor observado ou comprovado DEVE preservar fonte, período, premissas, limitações e consumidor.

| Métrica | Objetivo | Fórmula conceitual | Unidade | Fonte principal | Interpretação e limitações |
| --- | --- | --- | --- | --- | --- |
| Tempo economizado | Estimar redução de esforço por execução assistida | tempo estimado sem agente - tempo real com agente | tempo | Execuções, baseline histórico ou estimativa justificada | Estimativas exigem contexto e podem variar. |
| Redução de retrabalho | Medir queda de retrabalho após melhorias | retrabalho anterior - retrabalho atual | percentual ou contagem | Operação, qualidade e incidentes | Deve comparar períodos e escopos equivalentes. |
| Eficiência operacional | Medir relação entre saída útil e esforço | entregas úteis / esforço registrado ou estimado | razão | Execuções e reviews | Não deve punir tarefas complexas. |
| Automações geradas | Medir automações propostas, aprovadas ou derivadas | automações aprovadas por período | contagem | KIPs, ADRs, Playbooks e roadmap | Automação criada não garante valor. |
| Tempo de resposta ao usuário | Medir rapidez de resposta operacional ao solicitante | média entre solicitação e primeira resposta útil | tempo | Registros de atendimento ou execução futura | Deve diferenciar resposta de resolução. |
| Valor entregue | Medir benefício aceito por consumidores | entregas aceitas com benefício registrado | contagem ou avaliação qualitativa | Reviews, produto e governança | Valor deve ser contextual e verificável. |

## 16. Relações e rastreabilidade

O fluxo conceitual principal de geração de métricas é:

```text
Agente
    │
    ▼
Playbook
    │
    ▼
Execução
    ├──────────────► Métrica
    │
    ▼
Incidente (quando existir)
    │
    ▼
Métrica
    │
    ▼
Melhoria
```

Cada etapa alimenta a próxima:

- agente define finalidade, owner, risco, autonomia e capacidades autorizadas;
- Playbook define fluxo operacional reutilizável e evidências esperadas;
- execução registra uso real, contexto, duração, resultado, validações e limitações;
- toda execução PODE gerar métricas mesmo sem incidente;
- incidente registra falhas, near misses, evidências, impacto, contenção, mitigação e lições;
- incidentes enriquecem o conjunto de métricas quando existirem;
- métrica transforma registros em leitura rastreável e interpretável;
- melhoria ajusta agentes, Playbooks, templates, policies, conhecimento, governança ou produtos consumidores;
- melhorias podem surgir de execuções, revisões, governança, conhecimento ou incidentes.

Métricas relevantes DEVEM apontar para suas fontes. Melhorias derivadas de métricas DEVEM preservar o raciocínio que levou à decisão.

### 16.1 Dependências e dupla contagem

Métricas derivadas DEVEM registrar suas dependências.

Regras:

- a origem dos dados DEVE ser documentada;
- métricas compostas DEVEM preservar rastreabilidade até métricas ou eventos de origem;
- agregações DEVEM declarar período, escopo, filtros, fonte e critério de inclusão;
- uma mesma ocorrência NÃO DEVE alimentar indicadores incompatíveis sem justificativa;
- falhas, incidentes, reaberturas, retrabalho, ações corretivas e melhorias DEVEM ter critérios de contagem distintos;
- duplicidade conhecida DEVE ser corrigida, marcada ou excluída da agregação conforme regra documentada;
- dados ausentes NÃO DEVEM ser inferidos silenciosamente.

## 17. Qualidade das métricas

Uma métrica somente deve ser considerada válida quando atender aos critérios mínimos abaixo.

| Critério | Exigência |
| --- | --- |
| Relevância | A métrica responde uma pergunta útil para decisão, aprendizado ou governança. |
| Clareza | Nome, definição e interpretação são compreensíveis. |
| Repetibilidade | A mesma regra conceitual pode ser reaplicada de forma consistente. |
| Auditabilidade | Fonte, período e cálculo podem ser revisados. |
| Rastreabilidade | A métrica aponta para dados, documentos ou evidências de origem. |
| Disponibilidade dos dados | Os dados existem ou a ausência é explicitamente registrada. |
| Custo proporcional de coleta | O esforço de coleta é compatível com o risco e valor da métrica. |
| Utilidade para decisão | A métrica possui consumidor identificado. |

Métrica sem consumidor, sem decisão associada ou sem capacidade de revisão DEVE ser removida, suspensa ou reclassificada como experimental.

### 17.1 Qualidade dos dados

A qualidade dos dados DEVE ser avaliada separadamente da qualidade da definição da métrica.

Critérios mínimos:

| Critério | Exigência |
| --- | --- |
| Completude | Dados necessários para cálculo e interpretação estão presentes ou lacunas estão declaradas. |
| Consistência | Dados seguem o mesmo critério entre períodos, fontes e agregações comparáveis. |
| Precisão | Dados representam o evento, estado ou medida com erro conhecido ou aceitável. |
| Atualidade | Dados estão dentro da janela de uso esperada para a decisão. |
| Integridade | Dados não foram alterados sem rastreabilidade e preservam relação com a fonte. |
| Rastreabilidade | Dados apontam para origem, período, fonte, transformação e responsável. |
| Disponibilidade | Dados podem ser acessados por consumidores autorizados quando necessários. |
| Reprodutibilidade | O cálculo pode ser refeito com a mesma fonte e produzir resultado compatível. |

Métricas com baixa qualidade de dados DEVEM ser identificadas. Métricas com confiabilidade desconhecida NÃO DEVEM ser usadas para decisão, priorização, ativação, suspensão, depreciação, avaliação de risco ou comunicação executiva.

### 17.2 Auditoria das métricas

A governança DEVE revisar periodicamente o conjunto de métricas. A periodicidade mínima é a próxima revisão prevista no contrato de cada métrica ou uma revisão consolidada definida pela governança da KEP.

Auditoria de métricas DEVE detectar:

- métricas sem owner da definição;
- métricas sem owner da qualidade dos dados;
- métricas sem consumidores;
- métricas nunca utilizadas;
- métricas duplicadas;
- métricas obsoletas;
- métricas sem revisão;
- métricas com baixa confiabilidade;
- métricas sem fonte identificada;
- métricas sem definição;
- métricas sem propósito;
- métricas com dependências quebradas;
- métricas usadas fora do escopo;
- métricas que geram incentivo inadequado.

Métrica auditada com falha relevante DEVE ser corrigida, suspensa, depreciada ou arquivada conforme lifecycle.

## 18. Interpretação e limites

Regras de interpretação:

- uma métrica isolada NÃO DEVE determinar decisão de governança;
- tendências são mais úteis do que leituras pontuais sem contexto;
- correlação NÃO DEVE ser tratada como causalidade sem análise complementar;
- amostras insuficientes DEVEM ser identificadas antes de inferir tendência;
- períodos com fontes, critérios ou escopos diferentes NÃO DEVEM ser comparados sem ressalva;
- ausência de incidentes NÃO prova qualidade absoluta;
- aumento de incidentes PODE indicar melhor detecção;
- redução de falhas PODE indicar melhoria ou subnotificação;
- valor estimado DEVE declarar premissas;
- métricas de agentes DEVEM considerar risco, escopo, produto, ambiente, autonomia e volume de uso;
- métricas NÃO DEVEM ser usadas para punir transparência, reabertura legítima ou registro honesto de falhas.

### 18.1 Lei de Goodhart

Quando uma métrica passa a ser tratada como objetivo absoluto, ela tende a perder sua capacidade de representar corretamente a realidade.

Regras:

- métricas apoiam decisões;
- métricas NÃO substituem julgamento técnico;
- otimizações artificiais são proibidas;
- métricas DEVEM ser interpretadas em conjunto;
- incentivos DEVEM considerar múltiplos indicadores, contexto, risco e efeitos colaterais;
- qualquer sinal de manipulação, gaming ou distorção de comportamento DEVE acionar revisão da métrica.

## 19. Anti-patterns

São proibidos:

- métricas de vaidade;
- comparar agentes com objetivos distintos sem contexto;
- otimizar apenas para uma métrica;
- usar métricas isoladamente;
- alterar comportamento apenas para melhorar indicadores;
- transformar métrica em objetivo absoluto;
- criar incentivo que degrade qualidade, transparência, segurança ou governança;
- coletar métricas sem objetivo;
- manter métricas sem consumidores;
- interpretar ausência de incidentes como prova absoluta de qualidade;
- esconder falhas para melhorar taxa de sucesso;
- reduzir severidade ou prioridade para melhorar relatórios;
- registrar execuções fictícias;
- tratar valor estimado como valor comprovado sem evidência;
- comparar períodos com critérios de coleta diferentes sem ressalva;
- usar amostra pequena como tendência consolidada;
- duplicar métrica com nome diferente;
- manter métrica ativa com fonte quebrada;
- criar dashboards antes de definir significado normativo das métricas.

## 20. Dashboards

Dashboards NÃO fazem parte deste documento.

Dashboards são consumidores das métricas e PODEM existir futuramente com visões diferentes para:

- Engenharia;
- Produto;
- Segurança;
- Governança;
- Auditoria;
- Operações;
- Arquitetura.

Dashboards futuros NÃO DEVEM alterar o significado normativo das métricas. Eles também NÃO DEVEM ocultar limitações, períodos, fontes ou filtros aplicados.

## 21. Preparação para automação futura

Evoluções futuras possíveis, sem implementação nesta versão:

- YAML;
- JSON;
- APIs;
- banco de dados;
- pipelines de coleta;
- dashboards;
- alertas;
- observabilidade;
- integração com CI/CD;
- analytics;
- inteligência preditiva.

Automação futura DEVE preservar:

- independência de fornecedor;
- IDs e histórico;
- fontes rastreáveis;
- classificação da informação;
- propriedade intelectual;
- separação entre coleta, interpretação e decisão;
- possibilidade de auditoria humana;
- compatibilidade com agentes, produtos consumidores e futuros frameworks internos.

## 22. Relação com produtos

Produtos consumidores, incluindo AutoBody ERP e produtos futuros, PODEM consumir métricas da KEP para avaliar adoção, conformidade, incidentes, valor e evolução dos agentes.

Produtos NÃO DEVEM depender de métricas da KEP como substituto de suas próprias métricas de produto, negócio, operação, qualidade ou suporte.

Métricas específicas de produto NÃO pertencem a este documento. Quando uma métrica de agente envolver produto consumidor, ela DEVE registrar produto, baseline, ambiente, fonte, limitação e responsável aplicável, sem copiar código, dados, configurações ou segredos de produto para a KEP.

## 23. Governança do modelo

Este modelo DEVE ser governado pela KEP.

Alterações relevantes DEVEM:

- preservar compatibilidade com KAF, Registry, Incident Register, KES, Policies e modelos arquiteturais;
- registrar impacto em domínios de métricas;
- evitar duplicação de métricas;
- declarar fontes novas ou alteradas;
- atualizar histórico;
- passar por revisão proporcional ao risco.

Métricas que influenciarem decisões de ativação, suspensão, depreciação, risco ou governança de agentes DEVEM possuir evidência auditável.

Métricas `Active` DEVEM possuir lifecycle, owners separados, consumidores, fonte identificada, confiabilidade conhecida, dependências registradas e próxima revisão prevista. Métrica que perder uma dessas condições DEVE ser corrigida, suspensa, depreciada ou arquivada.

## 24. Diagramas ASCII

### Relação entre documentos e métricas

```text
AGENT_FRAMEWORK_MODEL
        │ define limites
        ▼
AGENT_REGISTRY ── define agentes ──┐
        │                           │
        ▼                           │
AGENT_PLAYBOOK_TEMPLATE             │
        │ define execução           │
        ▼                           │
Execuções futuras                   │
        │ geram evidências          │
        ▼                           │
AGENT_INCIDENT_REGISTER             │
        │ registra falhas           │
        ▼                           │
AGENT_METRICS_MODEL ◄───────────────┘
        │ apoia
        ▼
Melhoria contínua
```

### Ciclo de aprendizado por métricas

```text
Medição
   ↓
Interpretação com contexto
   ↓
Revisão humana
   ↓
Decisão governada
   ↓
Melhoria
   ↓
Nova medição
```

## 25. Histórico

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.1 | 2026-07-18 | Ajustes pós-revisão arquitetural: lifecycle das métricas, owners separados, qualidade dos dados, auditoria das métricas, Lei de Goodhart, prevenção de dupla contagem, rastreabilidade ampliada, refinamento de MTTA e fortalecimento das métricas de valor. |
| 0.1.0 | 2026-07-18 | Criação inicial do Modelo Oficial de Métricas de Agentes, com domínios, contrato normativo, métricas mínimas, rastreabilidade, anti-patterns, limites de dashboards e preparação para automação futura. |
