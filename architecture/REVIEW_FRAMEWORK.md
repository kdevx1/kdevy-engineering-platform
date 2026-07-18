# Framework Oficial de Revisão da KDEVY Engineering Platform

## 1. Controle documental

| Campo | Valor |
| --- | --- |
| Documento | REVIEW_FRAMEWORK |
| Versão | 0.1.1 |
| Status | Draft |
| Classificação | Interno |
| Domínio | Governance, Architecture, Engineering e Documentation |
| Owner | Governança da KEP |
| Aprovador | A definir pela governança da KEP |
| Última revisão | 2026-07-18 |
| Próxima revisão | A definir pela governança da KEP |
| Referências normativas | `architecture/AGENT_FRAMEWORK_MODEL.md`, `architecture/AGENT_REGISTRY.md`, `architecture/AGENT_INCIDENT_REGISTER.md`, `architecture/AGENT_METRICS_MODEL.md`, `templates/AGENT_TEMPLATE.md`, `templates/AGENT_PLAYBOOK_TEMPLATE.md`, `architecture/PLATFORM_MODEL.md`, `architecture/KNOWLEDGE_SYSTEM_MODEL.md`, `architecture/KEP_MASTER_ROADMAP.md`, `specifications/KES-0000_MASTER_SPECIFICATION.md`, `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md`, `governance/`, `policies/`, `roadmap/` |
| Histórico | Versão 0.1.1 com ajustes pós-revisão arquitetural aplicados ao Framework Oficial de Revisão da KEP. |

## 2. Objetivo

Este documento define o Framework Oficial de Revisão da KDEVY Engineering Platform (KEP).

O framework estabelece o modelo normativo para revisar artefatos da plataforma antes que avancem para validação, entrega, publicação, ativação ou adoção.

O `REVIEW_FRAMEWORK` responde:

> O artefato possui qualidade suficiente para prosseguir?

Ele NÃO responde:

- se o artefato está totalmente conforme, pois isso pertence ao `VALIDATION_FRAMEWORK` futuro;
- se o artefato pode ser publicado, entregue ou ativado, pois isso pertence ao `DELIVERY_FRAMEWORK` futuro;
- se uma decisão normativa está aprovada, pois isso depende da governança aplicável, KES, Policies, ADRs ou owners responsáveis.

Dentro do `REVIEW_FRAMEWORK`, referências a Policies, KES e documentos normativos são avaliadas sob perspectiva preliminar de qualidade, coerência e aparente aderência. Essa análise PODE identificar conflitos, lacunas ou sinais de não conformidade, mas NÃO substitui a validação formal e objetiva do futuro `VALIDATION_FRAMEWORK`. Uma revisão aprovada NÃO constitui prova completa de conformidade normativa.

Revisões avaliam qualidade com base em evidências. Revisões NÃO DEVEM ser usadas para impor preferências pessoais sem fundamento técnico, arquitetural, documental ou de governança.

## 3. Escopo

Este framework se aplica, no mínimo, a:

- documentos;
- especificações;
- políticas;
- templates;
- modelos;
- agentes;
- Playbooks;
- registros;
- frameworks;
- arquitetura;
- documentação técnica.

Fora do escopo:

- executar validação formal de conformidade;
- autorizar entrega, publicação, release ou ativação operacional;
- substituir owners humanos;
- criar código;
- implementar automações;
- criar dashboards;
- definir metas de revisão;
- substituir revisão de segurança, quando exigida por Policy.

## 4. Princípios

### 4.1 Qualidade antes de avanço

Artefatos DEVEM passar por revisão proporcional ao risco antes de avançar para etapas posteriores.

### 4.2 Evidência antes de opinião

Achados DEVEM se basear em evidência, referência, risco, inconsistência, lacuna ou impacto demonstrável.

### 4.3 Proporcionalidade

O esforço de revisão DEVE ser proporcional ao risco, escopo, permanência, impacto e criticidade do artefato.

### 4.4 Independência suficiente

O revisor DEVE possuir independência suficiente para emitir parecer técnico honesto. Em artefatos de alto risco, autor e revisor NÃO DEVEM ser a mesma única autoridade.

### 4.5 Rastreabilidade

Revisões DEVEM registrar escopo, critérios, evidências, achados, decisão, responsáveis e data.

### 4.6 Melhoria contínua

Revisões DEVEM melhorar o artefato e alimentar aprendizado, métricas, conhecimento, Playbooks, padrões e governança quando aplicável.

### 4.7 Reutilização

Revisões DEVEM favorecer padrões existentes, documentos normativos e decisões aceitas antes de criar novas regras ou formatos.

### 4.8 Independência de fornecedor

O framework NÃO DEVE depender de ferramenta, provedor de IA, linguagem, plataforma de CI/CD ou produto específico.

## 5. Dimensões de revisão

### 5.1 Arquitetura

A dimensão Arquitetura avalia se o artefato preserva o modelo lógico da KEP.

Critérios mínimos:

- consistência;
- separação de responsabilidades;
- modularidade;
- escalabilidade;
- reutilização;
- extensibilidade;
- limites entre KDEVY, KEP, produtos, frameworks e agentes;
- compatibilidade com `architecture/PLATFORM_MODEL.md`.

### 5.2 Engenharia

A dimensão Engenharia avalia se o artefato é tecnicamente compreensível, evolutivo e verificável.

Critérios mínimos:

- completude;
- clareza;
- padronização;
- precisão;
- rastreabilidade técnica;
- qualidade estrutural;
- preservação de conteúdo existente quando aplicável;
- compatibilidade com `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md`.

### 5.3 Governança

A dimensão Governança avalia se o artefato possui controles e responsabilidades suficientes.

Critérios mínimos:

- aderência às políticas;
- ownership;
- auditoria;
- versionamento;
- responsabilidades;
- classificação da informação;
- relação com registros oficiais;
- ausência de autoridade implícita indevida.

### 5.4 Documentação

A dimensão Documentação avalia se o artefato é legível, rastreável e utilizável por humanos e agentes de IA.

Critérios mínimos:

- linguagem normativa quando aplicável;
- estrutura;
- referências;
- diagramas;
- exemplos;
- legibilidade;
- ausência de ambiguidades;
- separação entre conteúdo normativo e exemplo não normativo.

### 5.5 Evolução

A dimensão Evolução avalia se o artefato pode crescer sem criar acoplamento, duplicidade ou dívida desnecessária.

Critérios mínimos:

- compatibilidade futura;
- independência tecnológica;
- facilidade de manutenção;
- potencial de evolução;
- preservação histórica;
- clareza de lifecycle;
- integração com roadmap e métricas quando aplicável.

## 5.6 Tipos de revisão

Uma revisão PODE combinar múltiplos tipos. Nem todos os tipos são obrigatórios para todos os artefatos. A seleção DEVE ser proporcional ao risco, impacto e natureza do artefato. Tipos omitidos DEVEM ser justificados quando forem razoavelmente aplicáveis.

### Revisão arquitetural

Avalia:

- coerência estrutural;
- responsabilidades;
- modularidade;
- dependências;
- escalabilidade;
- extensibilidade;
- compatibilidade com a arquitetura da KEP.

### Revisão técnica

Avalia:

- precisão técnica;
- completude;
- consistência;
- viabilidade;
- qualidade de engenharia;
- riscos técnicos.

### Revisão documental

Avalia:

- estrutura;
- clareza;
- linguagem;
- referências;
- terminologia;
- legibilidade;
- consistência editorial.

### Revisão de segurança

Avalia, quando aplicável:

- exposição de dados;
- permissões;
- superfícies de ataque;
- segregação de funções;
- controles;
- ameaças;
- riscos de uso indevido.

### Revisão de governança

Avalia:

- ownership;
- responsabilidades;
- rastreabilidade;
- auditabilidade;
- versionamento;
- aderência preliminar a Policies e especificações.

### Revisão de IA ou agente

Avalia, quando aplicável:

- propósito do agente;
- limites;
- autonomia;
- supervisão;
- evidências;
- riscos de decisão;
- comportamento esperado;
- integração com Agent Registry e Playbooks.

### Revisão de produto

Avalia, quando aplicável:

- aderência ao problema;
- valor esperado;
- impacto;
- experiência;
- dependências;
- riscos de produto;
- sustentabilidade operacional.

## 5.7 Níveis de profundidade

A profundidade DEVE ser definida durante a preparação da revisão. É proibido reduzir a profundidade apenas para acelerar o avanço.

| Profundidade | Aplicação | Características |
| --- | --- | --- |
| Leve | Mudanças pequenas, localizadas e de baixo risco | Escopo restrito, checklist reduzido, evidências proporcionais, normalmente um revisor e sem impacto arquitetural relevante |
| Padrão | Maioria dos artefatos e alterações normais | Análise das dimensões relevantes, checklist completo aplicável, evidências formais e decisão documentada |
| Completa | Artefatos estruturais, normativos ou de maior impacto | Múltiplos tipos de revisão, análise de dependências, riscos e impactos, rastreabilidade ampliada, revisor independente e possível participação de múltiplas funções |
| Extraordinária | Incidentes relevantes, mudanças críticas, conflitos arquiteturais, risco elevado, exigência de auditoria, reabertura excepcional ou impacto sistêmico | Escopo formalmente aprovado, múltiplos revisores, evidências reforçadas, arbitragem definida e registro ampliado das decisões |

## 6. Processo de revisão

O fluxo mínimo de revisão é:

```text
Artefato
    │
    ▼
Preparação
    │
    ▼
Revisão
    │
    ▼
Consolidação
    │
    ▼
Decisão
```

### 6.1 Artefato

O artefato DEVE estar disponível em versão revisável, com escopo e objetivo mínimos.

### 6.2 Preparação

A preparação DEVE identificar:

- artefato revisado;
- versão ou estado;
- escopo da revisão;
- documentos relacionados;
- critérios aplicáveis;
- risco preliminar;
- tipo ou tipos de revisão;
- profundidade;
- responsáveis;
- evidências disponíveis.

### 6.3 Revisão

A revisão DEVE avaliar as dimensões aplicáveis, registrar achados e separar fatos, inferências, riscos e recomendações.

O revisor PODE usar agentes de IA como apoio, desde que mantenha responsabilidade humana, rastreabilidade e validação das evidências.

### 6.4 Consolidação

A consolidação DEVE organizar achados por classificação, remover duplicidades, registrar lacunas e preparar decisão sugerida.

### 6.5 Decisão

A decisão DEVE indicar se o artefato pode prosseguir, prosseguir com ajustes ou deve ser bloqueado.

Decisão de revisão NÃO substitui validação formal nem autorização de entrega.

## 6.6 Reabertura, invalidação e reaproveitamento

### Reabertura da revisão

Uma revisão encerrada PODE ser reaberta quando houver:

- nova evidência relevante;
- erro material;
- mudança significativa no artefato;
- descoberta de risco não considerado;
- conflito com novo documento normativo;
- determinação de Governança, Arquitetura, Segurança ou Auditoria.

A reabertura DEVE registrar:

- motivo;
- solicitante;
- aprovador;
- data;
- escopo reaberto;
- impacto sobre a decisão anterior;
- evidências;
- nova decisão.

O histórico anterior DEVE ser preservado integralmente.

### Invalidação da revisão

Uma revisão anterior deixa de ser válida quando houver:

- alteração material no objetivo;
- mudança significativa de escopo;
- mudança arquitetural;
- alteração de responsabilidades;
- inclusão de novo risco;
- atualização normativa relevante;
- modificação de campos ou seções críticas;
- mudança de versão incompatível com o parecer anterior.

Correções editoriais ou estritamente não materiais PODEM não invalidar a revisão, desde que isso seja documentado.

### Reaproveitamento e revisão por delta

Trabalho de revisão anterior PODE ser reaproveitado somente quando:

- o escopo anterior estiver claramente identificado;
- as partes não alteradas forem verificáveis;
- as evidências permanecerem válidas;
- não houver mudança normativa incompatível;
- as limitações forem registradas;
- o revisor confirmar o delta analisado.

Revisão por delta é análise focada nas mudanças, sem perder a compreensão do impacto sistêmico. É proibido copiar uma decisão anterior sem verificar se suas premissas continuam válidas.

## 7. Classificação dos achados

| Classificação | Definição | Efeito |
| --- | --- | --- |
| Obrigatório | Achado que impede avanço por risco, conflito, lacuna crítica, ambiguidade relevante ou violação de governança | Bloqueia a próxima etapa até correção ou decisão formal |
| Recomendado | Achado que melhora significativamente qualidade, clareza, manutenção ou governança | Não bloqueia avanço, salvo decisão proporcional ao risco |
| Opcional | Sugestão de evolução futura, refinamento ou melhoria incremental | Não bloqueia avanço |

Apenas ajustes obrigatórios bloqueiam a próxima etapa. Achados recomendados ou opcionais NÃO DEVEM ser usados para reprovar artefato sem justificativa proporcional ao risco.

Todo achado obrigatório DEVE possuir condição objetiva de resolução, evidência esperada e responsável ou domínio responsável quando aplicável.

## 8. Resultado da revisão

São permitidas somente três decisões:

| Decisão | Critério |
| --- | --- |
| Aprovado | Não há achados obrigatórios e os riscos residuais são aceitáveis para a próxima etapa |
| Aprovado com ajustes | Há ajustes obrigatórios ou recomendados, mas o artefato possui direção correta e pode avançar após correções delimitadas |
| Reprovado | O artefato possui falha estrutural, conflito normativo, risco inaceitável, escopo inadequado ou lacunas que exigem redesenho significativo |

A decisão DEVE registrar justificativa. Reprovação sem justificativa é proibida.

### 8.1 Aprovado com ajustes

`Aprovado com ajustes` pode conter achados obrigatórios.

Enquanto houver achados obrigatórios pendentes, o artefato permanece bloqueado. O artefato somente PODE avançar após:

- correção verificada; ou
- exceção formal, rastreável, aprovada e com risco residual registrado.

Tipos:

| Tipo | Condição | Efeito |
| --- | --- | --- |
| Aprovado com ajustes não bloqueantes | Contém apenas achados recomendados ou opcionais | Pode avançar conforme regras aplicáveis |
| Aprovado com ajustes bloqueantes | Contém um ou mais achados obrigatórios | Não pode avançar para validação ou entrega até tratamento formal |

A decisão textual, sozinha, NÃO substitui o status dos achados.

### 8.2 Critérios mínimos para nota de 0 a 10

| Faixa | Interpretação | Critérios mínimos |
| --- | --- | --- |
| 0,0 a 2,9 | Crítico | Artefato inadequado, falhas estruturais graves, objetivo ou escopo comprometidos, alto risco e necessidade de reconstrução substancial |
| 3,0 a 4,9 | Insuficiente | Lacunas graves, inconsistências relevantes, baixa rastreabilidade e artefato não pronto para avançar |
| 5,0 a 6,9 | Parcialmente adequado | Estrutura básica presente, múltiplos ajustes obrigatórios, riscos moderados ou altos e necessidade de nova revisão após correções |
| 7,0 a 7,9 | Adequado com ajustes | Base consistente, alguns ajustes obrigatórios ou limitações relevantes e possível aprovação com ajustes bloqueantes |
| 8,0 a 8,9 | Bom | Artefato consistente, riscos controláveis, poucos ajustes obrigatórios e boa maturidade |
| 9,0 a 9,7 | Muito maduro | Alta consistência, forte rastreabilidade, riscos residuais claramente tratados e apenas melhorias menores |
| 9,8 a 10,0 | Excepcional | Maturidade extraordinária, ausência de lacunas relevantes conhecidas, forte evidência e uso restrito devidamente justificado |

Regras:

- a nota é auxiliar;
- decisão e achados prevalecem sobre pontuação;
- nota não pode ocultar riscos críticos;
- revisores DEVEM justificar notas extremas;
- média numérica NÃO elimina divergências qualitativas;
- artefatos com achado crítico NÃO podem ser aprovados apenas por média elevada.

## 9. Checklist normativo

Checklist mínimo:

- [ ] Objetivo claro.
- [ ] Escopo definido.
- [ ] Coerência interna.
- [ ] Consistência com documentos relacionados.
- [ ] Ausência de ambiguidades relevantes.
- [ ] Ausência de conflitos normativos ou arquiteturais.
- [ ] Rastreabilidade suficiente.
- [ ] Auditabilidade suficiente.
- [ ] Reutilização de padrões existentes.
- [ ] Escalabilidade compatível com o propósito.
- [ ] Riscos identificados.
- [ ] Burocracia proporcional ao risco.
- [ ] Linguagem adequada ao tipo documental.
- [ ] Avaliação preliminar de qualidade e aparente aderência às Policies aplicáveis.
- [ ] Avaliação preliminar de qualidade e aparente aderência à KES-0000 e KES-0001 quando aplicável.
- [ ] Compatibilidade com pessoas e agentes de IA.

Itens não aplicáveis DEVEM possuir justificativa quando a ausência puder afetar decisão.

O checklist NÃO substitui validação formal de conformidade normativa.

## 10. Evidências da revisão

Uma revisão DEVE registrar, quando aplicável:

- documentos revisados;
- versão ou estado do artefato;
- tipo ou tipos de revisão;
- profundidade;
- classificação de risco;
- evidências utilizadas;
- critérios aplicados;
- responsáveis;
- data;
- conclusão;
- justificativas;
- limitações;
- comandos executados;
- validações realmente realizadas;
- riscos residuais.

Evidências NÃO DEVEM incluir segredos, credenciais, dados pessoais, dados financeiros, código de produto ou informação classificada além do necessário e autorizado.

## 11. Papéis e responsabilidades

| Papel | Responsabilidades | Limites |
| --- | --- | --- |
| Autor do artefato | Criar ou alterar o artefato, declarar objetivo, escopo, fontes e limitações | Não deve ser a única autoridade de revisão em artefato de alto risco |
| Revisor | Avaliar qualidade, registrar achados, classificar riscos e sugerir decisão | Não substitui aprovador, validação formal ou entrega |
| Arquiteto | Avaliar fronteiras, modularidade, dependências, evolução e coerência estrutural | Não deve impor preferência pessoal sem fundamento arquitetural |
| Governança | Garantir processo, ownership, status, rastreabilidade, políticas e auditoria | Não deve transformar revisão em burocracia sem valor |
| Engenharia | Avaliar precisão técnica, completude, qualidade estrutural e impacto operacional | Não deve aprovar exceção normativa sem autoridade aplicável |

O revisor deve possuir independência suficiente para emitir parecer técnico. Em revisões críticas, RECOMENDA-SE separação entre autor, revisor e autoridade de aprovação.

### 11.1 Independência e conflitos de interesse

O revisor DEVE declarar:

- relação com a autoria;
- participação prévia relevante;
- interesses conflitantes;
- limitações de independência;
- áreas fora de sua competência.

Regras:

- o autor NÃO deve ser o único aprovador do próprio artefato;
- revisão independente é obrigatória para artefatos críticos, normativos ou de alto impacto;
- conflitos materiais exigem substituição do revisor ou segundo parecer;
- independência absoluta pode não ser viável em equipes pequenas, mas a limitação DEVE ser registrada;
- familiaridade com o artefato não invalida automaticamente o revisor;
- ausência de independência DEVE ser compensada por controles proporcionais.

### 11.2 Múltiplos revisores e arbitragem

Múltiplos revisores são obrigatórios ou recomendados quando houver:

- artefatos de risco alto ou crítico;
- mudanças arquiteturais sistêmicas;
- segurança;
- governança normativa;
- agentes com autonomia relevante;
- conflito de interesse;
- divergência técnica substancial;
- revisão extraordinária.

Processo para divergências:

1. registrar os pareceres separadamente;
2. identificar os pontos de divergência;
3. buscar consenso técnico fundamentado;
4. acionar arbitragem quando necessário;
5. registrar decisão, autoridade e justificativa;
6. preservar opiniões divergentes relevantes.

Votação simples NÃO substitui análise técnica.

## 12. Modelo normativo de relatório

Todo relatório formal de revisão DEVE conter, no mínimo:

| Campo | Descrição |
| --- | --- |
| Review ID | Identificador único da revisão |
| Artefato | Caminho, nome ou ID do artefato revisado |
| Versão do artefato | Versão, status ou estado revisado |
| Hash ou referência verificável | Hash, commit, versão, caminho, snapshot ou referência equivalente quando aplicável |
| Tipo ou tipos de revisão | Arquitetural, técnica, documental, segurança, governança, IA/agente ou produto |
| Profundidade | Leve, padrão, completa ou extraordinária |
| Classificação de risco | Risco estimado do artefato ou da mudança revisada |
| Escopo incluído | O que foi avaliado |
| Escopo excluído | O que não foi avaliado |
| Escopo da revisão | O que foi e não foi avaliado |
| Limitações | Restrições, lacunas, evidências ausentes ou competências não cobertas |
| Documentos de referência | Fontes e documentos usados como base |
| Revisores | Pessoas, papéis ou agentes de apoio envolvidos |
| Declaração de independência | Relação com autoria, limitações e competência |
| Conflitos de interesse | Conflitos declarados ou ausência deles |
| Evidências utilizadas | Evidências analisadas durante a revisão |
| Critérios aplicados | Checklist, dimensões, policies, KES ou outros critérios usados |
| Resumo executivo | Síntese objetiva da avaliação |
| Nota | Nota de 0 a 10, quando aplicável |
| Justificativa da nota | Racional da pontuação atribuída |
| Pontos fortes | Aspectos positivos relevantes |
| Riscos | Riscos arquiteturais, técnicos, documentais ou de governança |
| Ajustes obrigatórios | Mudanças que bloqueiam avanço |
| Status de cada achado obrigatório | Aberto, corrigido, exceção aprovada, rejeitado ou pendente |
| Melhorias recomendadas | Mudanças importantes, mas não bloqueantes |
| Sugestões opcionais | Evoluções futuras |
| Exceções formais | Exceções aprovadas, justificativa e risco residual |
| Riscos residuais | Riscos aceitos após a revisão |
| Divergências entre revisores | Pareceres divergentes relevantes e decisão de arbitragem |
| Decisão | Aprovado, Aprovado com ajustes ou Reprovado |
| Condição para avanço | Condições obrigatórias antes da próxima etapa |
| Responsáveis | Autor, revisor e demais responsáveis relevantes |
| Data | Data da revisão |
| Próxima revisão | Quando aplicável |

Relatórios de revisão NÃO DEVEM fingir validações não executadas.

## 12.1 Auditoria das revisões

Auditoria de revisões DEVE permitir identificar:

- revisões sem evidências;
- revisões sem revisor identificado;
- revisões sem escopo;
- revisões sem tipo ou profundidade;
- revisões excessivamente superficiais;
- revisões com duração desproporcional;
- decisões sem justificativa;
- notas incompatíveis com os achados;
- achados obrigatórios encerrados sem evidência;
- conflitos de interesse não declarados;
- reutilização indevida de revisão antiga;
- revisões repetidas sem aprendizado;
- tipos de revisão aplicáveis omitidos sem justificativa;
- artefatos críticos revisados por uma única pessoa sem justificativa;
- exceções não formalizadas.

Auditoria de revisões PODE alimentar o `AGENT_METRICS_MODEL`, sem definir metas numéricas nesta versão.

## 13. Relações com outros artefatos

### 13.1 AGENT_REGISTRY

Revisões de agentes DEVEM considerar status, owner, aprovador, risco, Playbooks, produtos compatíveis e lifecycle definidos no `AGENT_REGISTRY`.

### 13.2 AGENT_INCIDENT_REGISTER

Revisões DEVEM consultar incidentes, near misses, recorrências e ações corretivas quando o artefato revisado afetar agentes, Playbooks, segurança, operação ou governança.

Achados relevantes PODEM originar incidente ou near miss quando houver falha real ou risco material identificado.

### 13.3 AGENT_METRICS_MODEL

Revisões PODEM alimentar métricas de qualidade, governança, incidentes, conhecimento, evolução e valor.

Métricas de revisão devem respeitar o `AGENT_METRICS_MODEL` e não devem substituir julgamento técnico.

Quando implementadas futuramente, métricas de revisão PODEM incluir:

- tempo de revisão;
- quantidade de achados por classificação;
- taxa de retrabalho;
- taxa de reabertura;
- recorrência de achados;
- revisões invalidadas;
- tempo para tratar obrigatórios;
- divergência entre revisores;
- utilização de revisões por delta.

Essas métricas NÃO DEVEM ser usadas isoladamente para avaliar desempenho individual.

### 13.4 VALIDATION_FRAMEWORK futuro

O `VALIDATION_FRAMEWORK` futuro deverá responder se o artefato está conforme critérios objetivos.

O `REVIEW_FRAMEWORK` prepara o artefato para validação, mas NÃO executa validação formal completa.

### 13.5 DELIVERY_FRAMEWORK futuro

O `DELIVERY_FRAMEWORK` futuro deverá responder se o artefato pode ser entregue, publicado, ativado ou liberado.

O `REVIEW_FRAMEWORK` NÃO autoriza entrega por si só.

## 14. Anti-patterns

São proibidos:

- revisão superficial;
- aprovação sem análise;
- reprovação sem justificativa;
- solicitações subjetivas sem fundamento;
- mudanças baseadas apenas em preferência pessoal;
- criação de burocracia sem valor;
- revisão sem evidências;
- alterar escopo durante a revisão;
- fingir que validação ou entrega foram realizadas;
- tratar aderência preliminar como validação formal;
- ignorar documentos normativos aplicáveis;
- ocultar limitações da revisão;
- ocultar conflito de interesse;
- usar nota como substituto de achados;
- aprovar com obrigatórios pendentes sem registrar bloqueio;
- reutilizar revisão inválida;
- reduzir profundidade por conveniência;
- omitir segurança ou produto quando aplicáveis;
- exigir revisão completa quando uma revisão por delta for suficiente;
- fragmentar mudanças para evitar revisão de maior profundidade;
- encerrar achado obrigatório sem evidência;
- aprovar artefato com conflito conhecido sem registrar risco e decisão.

## 15. Evoluções futuras

Possibilidades futuras, sem implementação nesta versão:

- automação parcial das revisões;
- checklists estruturados;
- integração com CI/CD;
- dashboards de qualidade;
- métricas de revisão;
- APIs;
- YAML/JSON;
- templates específicos por tipo de artefato;
- registro estruturado de achados;
- integração com incidentes, métricas e roadmap.

Essas evoluções NÃO concedem permissões, NÃO substituem revisão humana e NÃO implementam validação ou entrega.

## 16. Diagramas ASCII

### Fronteira entre revisão, validação e entrega

```text
Artefato
   │
   ▼
REVIEW_FRAMEWORK
   │ responde: qualidade suficiente para prosseguir?
   ▼
VALIDATION_FRAMEWORK futuro
   │ responde: está conforme critérios objetivos?
   ▼
DELIVERY_FRAMEWORK futuro
   │ responde: pode ser entregue, publicado ou ativado?
   ▼
Entrega governada
```

### Fluxo de revisão

```text
Artefato
    │
    ▼
Preparação
    │
    ▼
Revisão
    │
    ▼
Consolidação
    │
    ▼
Decisão
    │
    ├─ Aprovado
    ├─ Aprovado com ajustes
    └─ Reprovado
```

### Revisão alimentando melhoria contínua

```text
Revisão
   │
   ├─ Achados obrigatórios
   ├─ Melhorias recomendadas
   └─ Sugestões opcionais
        │
        ▼
Conhecimento + Métricas + Roadmap
        │
        ▼
Melhoria contínua da KEP
```

## 17. Histórico

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.1 | 2026-07-18 | Ajustes pós-revisão arquitetural: tipos de revisão, níveis de profundidade, distinção entre ajustes bloqueantes e não bloqueantes, critérios da escala de pontuação, independência e conflitos de interesse, múltiplos revisores e arbitragem, auditoria das revisões, reabertura, invalidação, reaproveitamento, expansão do relatório e fronteira entre revisão preliminar e validação formal. |
| 0.1.0 | 2026-07-18 | Criação inicial do Framework Oficial de Revisão da KEP, com dimensões, processo, classificação de achados, decisões, checklist, evidências, papéis, relatório normativo, relações e evoluções futuras. |
