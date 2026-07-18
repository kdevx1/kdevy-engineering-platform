# Revisão Arquitetural do Modelo Oficial de Métricas de Agentes

## 1. Controle da revisão

| Campo | Valor |
| --- | --- |
| Documento revisado | `architecture/AGENT_METRICS_MODEL.md` |
| Tipo de revisão | Revisão arquitetural completa |
| Data | 2026-07-18 |
| Escopo | Métricas de agentes, governança, incidentes, qualidade, risco, valor, automação futura e melhoria contínua |
| Resultado sugerido | Aprovar com ajustes |
| Nota geral | 8,2 / 10 |

## 2. Resumo executivo

O `AGENT_METRICS_MODEL.md` estabelece uma base sólida para medir agentes da KDEVY Engineering Platform sem implementar dashboards, coletas, código ou KPIs de produto. O documento responde bem por que medir, o que medir e como as métricas devem apoiar aprendizado, governança e melhoria contínua.

A arquitetura está compatível com KAF, Agent Registry, Incident Register, Platform Model, Knowledge System, KES-0000 e KES-0001. Também preserva independência de fornecedor e evita transformar métricas em autorização operacional.

O principal ponto fraco é que o modelo ainda não governa suficientemente o ciclo de vida das próprias métricas. Faltam hierarquia formal entre métricas estratégicas, táticas e operacionais, ownership separado entre definição e qualidade dos dados, critérios mais fortes de qualidade dos dados, auditoria das métricas e tratamento explícito da Lei de Goodhart.

A recomendação é aprovar com ajustes antes do commit.

## 3. Objetivo do modelo

O documento responde de forma clara:

- por que medir: apoiar decisão, aprendizado e melhoria contínua;
- o que medir: operação, qualidade, incidentes, governança, conhecimento, risco, evolução e valor;
- quem utiliza as métricas: engenharia, produto, segurança, governança, auditoria, operações, arquitetura e produtos consumidores;
- como apoiam decisões: por rastreabilidade, interpretação contextual, revisão humana e melhoria.

O foco permanece em melhoria contínua. O documento evita tratar métrica como fim em si mesma e declara que métricas não substituem julgamento técnico.

Lacuna: a relação entre métrica e decisão poderia exigir que cada métrica declare explicitamente quais decisões pode apoiar e quais decisões não pode apoiar.

## 4. Compatibilidade

### AGENT_FRAMEWORK_MODEL

Compatível. O modelo preserva limites de autonomia, responsabilidade humana, rastreabilidade, evidências e independência de fornecedor.

### AGENT_REGISTRY

Compatível. Métricas como agentes ativos, obsoletos, risco, owner e status se conectam naturalmente ao registro.

Lacuna: o modelo ainda não exige que métricas derivadas de agentes preservem versão do agente, status e período de validade.

### AGENT_INCIDENT_REGISTER

Compatível. O domínio Incidentes usa MTTD, MTTA, MTTR, contenção, mitigação, recorrência, near miss, severidade inicial/final e escalonamentos.

Ponto forte: `Resolved` foi corretamente diferenciado de `Closed` ao definir MTTR.

### AGENT_TEMPLATE

Compatível. O modelo não cria agentes nem concede permissões.

Lacuna: métricas poderiam exigir vínculo com identificadores oficiais de agente quando disponíveis.

### AGENT_PLAYBOOK_TEMPLATE

Compatível. O modelo reconhece Playbooks e execuções como fontes futuras.

Lacuna: falta diferenciar explicitamente métrica do documento do Playbook, métrica da execução e métrica agregada.

### PLATFORM_MODEL

Compatível. O documento atua dentro do domínio AI/Governance/Operations e não redefine a arquitetura global da KEP.

### KNOWLEDGE_SYSTEM_MODEL

Compatível. O modelo trata métricas como conhecimento governado e fonte para aprendizado.

### KEP_MASTER_ROADMAP

Compatível. O documento se encaixa na evolução da Agent Foundation e na preparação futura para observabilidade e automação.

### KES-0000 e KES-0001

Compatível. Preserva propriedade intelectual, evolução incremental, governança, rastreabilidade, validação e IA supervisionada.

### Policies e Governance

Compatível. O modelo referencia `policies/` e `governance/`, mas poderia declarar mais explicitamente que classificação da informação, propriedade intelectual, licenciamento e segurança prevalecem sobre coleta e análise de métricas.

## 5. Domínios

Os oito domínios são adequados e equilibrados para a fase atual:

- Operação mede execução e fluxo.
- Qualidade mede aderência e evidências.
- Incidentes mede resposta e aprendizado com falhas.
- Governança mede controles formais.
- Conhecimento mede preservação e reuso.
- Risco mede exposição e mitigação.
- Evolução mede melhoria incremental.
- Valor mede benefício contextual.

Sobreposições aceitáveis:

- Qualidade e Governança se encontram em conformidade documental.
- Incidentes e Risco se encontram em severidade, criticidade e incidentes críticos.
- Conhecimento e Evolução se encontram em lições aprendidas e Playbooks derivados.
- Operação e Valor se encontram em tempo economizado, throughput e eficiência.

Lacunas:

- não há domínio específico de observabilidade, mas ele pode permanecer como capacidade futura;
- não há domínio de adoção por produto, o que é correto para evitar KPIs específicos de produto neste documento;
- não há domínio de custo, e isso é aceitável nesta fase para evitar prematuridade.

## 6. Contrato normativo

O contrato mínimo é bom, mas incompleto para governança de longo prazo.

Campos existentes suficientes:

- nome;
- objetivo;
- definição;
- fórmula conceitual;
- unidade;
- frequência;
- fonte;
- responsável;
- consumidores;
- interpretação;
- limitações;
- anti-patterns.

Campos que deveriam ser obrigatórios antes do commit:

- identificador único da métrica;
- versão da definição;
- owner da definição;
- owner da qualidade dos dados;
- classificação da métrica: estratégica, tática ou operacional;
- tipo: leading ou lagging;
- dependências;
- período de validade ou revisão;
- nível de confiabilidade dos dados.

Sem esses campos, a plataforma consegue definir métricas, mas ainda fica frágil para auditoria, automação futura e evolução para centenas de métricas.

## 7. Hierarquia

O documento ainda não diferencia formalmente métricas estratégicas, táticas e operacionais.

Isso é uma lacuna relevante porque:

- métricas estratégicas orientam direção e investimento;
- métricas táticas orientam governança e priorização;
- métricas operacionais orientam execução e diagnóstico.

Sem essa hierarquia, dashboards futuros podem misturar sinais de natureza diferente e criar leituras equivocadas.

## 8. Dependências

A rastreabilidade conceitual está bem definida na cadeia:

```text
Agente
    ↓
Playbook
    ↓
Execução
    ↓
Incidente
    ↓
Métrica
    ↓
Melhoria
```

O modelo também declara que métricas relevantes devem apontar para suas fontes.

Lacuna: métricas derivadas ainda não precisam declarar dependências formais. Isso aumenta risco de dupla contagem, principalmente entre:

- falhas e incidentes;
- reaberturas de qualidade e reaberturas de incidentes;
- ações corretivas e melhorias implementadas;
- tempo economizado e eficiência operacional.

## 9. Qualidade dos dados

O documento possui critérios de qualidade das métricas, mas ainda não separa qualidade do dado de qualidade da definição da métrica.

Critérios existentes:

- relevância;
- clareza;
- repetibilidade;
- auditabilidade;
- rastreabilidade;
- disponibilidade dos dados;
- custo proporcional;
- utilidade para decisão.

Critérios ausentes que deveriam ser obrigatórios:

- completude;
- consistência;
- atualidade;
- precisão;
- integridade;
- rastreabilidade do dado bruto;
- confiabilidade da fonte;
- tratamento de dados ausentes;
- tratamento de dados duplicados.

## 10. Ciclo de vida das métricas

Não há lifecycle formal da métrica.

Esse é o principal ajuste obrigatório antes do commit. O modelo deveria definir, no mínimo:

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
Deprecated
  ↓
Archived
```

Também deve definir:

- criação;
- revisão;
- atualização;
- suspensão quando a fonte estiver quebrada;
- descontinuação;
- arquivamento;
- preservação histórica;
- proibição de reutilizar identificadores históricos.

## 11. Ownership

O documento possui campo `Responsável`, mas isso é insuficiente.

Deve separar:

- owner da definição: responde pelo significado normativo da métrica;
- owner da qualidade dos dados: responde por completude, atualidade, consistência e integridade;
- consumidor da métrica: usa a métrica para decisão ou aprendizado.

Essa separação evita que uma mesma pessoa ou domínio seja tratado implicitamente como dono do conceito, da coleta, da qualidade e da decisão.

## 12. Métricas de incidentes

As métricas de incidentes estão bem alinhadas ao `AGENT_INCIDENT_REGISTER.md`.

Pontos fortes:

- MTTD considera início estimado e detecção;
- MTTA considera detecção até triagem ou reconhecimento;
- MTTR usa `Resolved`, evitando confundir com `Closed`;
- tempo até contenção e mitigação respeitam estados distintos;
- near miss é tratado como métrica própria;
- severidade inicial e final são preservadas.

Pontos de atenção:

- MTTA deveria escolher uma definição oficial entre reconhecimento e triagem, ou exigir que a implementação declare qual evento usa;
- recorrência precisa de critério formal de agrupamento;
- métricas por agente devem normalizar volume de uso para evitar penalizar agentes mais utilizados.

## 13. Métricas de valor

As métricas de valor são prudentes e evitam metas artificiais.

Pontos fortes:

- valor é contextual;
- tempo economizado exige premissas;
- automação criada não é tratada como valor por si só;
- resposta ao usuário é diferenciada de resolução.

Riscos:

- tempo economizado pode virar estimativa otimista sem baseline;
- eficiência operacional pode punir tarefas de maior complexidade;
- valor entregue pode virar métrica subjetiva sem evidência.

Esses riscos são aceitáveis se o contrato normativo for fortalecido com owner, fonte, confiabilidade e limitações.

## 14. Interpretação

O documento já evita conclusões precipitadas ao afirmar que:

- métrica isolada não determina decisão;
- tendências são preferíveis a leituras pontuais;
- ausência de incidentes não prova qualidade absoluta;
- aumento de incidentes pode indicar melhor detecção;
- redução de falhas pode indicar subnotificação;
- contexto de risco, escopo, produto, ambiente, autonomia e volume deve ser considerado.

Lacunas:

- não trata explicitamente correlação versus causalidade;
- não exige tamanho mínimo de amostra ou advertência quando a amostra for pequena;
- não alerta contra comparação entre períodos com fontes ou critérios alterados;
- não trata explicitamente a Lei de Goodhart.

## 15. Lei de Goodhart

O documento trata indiretamente o problema ao proibir otimizar apenas para uma métrica e alterar comportamento apenas para melhorar indicadores.

Ainda assim, deve incluir uma regra explícita:

> Quando uma métrica vira objetivo absoluto, ela tende a perder valor como medida.

Essa declaração deve vir acompanhada de controles: revisão humana, análise contextual, anti-gaming e avaliação de efeitos colaterais.

## 16. Anti-patterns

Os anti-patterns são bons e cobrem os riscos principais.

Anti-patterns adicionais recomendados:

- usar métrica como meta sem revisar incentivos;
- comparar períodos com critérios de coleta diferentes sem aviso;
- usar amostra pequena como tendência;
- esconder limitações de fonte em dashboards;
- duplicar métrica com nome diferente;
- manter métrica ativa com fonte quebrada;
- usar métrica de valor estimado para justificar decisão irreversível sem evidência complementar.

## 17. Observabilidade

O documento está bem preparado para dashboards, alertas, analytics, observabilidade e inteligência preditiva como evolução futura.

Ponto forte: deixa claro que essas capacidades não são implementadas nesta versão.

Lacuna: deveria declarar que automações de alerta não aprovam decisões, apenas notificam ou escalonam conforme governança.

## 18. Escalabilidade

O modelo suporta a fase atual e crescimento moderado.

Para centenas de agentes e milhares de medições, faltam:

- identificador único da métrica;
- versão;
- lifecycle;
- dependências formais;
- owner de qualidade dos dados;
- representação estruturada futura;
- regras de arquivamento;
- auditoria das métricas.

Sem esses pontos, há risco de catálogo de métricas crescer de forma pouco governável.

## 19. Auditoria das métricas

O documento prevê auditabilidade das métricas, mas ainda não define auditoria das próprias métricas.

Deve incluir auditoria para:

- métricas sem consumidor;
- métricas obsoletas;
- métricas duplicadas;
- métricas nunca utilizadas;
- métricas sem owner;
- métricas com baixa confiabilidade;
- métricas com fonte quebrada;
- métricas sem atualização recente;
- métricas usadas fora do escopo;
- métricas que geram incentivos inadequados.

## 20. Rastreabilidade

A cadeia `Agente -> Playbook -> Execução -> Incidente -> Métrica -> Melhoria` é boa, mas não cobre todos os casos.

Casos adicionais:

- execução sem incidente ainda pode gerar métrica;
- revisão pode gerar métrica sem incidente;
- governança pode gerar métrica sem Playbook;
- conhecimento pode gerar métrica a partir de documentação e não de execução.

Recomenda-se manter a cadeia principal e declarar fluxos complementares.

## 21. Automação futura

Compatível com:

- YAML;
- JSON;
- APIs;
- banco de dados;
- CI/CD;
- dashboards;
- pipelines;
- analytics.

Ponto de atenção: automação futura deve preservar significado normativo, IDs, versões, ownership, histórico, fonte e qualidade dos dados.

## 22. Princípios da KEP

O modelo adere aos princípios da KEP:

- rastreabilidade;
- auditabilidade;
- melhoria contínua;
- independência de fornecedor;
- separação de responsabilidades;
- evolução incremental.

Aderência seria mais forte com lifecycle, hierarquia, ownership separado e auditoria formal das métricas.

## 23. Pontos fortes

- Objetivo claro e bem delimitado.
- Escopo evita implementação prematura.
- Boa separação de domínios.
- Boa conexão com Incident Register.
- Métricas de valor são contextualizadas.
- Anti-patterns relevantes.
- Independência de fornecedor preservada.
- Compatível com humanos e agentes de IA.
- Não cria dashboards, código ou metas numéricas.
- Preserva AutoBody ERP como produto consumidor.

## 24. Pontos fracos

- Não há lifecycle formal das métricas.
- Não há hierarquia estratégica, tática e operacional.
- Contrato normativo não possui ID, versão, owners separados, dependências e tipo leading/lagging.
- Qualidade dos dados ainda é genérica.
- Auditoria das próprias métricas não está definida.
- Lei de Goodhart não aparece explicitamente.
- Dependências entre métricas derivadas não são obrigatórias.
- Risco de dupla contagem ainda existe.

## 25. Riscos arquiteturais

- Crescimento desordenado de métricas sem lifecycle.
- Métricas duplicadas com nomes diferentes.
- Métricas ativas sem consumidor real.
- Dashboards futuros usando métricas sem confiabilidade conhecida.
- Decisões baseadas em amostras pequenas ou contexto incompatível.
- Incentivos ruins por transformar métrica em objetivo absoluto.
- Dupla contagem entre incidentes, falhas, retrabalho, reaberturas e melhorias.
- Valor estimado sendo tratado como valor comprovado.

## 26. Inconsistências

Não há inconsistência bloqueante.

Inconsistências leves:

- `Responsável` no contrato de métrica é amplo demais para cobrir definição, dado e consumo.
- A cadeia de rastreabilidade sugere que toda métrica passa por incidente, mas algumas métricas nascem de execução, revisão, registry ou governança sem incidente.
- MTTA permite duas interpretações: reconhecimento ou triagem.

## 27. Burocracias desnecessárias

O documento não cria burocracia excessiva para a fase atual. A lista de métricas é ampla, mas ainda aceitável porque é conceitual e não exige coleta imediata.

Risco futuro: se todas as métricas forem ativadas ao mesmo tempo, a KEP pode criar carga operacional antes de possuir fontes estruturadas. Recomenda-se ativação incremental por domínio e por necessidade de decisão.

## 28. Ajustes obrigatórios antes do commit

Antes do commit, recomenda-se ajustar o `AGENT_METRICS_MODEL.md` nestes pontos:

1. Adicionar campos obrigatórios ao contrato normativo:
   - ID da métrica;
   - versão da definição;
   - owner da definição;
   - owner da qualidade dos dados;
   - classificação: estratégica, tática ou operacional;
   - tipo: leading ou lagging;
   - dependências;
   - nível de confiabilidade dos dados.

2. Adicionar hierarquia de métricas:
   - estratégicas;
   - táticas;
   - operacionais.

3. Adicionar lifecycle das métricas:
   - Proposed;
   - Draft;
   - Review;
   - Approved;
   - Active;
   - Suspended;
   - Deprecated;
   - Archived.

4. Adicionar critérios de qualidade dos dados:
   - completude;
   - consistência;
   - atualidade;
   - precisão;
   - integridade;
   - rastreabilidade do dado bruto;
   - confiabilidade da fonte;
   - tratamento de dados ausentes e duplicados.

5. Separar ownership:
   - owner da definição;
   - owner da qualidade dos dados;
   - consumidor da métrica.

6. Adicionar auditoria das métricas:
   - sem consumidor;
   - obsoletas;
   - duplicadas;
   - nunca utilizadas;
   - sem owner;
   - baixa confiabilidade;
   - fonte quebrada;
   - sem atualização recente;
   - usadas fora do escopo.

7. Tratar explicitamente a Lei de Goodhart e o risco de métrica virar objetivo absoluto.

8. Declarar regras para dependências e dupla contagem entre métricas derivadas.

9. Ajustar a rastreabilidade para reconhecer fluxos complementares além de incidente.

10. Definir uma escolha normativa ou exigência de declaração para MTTA: reconhecimento, triagem ou ambos como métricas distintas.

## 29. Melhorias recomendadas para versões futuras

- Criar catálogo estruturado de métricas quando houver volume real.
- Definir critérios de ativação incremental de métricas.
- Criar matriz de métricas por decisão suportada.
- Criar modelo de confiabilidade de dados.
- Criar exemplos não normativos de leitura de métricas.
- Integrar futuramente com dashboards e alertas governados.
- Criar visão de métricas por produto consumidor sem incorporar KPIs de produto na KEP.
- Definir métricas compostas apenas após maturidade dos dados primários.

## 30. Decisão sugerida

Aprovar com ajustes.

Justificativa: o modelo é arquiteturalmente correto, prudente e compatível com a KEP. Porém, para ser commitado como modelo oficial, precisa fortalecer governança das próprias métricas: lifecycle, hierarquia, ownership separado, qualidade dos dados, auditoria e Goodhart.

## 31. Conclusão

O `AGENT_METRICS_MODEL.md` é uma boa fundação para governança de métricas de agentes. Ele evita automação prematura e mantém foco em melhoria contínua.

A versão atual é adequada como rascunho arquitetural, mas ainda não deveria ser tratada como modelo oficial completo sem os ajustes obrigatórios listados nesta revisão.
