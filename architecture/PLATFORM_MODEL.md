# Modelo Oficial da KDEVY Engineering Platform

## Controle do documento

| Campo | Valor |
| --- | --- |
| Documento | PLATFORM_MODEL |
| Plataforma | KDEVY Engineering Platform |
| Sigla | KEP |
| Tipo | Modelo arquitetural lógico |
| Classificação | Interno |
| Situação | Inicial |
| Data | 2026-07-13 |

## 1. Resumo executivo

Este documento define o Modelo Oficial da KDEVY Engineering Platform (KEP).

A KEP é a plataforma proprietária de engenharia da KDEVY. Ela organiza identidade institucional aplicada à engenharia, governança, arquitetura, especificações, políticas, conhecimento, padrões, templates, IA, documentação e suporte a produtos consumidores.

Este modelo existe para evitar crescimento desordenado, duplicidade, acoplamento entre empresa e produto, documentos órfãos e conflitos normativos. Ele também serve como referência comum para pessoas, agentes de IA e futuros produtos.

## 2. O que é a KDEVY

A KDEVY é a entidade institucional proprietária dos ativos intelectuais, marcas, plataformas, produtos, documentos, padrões, especificações, decisões, prompts, playbooks e práticas criadas sob sua direção.

A KDEVY governa:

- identidade corporativa;
- propriedade intelectual;
- visão institucional;
- produtos próprios;
- plataformas internas;
- critérios de uso de IA;
- governança de engenharia;
- limites entre empresa, plataforma e produtos.

A KDEVY NÃO é sinônimo da KEP. A KEP é um ativo estratégico da KDEVY.

## 3. O que é a KEP

A KDEVY Engineering Platform (KEP) é a plataforma proprietária de engenharia da KDEVY.

A KEP define como a empresa organiza, documenta, governa, revisa, automatiza e evolui engenharia. Ela não é um produto final para cliente; ela é a base reutilizável que produtos consumidores usam para manter consistência técnica e estratégica.

A KEP fornece:

- modelo de governança;
- arquitetura e blueprint;
- especificações KES;
- decisões ADR;
- propostas KIP;
- políticas internas;
- padrões;
- templates;
- conhecimento estruturado;
- diretrizes para agentes de IA;
- referência para produtos consumidores.

## 4. Relação entre empresa, plataforma e produtos

A relação central é:

```text
KDEVY
  governa e possui
    ↓
KDEVY Engineering Platform (KEP)
  define padrões, conhecimento, políticas e especificações
    ↓
Produtos consumidores
  aplicam a plataforma sem serem incorporados a ela
```

O AutoBody ERP é o primeiro produto consumidor da KEP. Produtos futuros devem seguir a mesma lógica: consumir diretrizes, políticas, especificações e conhecimento da plataforma, mantendo identidade, repositório, ciclo de entrega e código próprios.

## 5. Domínios da plataforma

### Corporate

Responsável por identidade institucional, fundação, marca, visão, missão, valores, cultura e estratégia corporativa aplicáveis à engenharia.

Observação arquitetural: o domínio Corporate pertence conceitualmente à KDEVY. Sua permanência física dentro da KEP é temporária, incubada e motivada por pragmatismo inicial. O modelo da plataforma NÃO depende dessa localização física; se Corporate for extraído para um repositório institucional futuro, a KEP deve manter apenas referências e contratos documentais.

### Governance

Responsável por estado do projeto, métricas, critérios de decisão, maturidade, fluxo de revisão e saúde da plataforma.

### Architecture

Responsável por modelos arquiteturais, fronteiras de repositório, dependências, relações entre documentos, diagramas e revisões técnicas estruturais.

### Engineering

Responsável por princípios constitucionais de engenharia, práticas técnicas, evolução incremental, validação, qualidade e relação entre plataforma e produtos.

### Knowledge

Responsável por glossários, base de conhecimento, conceitos, contexto reutilizável e organização semântica para pessoas e agentes de IA.

### Security

Responsável por classificação da informação, proteção de segredos, limites de acesso, segurança por padrão e restrições de divulgação.

### AI

Responsável por diretrizes de uso de agentes de IA, supervisão humana, rastreabilidade, inferências, validação de diffs e limites de ação.

### Documentation

Responsável por consistência documental, ordem de leitura, links internos, histórico, clareza e documentação compatível com humanos e agentes de IA.

### Standards

Responsável por padrões recorrentes derivados de especificações, decisões e experiência operacional.

### Policies

Responsável por regras obrigatórias de propriedade intelectual, classificação, nomenclatura, segurança, marca, uso e restrições.

### Templates

Responsável por modelos reutilizáveis para ADRs, KIPs, tarefas, revisões e documentos futuros.

### Products

Responsável por representar a relação da KEP com produtos consumidores, sem absorver código, backlog, dados, configurações, segredos ou decisões internas de produto para dentro da plataforma.

Products é um domínio de relacionamento, não um domínio operacional interno da KEP.

## 6. Modelo conceitual da plataforma

```text
┌─────────────────────────────────────────────────────────────┐
│                         KDEVY                                │
│  Identidade, propriedade intelectual, marca e estratégia      │
└──────────────────────────────┬──────────────────────────────┘
                               │ governa
                               ▼
┌─────────────────────────────────────────────────────────────┐
│              KDEVY Engineering Platform (KEP)                │
│                                                             │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐            │
│  │ Corporate   │ │ Governance  │ │ Architecture│            │
│  └─────────────┘ └─────────────┘ └─────────────┘            │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐            │
│  │ Engineering │ │ Knowledge   │ │ Security    │            │
│  └─────────────┘ └─────────────┘ └─────────────┘            │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐            │
│  │ AI          │ │ Standards   │ │ Policies    │            │
│  └─────────────┘ └─────────────┘ └─────────────┘            │
│  ┌─────────────┐ ┌─────────────┐                            │
│  │ Templates   │ │ Docs        │                            │
│  └─────────────┘ └─────────────┘                            │
└──────────────────────────────┬──────────────────────────────┘
                               │ orienta
                               ▼
┌─────────────────────────────────────────────────────────────┐
│                    Produtos consumidores                     │
│             AutoBody ERP e produtos futuros                  │
└─────────────────────────────────────────────────────────────┘
```

## 7. Modelo de documentos

Os documentos da KEP formam camadas de autoridade e execução.

```text
Company Identity / Corporate
        ↓
Foundation / README / Project State
        ↓
Blueprint / Platform Model
        ↓
Policies + KES + ADR
        ↓
Standards + Templates + Knowledge
        ↓
Playbooks futuros + automações futuras
        ↓
Produtos consumidores
        ↓
Feedback de uso
        ↓
KIP / ADR / nova KES / revisão de política
```

Essa sequência não é uma cadeia rígida de aprovação. Ela representa fluxo lógico de entendimento: identidade dá contexto, fundação define base, blueprint e modelo definem arquitetura, documentos normativos governam execução, padrões e templates operacionalizam, produtos aplicam e feedback gera evolução.

## 8. Modelo de dependências

### Quem depende da KES

Dependem das KES:

- padrões técnicos;
- templates normativos;
- produtos consumidores;
- agentes de IA;
- revisões técnicas;
- automações futuras;
- playbooks futuros;
- decisões de engenharia que precisem de base normativa.

### Quem depende das Policies

Dependem das Policies:

- todos os documentos normativos;
- KES;
- ADRs;
- KIPs;
- agentes de IA;
- produtos consumidores;
- scripts e automações;
- documentação corporativa quando tratar propriedade intelectual, classificação, marca ou segurança.

### Quem depende dos ADRs

Dependem dos ADRs:

- blueprint;
- platform model;
- KES futuras;
- roadmap;
- padrões;
- revisores;
- agentes de IA;
- qualquer mudança que precise entender decisões aceitas.

### Quem depende do Blueprint

Dependem do Blueprint:

- KES;
- Platform Model;
- roadmap;
- padrões;
- onboarding;
- agentes de IA;
- produtos consumidores;
- revisões de fronteira arquitetural.

### Quem depende do README

Dependem do README:

- novos membros;
- agentes de IA em primeiro contato;
- revisores externos ao contexto imediato;
- navegação geral do repositório;
- fluxos de onboarding.

O README é porta de entrada, não fonte normativa máxima.

### Quem depende da Company Identity

Dependem da Company Identity:

- documentos corporativos;
- políticas de marca;
- roadmap estratégico;
- produtos consumidores;
- materiais de onboarding;
- agentes de IA;
- decisões de fronteira entre empresa, plataforma e produto.

### Precedência operacional

Para evitar conflito entre documentos normativos, decisórios, operacionais e informativos, a KEP adota a seguinte matriz:

| Tipo | Papel | Precedência | Responsabilidade |
| --- | --- | --- | --- |
| Policies | Regra obrigatória e restritiva | 1 | Definir limites de segurança, propriedade intelectual, classificação, marca e uso |
| KES | Norma técnica de engenharia | 2 | Definir obrigações técnicas e constitucionais da plataforma |
| ADRs | Decisão arquitetural aceita | 3 | Registrar decisões, contexto, alternativas e consequências |
| KIPs | Proposta de evolução | 4 | Propor mudança antes de aceitação formal |
| Standards | Prática recorrente | 5 | Operacionalizar KES, ADRs e experiência validada |
| Playbooks | Execução repetível | 6 | Guiar operação, entrega, revisão ou resposta recorrente |
| Templates | Estrutura reutilizável | 7 | Padronizar criação de documentos e tarefas |
| Knowledge | Contexto informativo | 8 | Explicar conceitos, glossário, aprendizado e referência |
| Roadmap | Direção evolutiva | Variável | Organizar ondas, prioridades e maturidade |

Quando houver conflito, documentos de maior precedência devem orientar a decisão. O Roadmap não deve sobrescrever Policies, KES ou ADRs; ele deve refletir direção e prioridade. Knowledge não deve criar obrigação normativa sem ser promovido para KES, Policy, ADR ou Standard.

### Interfaces entre domínios

Os domínios não devem depender de detalhes internos uns dos outros sem contrato explícito. Cada domínio deve declarar entradas, saídas e limites mínimos.

| Domínio | Entradas | Saídas | Limites mínimos |
| --- | --- | --- | --- |
| Corporate | Identidade, marca, estratégia e decisões institucionais | Diretrizes institucionais e contexto de marca | Não governa código de produto nem normas técnicas da KEP |
| Governance | Estado, métricas, roadmap, riscos e decisões pendentes | Critérios de decisão, maturidade e priorização | Não substitui Policies nem KES |
| Architecture | Blueprint, ADRs, dependências e revisões estruturais | Modelos, fronteiras, diagramas e decisões arquiteturais | Não implementa produto nem cria regra operacional sem KES ou Policy |
| Engineering | KES, Standards, validações e práticas técnicas | Constituição, práticas e critérios técnicos | Não absorve backlog ou código de produto |
| Knowledge | Glossários, aprendizados, contexto e feedback | Conhecimento reutilizável e referências | Não cria obrigação normativa por si só |
| Security | Classificação, riscos, segredos e restrições | Regras de proteção e requisitos de segurança | Prevalece quando houver risco de exposição ou uso indevido |
| AI | Instruções, permissões, contexto e diffs | Sugestões, análises, implementações supervisionadas e revisões | Não aprova decisões normativas autonomamente |
| Standards | KES, ADRs e práticas recorrentes | Padrões aplicáveis | Não contradiz Policies ou KES |
| Products | Baseline da KEP, exceções e feedback | Evidências de adoção, feedback e demandas | Não incorpora código, dados, configurações ou segredos à KEP |

## 9. Modelo de evolução

A KEP deve crescer por ciclos pequenos, rastreáveis e revisáveis.

```text
Necessidade identificada
        ↓
Contexto documentado
        ↓
KIP quando houver proposta de evolução
        ↓
ADR quando houver decisão arquitetural
        ↓
KES quando houver regra normativa
        ↓
Standard quando houver prática recorrente
        ↓
Template ou playbook quando houver execução repetível
        ↓
Produto consumidor aplica
        ↓
Feedback retorna para a KEP
```

Regras de evolução:

- uma necessidade não deve virar padrão antes de maturidade mínima;
- uma decisão estrutural deve passar por ADR;
- uma regra recorrente deve ser considerada para KES ou Standard;
- uma prática repetível deve virar template ou playbook;
- feedback de produto deve gerar revisão, não remendo silencioso.

## 10. Modelo de onboarding

### Novo Desenvolvedor

Ordem recomendada:

1. `README.md`
2. `docs/corporate/README.md`
3. `blueprint/KEP-BLUEPRINT.md`
4. `architecture/PLATFORM_MODEL.md`
5. `specifications/KES-0000_MASTER_SPECIFICATION.md`
6. `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md`
7. `policies/`
8. `templates/`
9. `knowledge/GLOSSARY.md`

### Arquiteto

Ordem recomendada:

1. `architecture/PLATFORM_MODEL.md`
2. `blueprint/KEP-BLUEPRINT.md`
3. `adr/`
4. `specifications/`
5. `policies/`
6. `roadmap/ROADMAP.md`
7. `architecture/`

### Revisor

Ordem recomendada:

1. `README.md`
2. `policies/`
3. `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md`
4. `templates/CODE_REVIEW_TEMPLATE.md`
5. ADRs relacionadas à mudança
6. KES relacionada à mudança
7. diff da alteração revisada

### Agente de IA

Ordem recomendada:

1. instrução do usuário;
2. `README.md`;
3. `architecture/PLATFORM_MODEL.md`;
4. políticas aplicáveis;
5. KES aplicáveis;
6. ADRs relacionadas;
7. arquivos diretamente afetados;
8. validação de diff, caminhos e referências antes de concluir.

## 11. Modelo de governança

```text
Corporate  → governado pela KDEVY
Policies   → governadas pela autoridade de governança da KEP
KES        → governadas por revisão normativa de engenharia
ADR        → governadas por decisão arquitetural aceita
KIP        → governadas como propostas antes de aceitação
Standards  → governados por KES, ADRs e prática recorrente
Templates  → governados por uso operacional e revisão de qualidade
Roadmap    → governado por estratégia e maturidade da plataforma
Products   → governados por seus próprios ciclos, consumindo a KEP
```

### Governança por tipo

| Tipo | Quem governa | Critério principal |
| --- | --- | --- |
| Corporate | KDEVY | Identidade, marca, visão, missão e estratégia |
| Policies | Governança da KEP | Obrigatoriedade, risco, propriedade intelectual e segurança |
| KES | Engenharia da KEP | Norma técnica e constituição de engenharia |
| ADR | Arquitetura da KEP | Decisão aceita e suas consequências |
| KIP | Comunidade interna autorizada | Proposta de evolução |
| Standards | Engenharia da KEP | Prática recorrente e aderente à KES |
| Templates | Engenharia e revisão | Reuso e consistência operacional |
| Roadmap | Governança da KEP | Maturidade, ondas e prioridades |
| Products | Time do produto | Aplicação da KEP sem acoplamento indevido |

### Governança de agentes de IA

Agentes de IA são participantes operacionais supervisionados da KEP. Eles não aprovam autonomamente decisões normativas.

Níveis mínimos de atuação:

| Nível | Capacidade | Limite |
| --- | --- | --- |
| Consulta | Ler, localizar, resumir e explicar documentos | Não altera arquivos |
| Sugestão | Propor ajustes, riscos, alternativas e planos | Não aplica mudança sem autorização ou escopo claro |
| Implementação supervisionada | Editar arquivos dentro do escopo autorizado | Deve validar diffs, caminhos e referências |
| Revisão | Avaliar riscos, consistência e conformidade | Não aprova decisão normativa final |
| Automação autorizada | Executar rotinas aprovadas e auditáveis | Não executa ação destrutiva ou irreversível sem autorização explícita |

Toda ação relevante de agente de IA deve ser auditável e atribuível. Ações destrutivas, irreversíveis, de publicação, remoção, reset, migração ampla ou alteração normativa exigem autorização explícita.

## 12. Modelo de fluxo

```text
Necessidade
    ↓
Discussão
    ↓
Registro de contexto
    ↓
KIP, se for proposta de evolução
    ↓
ADR, se houver decisão arquitetural
    ↓
KES, se houver regra normativa
    ↓
Standard, se houver prática recorrente
    ↓
Template ou playbook, se houver execução repetível
    ↓
Produto consumidor
    ↓
Feedback
    ↓
Nova evolução
```

Nem toda necessidade precisa passar por todas as etapas. A governança deve ser proporcional ao impacto, risco e permanência da mudança.

## 13. Mapa de responsabilidades

| Documento | Quem pode criar | Quem pode revisar | Quem pode aprovar | Quem pode consumir |
| --- | --- | --- | --- | --- |
| README | Engenharia da KEP | Revisores autorizados | Governança da KEP | Todos os membros e agentes autorizados |
| Corporate | Responsáveis institucionais | Governança e revisão de marca | KDEVY | KEP, produtos e agentes autorizados |
| Policies | Governança da KEP | Engenharia, segurança e responsáveis do domínio | Governança da KEP | Todos os domínios e produtos consumidores |
| KES | Engenharia da KEP | Arquitetura, governança e revisores técnicos | Governança normativa da KEP | Produtos, padrões, templates e agentes autorizados |
| ADR | Arquitetura ou engenharia | Revisores técnicos e governança | Responsável arquitetural definido | KES, standards, produtos e agentes autorizados |
| KIP | Qualquer membro autorizado | Comunidade interna e governança | Governança da KEP, se aceita | ADRs, KES e roadmap |
| Standards | Engenharia da KEP | Revisores técnicos | Governança técnica | Produtos e times de engenharia |
| Templates | Engenharia ou revisão | Usuários recorrentes e revisores | Governança operacional | Membros, produtos e agentes autorizados |
| Roadmap | Governança da KEP | Engenharia e estratégia | KDEVY / Governança da KEP | Todos os membros autorizados |
| Knowledge | Membros autorizados e agentes supervisionados | Revisores de conteúdo | Governança de conhecimento | Pessoas, agentes e produtos |
| Playbooks futuros | Engenharia operacional | Revisores técnicos | Governança operacional | Operação, produtos e agentes autorizados |

## 14. Princípios de Evolução

### Evitar crescimento desordenado

Toda nova área deve ter propósito, proprietário lógico, relação com domínios existentes e critério de manutenção.

### Evitar duplicidade

Antes de criar documento novo, deve-se verificar se o conteúdo pertence a KES, ADR, Policy, Standard, Template, Knowledge ou Roadmap.

### Evitar acoplamento

Documentos da KEP não devem absorver código, backlog, incidentes internos ou decisões específicas de produto, salvo quando o objetivo for registrar consumo da plataforma.

### Evitar documentos órfãos

Todo documento deve responder:

- por que existe;
- quem consome;
- que documento o antecede;
- que documentos dependem dele;
- quando deve ser revisado.

### Evitar conflitos

Conflitos devem seguir precedência normativa:

1. políticas aplicáveis;
2. KES-0000 e KES-0001;
3. KES específicas;
4. ADRs aceitas;
5. Standards e Templates;
6. Knowledge e documentos auxiliares.

Quando o conflito persistir, deve-se abrir KIP ou ADR.

## 15. Limites Arquiteturais

### O que pertence à KDEVY

Pertencem à KDEVY:

- marca;
- identidade corporativa;
- propriedade intelectual;
- estratégia institucional;
- plataformas;
- produtos;
- políticas corporativas;
- domínio e ativos digitais;
- decisões institucionais.

Corporate pertence conceitualmente à KDEVY, mesmo quando estiver incubado fisicamente dentro da KEP. A localização física de documentos corporativos não deve alterar a autoridade institucional da KDEVY.

### O que pertence à KEP

Pertencem à KEP:

- blueprint da plataforma;
- modelo oficial da plataforma;
- KES;
- ADRs da plataforma;
- KIPs;
- políticas de engenharia;
- padrões;
- templates;
- conhecimento técnico;
- governança de engenharia;
- diretrizes para IA;
- suporte documental para produtos consumidores.

### O que pertence aos Produtos

Pertencem aos produtos:

- código-fonte;
- backlog;
- releases;
- decisões internas de produto;
- configurações;
- segredos;
- dados operacionais;
- documentação específica de produto;
- validações de produto;
- incidentes e suporte do produto.

Produtos podem consumir a KEP, mas não devem ser incorporados a ela.

A KEP não deve depender do código, dados, configurações ou segredos de um produto para permanecer válida.

### O que pertence aos futuros Frameworks

Futuros frameworks pertencem à KEP quando definirem capacidades reutilizáveis de engenharia, IA, governança, automação, entrega ou documentação.

Eles devem ter:

- owner;
- finalidade;
- versão;
- consumidores;
- status;
- escopo claro;
- relação explícita com KES e Policies;
- critérios de adoção;
- critérios de depreciação;
- plano de substituição ou encerramento;
- limites com produtos;
- documentação compatível com humanos e agentes de IA.

Frameworks internos devem ter lifecycle explícito: proposto, ativo, em depreciação, substituído ou encerrado.

## 16. Compatibilidade com produtos

O modelo é compatível com o AutoBody ERP porque:

- mantém o produto como consumidor da KEP;
- não incorpora código de produto;
- define dependências normativas;
- orienta evolução incremental;
- preserva separação entre plataforma e produto;
- permite feedback do produto para a plataforma.

O modelo é compatível com produtos futuros porque define domínios, dependências, governança, onboarding e limites antes de múltiplos produtos dependerem da KEP.

### Contrato de adoção por produto

Produtos consumidores, incluindo AutoBody ERP e produtos futuros, devem declarar como consomem a KEP.

Cada produto deve manter, em seu próprio contexto, pelo menos:

- versão ou baseline da KEP adotada;
- exceções conhecidas;
- ADRs locais relacionadas ao consumo da KEP;
- evidências de conformidade;
- responsáveis pela adoção;
- feedback relevante para evolução da plataforma.

A KEP deve continuar válida sem depender do código-fonte, dados, configurações ou segredos do produto consumidor.

### Compatibilidade futura

O modelo comporta diferentes formas de produto e capacidade técnica, incluindo:

- aplicações web;
- aplicações mobile;
- APIs;
- SDKs;
- microsserviços;
- cloud;
- integrações;
- agentes de IA;
- futuros frameworks internos.

Essa compatibilidade não significa dependência tecnológica. A KEP deve permanecer conceitual, normativa e reutilizável, sem assumir framework, linguagem, provedor ou arquitetura de runtime específicos.

## 17. Pontos de atenção

- O domínio Corporate está incubado dentro da KEP, mas pertence conceitualmente à KDEVY.
- A migração de marca deve ocorrer por lotes, sem substituições em massa.
- KES futuras devem obedecer KES-0000 e KES-0001.
- Policies devem ser tratadas como obrigatórias quando aplicáveis.
- Produtos não devem transformar a KEP em repositório de produto.
- Agentes de IA devem validar caminhos, referências e diffs antes de concluir alterações.

## 18. Maturidade da plataforma

Nota de maturidade atual: 7,8 / 10.

Justificativa:

- há base forte de fundação, blueprint, governança, policies, ADRs e KES;
- a plataforma já separa empresa, plataforma e produtos;
- KES-0001 oferece constituição de engenharia;
- ainda faltam standards detalhados, playbooks, matriz de conformidade, automações e governança formal de aprovação.

## 19. Conclusão

O Modelo Oficial da KEP estabelece a arquitetura lógica da plataforma e cria uma referência comum para evolução.

A KEP deve crescer como sistema documental e operacional coeso: identidade orienta, governança decide, arquitetura estrutura, especificações normatizam, políticas restringem, padrões operacionalizam, produtos consomem e feedback realimenta a plataforma.

## 20. Histórico de alterações

| Data | Alteração |
| --- | --- |
| 2026-07-13 | Criação do modelo oficial da plataforma. |
| 2026-07-14 | Ajustes pós-revisão arquitetural: limites de Corporate e Products, precedência operacional, interfaces entre domínios, lifecycle de frameworks, governança de agentes de IA, contrato de adoção por produto e compatibilidade futura. |
