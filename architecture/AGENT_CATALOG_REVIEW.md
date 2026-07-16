# Revisão Arquitetural do Catálogo Oficial de Agentes

## Controle da revisão

| Campo | Valor |
| --- | --- |
| Documento revisado | `architecture/AGENT_CATALOG.md` |
| Tipo | Revisão arquitetural profunda |
| Classificação | Interno |
| Data | 2026-07-15 |
| Revisor | Chief AI Governance Architect |
| Escopo | Catálogo de agentes, governança de capacidades, duplicidade, autonomia, produtos consumidores e sustentabilidade |
| Decisão sugerida | Aprovar com ajustes |
| Nota geral | 8,3 / 10 |

## 1. Resumo executivo

O `AGENT_CATALOG.md` cumpre bem o papel de catálogo inicial de capacidades planejadas de agentes da KDEVY Engineering Platform.

O documento é compatível com o KAF, não implementa agentes, não cria prompts, não concede permissões e mantém todos os 16 agentes iniciais em estado `Candidate`. A estrutura de cada agente é consistente e inclui missão, escopo, responsabilidades, limites, autonomia, risco, permissões, proibições, dependências e evidências.

A decisão sugerida é **Aprovar com ajustes**. O catálogo está forte como fundação, mas precisa de ajustes antes do commit para reduzir risco de burocracia e sobreposição: diferenciar melhor alguns pares de agentes, ajustar agentes possivelmente prematuros para `Planned` em vez de `Candidate`, reforçar owner provisório versus owner operacional e adicionar critérios mais objetivos para evolução do catálogo.

## 2. Clareza do objetivo e escopo

O objetivo é claro: organizar capacidades planejadas de IA, impedir duplicação, limitar responsabilidades e apoiar decisões de criação, reutilização, ativação e desativação.

O escopo também está claro:

- contém agentes candidatos, planejados, aprovados, ativos, suspensos, depreciados e desativados;
- exclui prompts, credenciais, segredos, código de produto, configurações de fornecedor, acesso automático e produção.

Ponto forte: o catálogo afirma que a presença de um agente não significa implementação, autorização ou ativação.

## 3. Compatibilidade arquitetural

### Compatibilidade com `AGENT_FRAMEWORK_MODEL.md`

Compatível. O catálogo respeita níveis de autonomia, estados, owner operacional, segregação, evidências e limites de permissões definidos no KAF.

### Compatibilidade com `PLATFORM_MODEL.md`

Compatível. O catálogo não redefine a arquitetura global da KEP e trata agentes como parte do domínio AI/KAF.

### Compatibilidade com `KNOWLEDGE_SYSTEM_MODEL.md`

Compatível. O catálogo usa Knowledge como fonte de contexto e diferencia Documentation Architect de Knowledge Curator.

### Compatibilidade com KES-0000

Compatível. O catálogo preserva KEP como plataforma-mãe, mantém AutoBody ERP como produto consumidor e não copia código de produto.

### Compatibilidade com KES-0001

Compatível. O catálogo respeita propriedade intelectual, separação entre empresa/plataforma/produto, IA supervisionada, validação e rastreabilidade.

## 4. Capacidades sem implementação

O catálogo descreve capacidades planejadas sem implementar agentes.

Não há:

- prompts executáveis;
- configuração de fornecedor;
- credenciais;
- segredos;
- código;
- autorização operacional;
- agente ativo.

## 5. Status dos agentes

Todos os 16 agentes estão marcados como `Candidate`.

Isso cumpre a regra de nunca marcar agentes iniciais como `Active`.

Ponto de atenção: alguns agentes podem estar mais bem classificados como `Planned` futuramente, mas manter todos como `Candidate` é conservador e seguro para a primeira versão.

## 6. Completude dos campos obrigatórios

Cada agente possui:

- missão;
- escopo;
- fora do escopo;
- entradas;
- saídas;
- consumidores;
- owner;
- autonomia máxima;
- risco;
- permissões;
- proibições;
- dependências;
- evidências;
- critérios de ativação;
- critérios de suspensão;
- critérios de depreciação;
- produtos aplicáveis.

Também foi adicionado campo de responsabilidades, o que melhora a rastreabilidade.

## 7. Níveis de autonomia

Os níveis respeitam o KAF.

Não há agente com autonomia irrestrita. A maior autonomia usada é Nível 3 para implementação supervisionada em agentes de implementação, documentação, QA, testes, frontend e backend.

Ponto de atenção: QA e Test Engineering com Nível 3 são aceitáveis quando criam ou executam testes autorizados, mas devem continuar sem aprovação final.

## 8. Autoridade implícita excessiva

Não há autoridade institucional excessiva explícita.

O catálogo proíbe aprovar ADR, KES, release, estratégia, regra de negócio e produção de forma autônoma.

Risco residual: o campo "Permissões" de agentes Nível 3 deve ser interpretado junto do KAF, porque "editar" ou "executar" pode parecer amplo se isolado do contexto de autorização.

## 9. Segregação de funções

A segregação é boa.

O catálogo declara que, para risco alto ou crítico:

- planejamento, implementação, revisão, aprovação e auditoria devem ser distinguíveis;
- implementação e aprovação devem ser separadas;
- auditoria deve ser independente quando possível;
- nenhum agente aprova o próprio trabalho;
- revisão humana é obrigatória.

Isso reduz risco de concentração de poder em agentes.

## 10. Sobreposições específicas

### AGT-REV-001 e AGT-QA-001

Sobreposição moderada.

Diferença atual:

- Engineering Reviewer revisa aderência, critérios, riscos e conformidade.
- QA executa validações, testes/builds e evidências de qualidade.

Recomendação: manter ambos, mas explicitar que QA produz evidência de qualidade e Reviewer avalia mudança/conformidade.

### AGT-QA-001 e AGT-TEST-001

Sobreposição forte.

Diferença atual:

- QA valida critérios e executa testes.
- Test Engineering propõe, cria e executa testes.

Risco: dois agentes competirem sobre execução de testes.

Recomendação obrigatória: delimitar Test Engineering como design/criação de testes e QA como validação de entrega/readiness, ou manter Test Engineering como `Planned` até haver necessidade real.

### AGT-DOC-001 e AGT-KNOW-001

Sobreposição moderada.

Diferença atual:

- Documentation Architect organiza documentos e linguagem.
- Knowledge Curator cuida de lifecycle, referências, conteúdo órfão e classificação.

Recomendação: manter ambos, mas reforçar que Knowledge Curator não é autor documental primário.

### AGT-ARCH-001 e AGT-BE-001

Sobreposição baixa.

Architecture Advisor avalia arquitetura transversal. Backend Engineering Agent atua em backend e APIs. A fronteira está boa.

### AGT-DEVOPS-001 e AGT-REL-001

Sobreposição moderada.

Diferença atual:

- DevOps Advisor avalia pipelines, ambientes e automações.
- Release Advisor consolida readiness, changelog, versão e checklist.

Recomendação: manter ambos, desde que Release Advisor não opere pipelines nem publique releases.

### AGT-AUD-001 e AGT-REV-001

Sobreposição moderada.

Diferença atual:

- Engineering Reviewer revisa mudança técnica/documental.
- Agent Audit Reviewer audita evidências e conformidade de atuação de agentes.

Recomendação: manter ambos; a distinção é saudável.

## 11. Agentes com sobreposição

Sobreposição mais relevante:

- `AGT-QA-001` e `AGT-TEST-001`;
- `AGT-DOC-001` e `AGT-KNOW-001`;
- `AGT-DEVOPS-001` e `AGT-REL-001`;
- `AGT-AUD-001` e `AGT-REV-001`.

Nenhuma sobreposição exige remoção imediata, mas `AGT-TEST-001` é o candidato mais forte a ser mantido como Planned ou fundido futuramente com QA se não houver demanda clara.

## 12. Agentes prematuros

Possivelmente prematuros para o estágio atual:

- `AGT-TEST-001`: pode ser prematuro se ainda não houver estratégia de testes madura separada de QA.
- `AGT-REL-001`: pode ser prematuro se ainda não houver processo de release formal.
- `AGT-DATA-001`: útil para produtos, mas pode ser ativado apenas quando houver fluxo maduro de migrations e dados.

Eles podem permanecer no catálogo como `Candidate`, mas não devem avançar para `Approved` sem necessidade real.

## 13. Agentes ausentes

Não há agente essencial ausente para a fase atual.

Possibilidades futuras, não obrigatórias agora:

- Incident Response Agent, se incidentes de agentes crescerem;
- Dependency Risk Agent, se dependências virarem fluxo recorrente;
- Compliance Evidence Agent, se auditoria formal exigir evidências padronizadas.

Não se recomenda adicioná-los agora para evitar crescimento por quantidade.

## 14. AGT-DOMAIN-001 e AutoBody ERP

O `AGT-DOMAIN-001` está corretamente tratado como agente específico de produto.

Ele é acoplado ao AutoBody ERP por intenção, não por erro arquitetural. O catálogo limita seu produto aplicável ao AutoBody ERP e proíbe inventar regras de negócio como decisões aprovadas.

Ponto de atenção: se surgirem novos produtos com domínio próprio, não se deve reutilizar `AGT-DOMAIN-001`; deve-se criar agentes de domínio específicos ou uma categoria genérica com instâncias por produto.

## 15. Owners provisórios

Os owners provisórios estão tratados corretamente como `Owner a definir`.

O catálogo também declara que agentes sem owner não devem ser ativados.

Ponto de melhoria: o documento poderia diferenciar owner provisório do catálogo, owner operacional de agente e owner de produto consumidor.

## 16. Arquitetura futura

A arquitetura futura está separada do escopo atual.

Componentes como Agent Templates, Agent Registry, Agent Playbooks, Agent Metrics, Agent Capability Matrix e Agent Incident Register aparecem apenas como visão futura, sem implementação prematura.

Isso é adequado.

## 17. Métricas futuras

As métricas futuras estão registradas sem implementação prematura.

A lista é boa:

- tarefas concluídas;
- retrabalho;
- incidentes;
- violações;
- qualidade de evidências;
- tempo de revisão;
- agentes sem uso;
- sobreposição;
- permissões não utilizadas.

## 18. Sustentabilidade

O catálogo é sustentável se for mantido como inventário governado, não como lista crescente de desejos.

Pontos que favorecem sustentabilidade:

- identificadores imutáveis;
- critérios de criação;
- critérios de reutilização;
- regras de fusão/divisão/substituição/depreciação;
- segregação de funções;
- visão futura separada.

Risco principal: crescimento por especialização excessiva.

## 19. Burocracia e estágio atual

O catálogo é extenso para uma plataforma em fundação, mas não é burocrático demais porque todos os agentes estão em `Candidate` e nenhum acesso é concedido.

O risco de burocracia surgirá se cada candidato virar agente ativo antes de haver demanda, owner, playbook, evidência e métrica de valor.

## 20. Pontos fortes

- Todos os agentes estão em `Candidate`.
- Nenhuma permissão automática foi concedida.
- Estrutura de agente é completa e consistente.
- Compatível com KAF, KEP, KES-0000, KES-0001 e Knowledge System.
- Identificadores históricos protegidos contra reuso.
- Arquitetura futura separada do escopo atual.
- Boa proteção contra duplicidade.
- Boa segregação de funções.
- Compatível com fornecedores variados.
- Compatível com AutoBody ERP e produtos futuros.

## 21. Pontos fracos

- Sobreposição forte entre QA e Test Engineering.
- Alguns agentes podem estar prematuros para a fase atual.
- Owner provisório e owner operacional poderiam ser diferenciados com mais clareza.
- Critérios de transição entre Candidate e Planned ainda são genéricos.
- Matriz resumida poderia incluir se o agente é produto-específico ou plataforma-geral.
- Critérios de depreciação por agente são úteis, mas ainda variam bastante em granularidade.

## 22. Riscos arquiteturais

### Crescimento por quantidade

Risco de criar agentes para cada função antes de haver necessidade real.

### Sobreposição operacional

Risco de QA/Test, Doc/Knowledge ou DevOps/Release competirem sobre a mesma tarefa.

### Owners indefinidos

Risco controlado enquanto todos estão Candidate, mas bloqueante para ativação.

### Catálogo confundido com autorização

Risco mitigado por declarações claras, mas deve continuar reforçado.

### Produto específico virar padrão universal

Risco no `AGT-DOMAIN-001`, mitigado por produto aplicável apenas AutoBody ERP.

## 23. Melhorias obrigatórias antes do commit

1. Delimitar melhor `AGT-QA-001` e `AGT-TEST-001`, definindo QA como validação/readiness e Test Engineering como design/criação de testes.
2. Diferenciar explicitamente owner provisório do catálogo, owner operacional do agente e owner do produto consumidor.
3. Adicionar critério objetivo para promover `Candidate` para `Planned`.
4. Adicionar na matriz resumida uma indicação simples de escopo: plataforma, produto ou ambos.
5. Reforçar que agentes prematuros devem permanecer Candidate até haver demanda recorrente e owner operacional.

## 24. Melhorias recomendadas para versões futuras

- Criar revisão periódica do catálogo.
- Criar matriz de capacidades por agente.
- Criar registro de incidentes de agentes.
- Criar template de proposta de novo agente.
- Criar critérios para medir utilidade antes da ativação.
- Criar taxonomia de agentes por plataforma, produto e domínio.
- Criar processo de consolidação de agentes duplicados.

## 25. Decisão sugerida

**Aprovar com ajustes.**

Justificativa: o catálogo é coerente, seguro e compatível com a arquitetura da KEP. As lacunas são pontuais e focadas em reduzir sobreposição e evitar crescimento prematuro.

## 26. Nota geral

**8,3 / 10**

A nota reflete uma boa arquitetura de catálogo inicial, com controles fortes de segurança e autonomia, mas ainda com sobreposição operacional relevante entre alguns agentes.

## 27. Checklist

- [x] Objetivo e escopo claros.
- [x] Compatível com KAF.
- [x] Compatível com Platform Model.
- [x] Compatível com Knowledge System.
- [x] Compatível com KES-0000 e KES-0001.
- [x] Não implementa agentes.
- [x] Não cria prompts.
- [x] Não concede permissões.
- [x] Nenhum agente está Active.
- [x] 16 agentes catalogados.
- [x] Identificadores históricos protegidos.
- [x] Independente de fornecedor.
- [ ] QA e Test Engineering completamente delimitados.
- [ ] Owners diferenciados por tipo.
- [ ] Candidate para Planned com critério mais objetivo.
- [ ] Matriz resumida indica escopo de plataforma/produto.

## 28. Conclusão

O Catálogo Oficial de Agentes está arquiteturalmente válido como primeira versão.

A recomendação é aplicar ajustes pontuais antes do commit, principalmente para evitar sobreposição entre QA e Test Engineering e para reforçar que o catálogo deve crescer por necessidade comprovada, não por quantidade de agentes.
