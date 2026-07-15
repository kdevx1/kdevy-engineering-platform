# Revisão Arquitetural do KAF - KDEVY Agent Framework

## Controle da revisão

| Campo | Valor |
| --- | --- |
| Documento revisado | `architecture/AGENT_FRAMEWORK_MODEL.md` |
| Tipo | Revisão arquitetural profunda |
| Classificação | Interno |
| Data | 2026-07-14 |
| Revisor | Chief AI Governance Architect |
| Escopo | Governança de IA, autonomia, permissões, auditoria, segurança, produtos consumidores e sustentabilidade |
| Decisão sugerida | Aprovar com ajustes |
| Nota geral | 8,0 / 10 |

## 1. Resumo executivo

O `AGENT_FRAMEWORK_MODEL.md` estabelece uma fundação forte para governar agentes de IA na KDEVY Engineering Platform (KEP). O documento define objetivo, escopo, princípios, categorias de agentes, níveis de autonomia, matriz de permissões, preservação de worktree, transparência, evidências, auditoria, relação com KEP e produtos, proteção de propriedade intelectual e independência de fornecedor.

A decisão sugerida é **Aprovar com ajustes**. O modelo é coerente, não concede autonomia irrestrita e preserva autoridade humana. Porém, antes do commit, precisa fechar lacunas de governança operacional: lifecycle do agente, estados do agente, owner operacional, suspensão, desativação, revogação ou redução de permissões, expiração de autorizações, gestão de incidentes e matriz de evidências por risco.

O documento não cria burocracia excessiva para a fase atual, mas há risco de que a ausência desses controles deixe permissões e agentes com vida útil indefinida.

## 2. Clareza do objetivo e escopo do KAF

O objetivo está claro: o KAF governa agentes de IA que colaboram com a KEP e produtos consumidores.

Pontos fortes:

- define problemas que o KAF resolve;
- declara que não substitui KEP, KES, Policies, ADRs, owners humanos ou processo decisório;
- diferencia escopo do KAF e fora de escopo;
- evita criar agentes concretos ou prompts concretos.

Lacuna: o escopo fala em ciclo de vida de tarefas de agentes, mas não define ciclo de vida do próprio agente.

## 3. Separação entre KEP, KAF, KES, Policies, governança humana, agentes e produtos

A separação é boa.

- KEP: plataforma proprietária de engenharia.
- KAF: domínio/framework dentro da KEP para governar agentes.
- KES: autoridade normativa técnica.
- Policies: autoridade normativa para propriedade, classificação, segurança, marca e licenciamento.
- Governança humana: autoridade final.
- Agentes de IA: apoio, análise, execução autorizada e validação.
- Produtos consumidores: repositórios próprios, usando KEP como baseline.

Não há indicação de que agentes possam substituir owners humanos.

## 4. Invasão de responsabilidades de outros modelos

O KAF não invade de forma grave o `PLATFORM_MODEL.md`, a KES-0001 ou o `KNOWLEDGE_SYSTEM_MODEL.md`.

Avaliação:

- `PLATFORM_MODEL.md`: o KAF respeita a arquitetura global e declara que não a altera.
- KES-0001: o KAF aplica os princípios de IA responsável, validação, preservação de trabalho e propriedade intelectual, sem tentar redefinir a constituição.
- `KNOWLEDGE_SYSTEM_MODEL.md`: o KAF consome Knowledge e define onboarding para tarefas de conhecimento, sem redefinir o sistema de conhecimento.

Ponto de atenção: as seções de evidências e auditoria podem futuramente cruzar com Standards ou Playbooks. Isso é aceitável agora, desde que futuras operacionalizações sejam feitas em playbooks e não no modelo arquitetural.

## 5. Clareza das categorias de agentes

As categorias são claras e úteis:

- consultivo;
- análise;
- planejamento;
- implementação supervisionada;
- revisão;
- documentação;
- segurança;
- qualidade;
- DevOps;
- auditoria.

Cada categoria tem finalidade, entradas, saídas, permissões, limitações, supervisão e evidências obrigatórias.

## 6. Duplicidades ou responsabilidades concorrentes

Há sobreposição parcial, mas não bloqueante:

- agente de análise e agente de revisão;
- agente de segurança e agente de auditoria;
- agente de qualidade e agente de revisão;
- agente documental e agente consultivo.

Essas sobreposições são naturais, mas o documento deveria explicitar o critério de escolha:

- análise avalia antes ou durante o planejamento;
- revisão avalia uma mudança concreta;
- auditoria verifica evidências e conformidade após ou durante fechamento;
- segurança avalia risco específico de segurança;
- qualidade valida critérios de aceite, testes e builds.

## 7. Clareza dos níveis de autonomia

Os níveis são claros e bem escalonados:

- Nível 0: leitura e consulta;
- Nível 1: sugestão;
- Nível 2: preparação de artefatos;
- Nível 3: implementação supervisionada;
- Nível 4: automação autorizada e limitada.

O documento declara explicitamente que não existe autonomia irrestrita.

Lacuna: faltam critérios de promoção e rebaixamento entre níveis, além de expiração de autorizações.

## 8. Brechas para autonomia irrestrita ou aprovação institucional por IA

Não há brecha direta para autonomia irrestrita.

O documento proíbe:

- aprovar ADR;
- aprovar KES;
- aprovar decisões normativas;
- operar produção sem autorização;
- commit e push sem autorização explícita;
- ações destrutivas sem autorização.

Brecha residual: o Nível 4 permite automação autorizada e limitada, mas ainda não exige prazo de validade, owner operacional, escopo de revogação e revisão periódica. Sem isso, uma automação temporária pode virar autorização permanente por inércia.

## 9. Qualidade da matriz de permissões

A matriz é boa e cobre ações sensíveis essenciais.

Classificações adequadas:

- commit: proibido por padrão;
- push: proibido por padrão;
- alteração de dependências: permitida com supervisão;
- migrations: permitida com supervisão;
- banco de dados: proibida por padrão;
- segurança: permitida com supervisão e autorização;
- segredos: proibido por padrão;
- produção: proibido por padrão;
- releases: proibido por padrão;
- ADR: proibido aprovar;
- KES: proibido aprovar;
- ações destrutivas: proibidas por padrão.

Lacuna: exclusões e force push aparecem em ações destrutivas, mas não estão explicitamente na matriz de permissões. Recomenda-se incluí-las na matriz para reduzir ambiguidade operacional.

## 10. Classificação de risco

A classificação é clara:

- baixo;
- médio;
- alto;
- crítico.

Ela considera código, arquitetura, banco, segurança, propriedade intelectual, produção, dados pessoais, Git, infraestrutura e documentação normativa.

Lacuna: falta uma matriz de evidências mínimas por risco. O texto diz que evidências devem ser proporcionais, mas não define o mínimo esperado para cada nível.

## 11. Supervisão e evidências proporcionais

O princípio está correto e aparece em vários pontos.

Ponto forte: alto e crítico exigem evidência explícita, revisável e atribuível.

Lacuna: a proporcionalidade ainda depende de interpretação. Para virar governança operacional, precisa de uma matriz como:

- baixo: fontes e resumo;
- médio: diff, validação e status;
- alto: plano, autorização, diff, testes, riscos, revisão;
- crítico: autorização explícita, plano de rollback, logs, aprovador humano, auditoria e evidência de encerramento.

## 12. Preservação do worktree

Excelente cobertura.

O documento exige:

- `git status`;
- identificação de alterações preexistentes;
- distinção do próprio trabalho;
- não misturar tarefas;
- não reverter trabalho alheio;
- validar diff;
- não commitar ou fazer push sem autorização explícita.

Isso está compatível com a KES-0001 e com práticas seguras de engenharia.

## 13. Separação entre planejamento, execução, revisão, aprovação e auditoria

A separação é clara, especialmente nos diagramas.

Ponto forte: o documento evita que sugestão, execução e aprovação sejam tratadas como a mesma coisa.

Lacuna: a segregação de funções aparece como princípio, mas não como regra operacional para tarefas de alto e crítico risco.

## 14. Acúmulo de funções incompatíveis

O documento diz que, em mudanças de alto risco, o mesmo agente não deve propor, implementar, aprovar e auditar sozinho.

Isso é correto.

Lacuna: deveria declarar explicitamente que, em risco alto ou crítico, revisão/auditoria deve ser independente da implementação, e aprovação deve ser humana.

## 15. Transparência

A seção é forte.

Cobre:

- fatos;
- inferências;
- incertezas;
- limitações;
- ações executadas;
- validações reais;
- proibição de inventar arquivos, comandos, resultados ou validações.

Ponto de atenção: falta exigir que agentes indiquem validações não executadas quando elas seriam esperadas, mas foram impossíveis ou não autorizadas.

## 16. Evidências obrigatórias

A lista de evidências é boa:

- `git status`;
- `git diff`;
- `git diff --check`;
- logs;
- testes;
- builds;
- análise estática;
- screenshots;
- relatórios;
- hashes;
- arquivos alterados;
- critérios de aceite.

Lacuna: falta matriz por risco e por tipo de tarefa.

## 17. Auditoria de agentes

A auditoria é bem direcionada:

- agente;
- tarefa;
- data e hora;
- contexto;
- autorização;
- ações;
- arquivos afetados;
- comandos;
- validações;
- resultado;
- riscos;
- pendências;
- aprovador humano.

Lacuna: falta incluir incidente, severidade, decisão de suspensão, permissões usadas e referência de autorização quando aplicável.

## 18. Proteção da propriedade intelectual

Boa cobertura.

O documento preserva:

- classificação da informação;
- restrição de exposição;
- cuidado com conteúdo externo e licença;
- proibição de envio a serviços não autorizados;
- proibição de transformar informação confidencial em exemplo público;
- preservação da propriedade da KDEVY.

Compatível com `POL-0001`.

## 19. Proteção de dados pessoais, financeiros e informações classificadas

Boa cobertura.

Inclui:

- senhas;
- tokens;
- chaves;
- `.env`;
- logs sensíveis;
- dados pessoais;
- dados financeiros;
- bancos de produção;
- arquivos de clientes;
- Confidencial e Restrito.

Compatível com `POL-0002`.

## 20. Independência de fornecedor

Bem tratada.

O modelo funciona para:

- Codex;
- ChatGPT;
- agentes locais;
- agentes próprios;
- futuras ferramentas.

Não depende de recurso exclusivo de uma ferramenta.

## 21. Compatibilidade com AutoBody ERP

Compatível.

O documento mantém AutoBody ERP como produto consumidor, não incorpora código de produto e exige contexto específico do produto.

Lacuna: poderia exigir que agentes atuando em produto declarem baseline da KEP ou regras locais relevantes quando a tarefa envolver produto consumidor.

## 22. Compatibilidade com futuros produtos

Boa.

O modelo é genérico e não acopla o KAF ao AutoBody ERP. A regra de produtos em repositórios próprios escala para produtos futuros.

## 23. Onboarding dos agentes

O onboarding é bom:

1. README;
2. Platform Model;
3. KES-0000;
4. KES-0001;
5. políticas aplicáveis;
6. contexto do produto;
7. ADRs;
8. instruções da tarefa.

Ponto forte: inclui Knowledge System para tarefas de conhecimento e POL-0004 para marca.

Lacuna: deveria incluir leitura do próprio KAF como obrigatória para tarefas executadas por agentes.

## 24. Critérios para criação de novos agentes

Os critérios são bons:

- problema claro;
- responsabilidade definida;
- permissões limitadas;
- entradas e saídas conhecidas;
- owner;
- critérios de aceite;
- auditoria;
- justificativa para não reutilizar agente existente.

Isso ajuda a impedir proliferação descontrolada e duplicidade.

Lacuna: falta processo de aprovação, estado inicial e revisão periódica do agente criado.

## 25. Revogação, redução de permissões e suspensão

Esta é a lacuna mais importante.

O documento fala em menor privilégio e permissão limitada, mas não define:

- como reduzir permissões;
- quando revogar acesso;
- quem pode suspender um agente;
- como registrar suspensão;
- como reativar;
- como expirar autorização temporária.

Esse ponto deve ser obrigatório antes do commit.

## 26. Incidentes causados ou identificados por agentes

O modelo não define processo de incidente.

Deveria cobrir:

- incidente causado por agente;
- incidente identificado por agente;
- severidade;
- contenção;
- evidências;
- owner humano;
- comunicação;
- decisão de suspensão;
- registro pós-incidente.

Sem isso, o KAF cobre prevenção, mas não resposta.

## 27. Sustentabilidade pelos próximos anos

Boa, com lacunas controláveis.

O modelo é sustentável porque:

- é independente de fornecedor;
- não cria agentes concretos;
- não cria prompts;
- separa autonomia, risco e evidência;
- preserva governança humana;
- escala para produtos futuros.

Risco de longo prazo: sem lifecycle e revisão periódica, agentes podem acumular permissões, ficar obsoletos ou continuar ativos depois de perderem owner.

## 28. Lacunas solicitadas

| Item | Situação |
| --- | --- |
| Owner operacional | Parcial: há owner provisório, não owner operacional por agente |
| Lifecycle do agente | Ausente |
| Estado do agente | Ausente |
| Processo de suspensão | Ausente |
| Processo de desativação | Ausente |
| Gestão de incidentes | Ausente |
| Revisão periódica de permissões | Ausente |
| Expiração de autorizações | Ausente |
| Segregação de funções | Parcial |
| Matriz de evidências por risco | Ausente |

## 29. Pontos fortes

- Objetivo e escopo claros.
- Forte proteção contra autonomia irrestrita.
- Boa matriz de permissões inicial.
- Excelente preservação de worktree.
- Boa separação entre KAF, KEP, KES, Policies, agentes e produtos.
- Proteção adequada de propriedade intelectual.
- Proteção adequada de dados sensíveis e classificados.
- Independência real de fornecedor.
- Boa compatibilidade com AutoBody ERP e produtos futuros.
- Onboarding inicial útil.
- Critérios de criação de agentes ajudam a evitar duplicação.

## 30. Pontos fracos

- Não define lifecycle do agente.
- Não define estados do agente.
- Não define suspensão, desativação ou reativação.
- Não define expiração de autorizações.
- Não define revisão periódica de permissões.
- Não define gestão de incidentes.
- Não define matriz de evidências por risco.
- Não inclui o próprio KAF na sequência de onboarding.
- Não explicita exclusão de arquivos e force push na matriz de permissões.

## 31. Riscos arquiteturais

### Autorização permanente por inércia

Sem expiração, uma permissão temporária pode se tornar permanente.

### Agente sem owner real

Owner provisório resolve a fundação, mas não sustenta operação contínua.

### Incidente sem fluxo de resposta

Sem gestão de incidentes, o KAF pode detectar riscos sem orientar contenção.

### Permissões acumuladas

Agentes podem acumular permissões ao longo do tempo sem revisão periódica.

### Segregação incompleta

A separação de funções é conceitual, mas precisa virar regra operacional para alto e crítico risco.

## 32. Contradições

Não há contradição grave.

Tensões leves:

- O documento proíbe operar produção por padrão, mas permite Nível 4 de automação autorizada e limitada. Isso é aceitável, desde que Nível 4 tenha escopo, validade, owner e revogação.
- O documento define categorias de agentes, mas a seção de relação entre agentes usa nomes próximos, não idênticos, como agente arquiteto e agente construtor. Isso não quebra o modelo, mas pode gerar ambiguidade entre categoria formal e papel colaborativo.
- O documento exige auditoria, mas não define quando auditoria é obrigatória por risco.

## 33. Lacunas de governança

- Owner operacional por agente.
- Estado do agente: proposto, ativo, suspenso, depreciado, desativado.
- Lifecycle do agente: proposta, aprovação, ativação, revisão, suspensão, reativação, desativação.
- Processo de suspensão por risco.
- Processo de desativação.
- Gestão de incidentes.
- Revisão periódica de permissões.
- Expiração de autorizações temporárias.
- Matriz de evidências por risco.
- Regra de segregação de funções para risco alto e crítico.

## 34. Melhorias obrigatórias antes do commit

1. Adicionar lifecycle do agente, cobrindo proposta, aprovação, ativação, revisão, suspensão, reativação e desativação.
2. Definir estados do agente: proposto, ativo, suspenso, depreciado e desativado.
3. Definir owner operacional por agente ou por categoria de agente.
4. Definir processo mínimo de suspensão quando houver risco, incidente, perda de owner, permissão excessiva ou comportamento não confiável.
5. Definir processo mínimo de desativação e reativação.
6. Definir revisão periódica de permissões e expiração de autorizações temporárias.
7. Definir gestão de incidentes causados ou identificados por agentes.
8. Adicionar matriz de evidências mínimas por risco.
9. Tornar segregação de funções obrigatória para tarefas de alto e crítico risco.
10. Incluir o próprio `architecture/AGENT_FRAMEWORK_MODEL.md` no onboarding de agentes.
11. Incluir exclusão de arquivos e force push explicitamente na matriz de permissões.
12. Clarificar diferença entre categorias formais de agentes e papéis colaborativos como arquiteto, construtor e auditor.

## 35. Melhorias recomendadas para versões futuras

- Criar template de registro de auditoria de agente.
- Criar template de incidente de agente.
- Criar playbooks para tarefas recorrentes por categoria de agente.
- Criar métricas de efetividade, incidentes, retrabalho e qualidade de evidências.
- Criar catálogo de agentes aprovados quando agentes concretos passarem a existir.
- Criar processo de avaliação de ferramentas de IA.
- Criar critérios de confiança por tipo de fornecedor e ambiente.
- Criar diretrizes para logs e retenção de evidências.

## 36. Burocracia desnecessária

O modelo não cria burocracia excessiva para o risco que pretende controlar.

As exigências são proporcionais ao uso de agentes com capacidade de ler, sugerir, editar, executar testes e interagir com produtos. O ponto a observar é manter playbooks e templates simples quando forem criados, para que tarefas de baixo risco não sejam tratadas como incidentes críticos.

## 37. Decisão sugerida

**Aprovar com ajustes.**

Justificativa: o KAF é arquiteturalmente coerente, protege autoridade humana, limita autonomia de IA e se integra bem à KEP. Contudo, faltam controles essenciais de operação contínua: lifecycle, estado, suspensão, desativação, incidentes, expiração de autorizações e matriz de evidências por risco.

## 38. Nota geral

**8,0 / 10**

A nota reflete uma fundação forte de governança de agentes, ainda incompleta em controles operacionais de longo prazo.

## 39. Checklist de aprovação

- [x] Objetivo claro.
- [x] Escopo claro.
- [x] KAF não substitui KEP, KES ou Policies.
- [x] Governança humana preservada.
- [x] Não há autonomia irrestrita.
- [x] Aprovação institucional por IA é proibida.
- [x] Matriz de permissões cobre ações sensíveis principais.
- [x] Worktree e alterações preexistentes são protegidos.
- [x] Transparência e inferências estão bem tratadas.
- [x] Propriedade intelectual e classificação estão protegidas.
- [x] Modelo é independente de fornecedor.
- [ ] Lifecycle do agente definido.
- [ ] Estados do agente definidos.
- [ ] Suspensão e desativação definidas.
- [ ] Incidentes definidos.
- [ ] Expiração de autorizações definida.
- [ ] Revisão periódica de permissões definida.
- [ ] Matriz de evidências por risco definida.
- [ ] Segregação de funções obrigatória para alto e crítico risco.

## 40. Conclusão

O KAF está pronto como modelo conceitual inicial, mas ainda não deveria ser commitado como referência oficial sem os ajustes obrigatórios de governança operacional.

A recomendação é aplicar ajustes pontuais, sem reescrever o documento inteiro, para transformar o KAF de um bom modelo de limites em um modelo sustentável de operação e auditoria de agentes ao longo dos próximos anos.
