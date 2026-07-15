# Modelo do Sistema de Conhecimento da KDEVY Engineering Platform

## Controle do documento

| Campo | Valor |
| --- | --- |
| Documento | KNOWLEDGE_SYSTEM_MODEL |
| Plataforma | KDEVY Engineering Platform |
| Domínio | Knowledge |
| Tipo | Modelo arquitetural de conhecimento |
| Classificação | Interno |
| Situação | Inicial |
| Data | 2026-07-14 |

## 1. Resumo executivo

Este documento modela o Sistema de Conhecimento da KDEVY Engineering Platform (KEP).

O Knowledge System define como conhecimento nasce, é classificado, documentado, validado, relacionado, reutilizado, preservado e evoluído dentro da plataforma. Ele não substitui especificações KES, políticas, ADRs, KIPs, padrões ou documentos corporativos. Sua função é explicar a arquitetura lógica que conecta esses elementos como um sistema de conhecimento reutilizável.

O modelo deve servir para pessoas, arquitetos, revisores, agentes de IA, produtos consumidores e futuros frameworks internos. Ele prioriza clareza conceitual, rastreabilidade, preservação de contexto e crescimento controlado.

## 2. O que é conhecimento na KDEVY

Conhecimento, na KDEVY, é qualquer informação estruturada que permite tomar decisões melhores, reduzir ambiguidade, preservar aprendizado e orientar execução futura.

Conhecimento pode ser:

- conceitual, quando define significados, princípios e relações;
- arquitetural, quando descreve modelos, fronteiras, dependências e decisões estruturais;
- normativo, quando estabelece regras obrigatórias;
- técnico, quando descreve comportamento, integração, restrição ou solução de engenharia sem criar obrigação normativa por si só;
- operacional, quando orienta execução, revisão, validação ou entrega;
- histórico, quando registra decisões, mudanças, origem e evolução;
- referencial, quando aponta fontes, índices, mapas, inventários, relações e materiais de consulta;
- contextual, quando explica por que algo existe, para quem serve e quais limites possui;
- semântico, quando padroniza termos e evita múltiplos significados para o mesmo conceito.

Conhecimento NÃO é apenas documentação. Documentos são recipientes. Conhecimento é o conteúdo organizado, validável e reutilizável que esses documentos preservam.

## 3. Objetivos do Knowledge System

O Knowledge System existe para:

- preservar conhecimento estratégico da KDEVY;
- reduzir dependência de memória individual;
- dar contexto para decisões técnicas e institucionais;
- apoiar evolução incremental da KEP;
- permitir que produtos consumidores apliquem a plataforma com consistência;
- orientar agentes de IA com contexto confiável;
- evitar duplicidade, contradição e documentos órfãos;
- transformar aprendizado recorrente em padrões reutilizáveis;
- manter separação clara entre empresa, plataforma e produtos;
- sustentar auditoria, onboarding e revisão.

## 4. Tipos de conhecimento

### Conhecimento institucional

Representa identidade, visão, missão, valores, cultura, estratégia e fundação da KDEVY.

Origem principal: domínio Corporate.

Uso principal: orientar intenção, linguagem, postura e critérios institucionais.

### Conhecimento arquitetural

Representa modelos, limites, dependências, domínios, fluxos e relações estruturais.

Origem principal: domínio Architecture.

Uso principal: impedir acoplamento indevido e orientar evolução da plataforma.

### Conhecimento normativo

Representa regras que orientam ou restringem comportamento.

Origem principal: Policies e KES.

Uso principal: definir o que deve ou não deve ser feito.

### Conhecimento decisório

Representa decisões aceitas, alternativas rejeitadas, impactos e consequências.

Origem principal: ADRs.

Uso principal: preservar raciocínio arquitetural e evitar rediscussões sem novo contexto.

### Conhecimento propositivo

Representa propostas de melhoria ainda em avaliação.

Origem principal: KIPs.

Uso principal: estruturar evolução antes de aceitação.

### Conhecimento técnico

Representa comportamento, restrições, integrações, soluções, padrões de implementação e detalhes técnicos que ajudam a engenharia a operar com clareza.

Origem principal: Engineering, Architecture, Standards, Reviews e documentação técnica autorizada.

Uso principal: explicar como uma solução funciona ou deve ser considerada tecnicamente, sem criar regra obrigatória por si só. Quando um conhecimento técnico precisar virar obrigação, ele deve ser promovido para KES, Policy ou Standard conforme sua natureza.

Diferença: conhecimento técnico não é normativo, porque não impõe regra; não é arquitetural, porque pode tratar detalhe local; e não é operacional, porque pode explicar comportamento sem descrever execução passo a passo.

### Conhecimento operacional

Representa formas recorrentes de executar tarefas, validar mudanças e aplicar padrões.

Origem principal: Standards, Templates, Scripts e futuros Playbooks.

Uso principal: reduzir variação operacional e acelerar execução com qualidade.

### Conhecimento semântico

Representa termos, siglas, definições e relações conceituais.

Origem principal: Glossary e documentos de modelo.

Uso principal: manter linguagem comum entre humanos, agentes de IA e produtos consumidores.

### Conhecimento referencial

Representa índices, mapas, inventários, catálogos, listas de documentos, relações entre fontes e materiais usados para consulta.

Origem principal: README, inventários, glossários, mapas arquiteturais e documentação de navegação.

Uso principal: ajudar pessoas e agentes de IA a localizar conhecimento, entender dependências e descobrir fontes corretas. Conhecimento referencial não substitui conhecimento normativo, decisório, arquitetural ou operacional; ele aponta para eles.

### Conhecimento histórico

Representa origem, migrações, mudanças relevantes, decisões passadas e evolução temporal.

Origem principal: Changelog, ADRs, documentos corporate e inventários.

Uso principal: preservar contexto real sem congelar a evolução futura.

## 5. Tipos documentais

| Tipo documental | Função no conhecimento | Natureza | Pode fazer | Não pode fazer |
| --- | --- | --- | --- | --- |
| README | Entrada, orientação e navegação | Informativa | Orientar leitura, escopo e caminhos | Criar regra normativa sozinho |
| Blueprint | Arquitetura geral da plataforma | Arquitetural | Descrever visão estrutural e componentes | Substituir KES, Policy ou ADR |
| Platform Model | Modelo lógico da KEP | Arquitetural | Definir arquitetura global da KEP | Ser redefinido por modelos de domínio |
| Knowledge System Model | Modelo lógico do conhecimento | Arquitetural | Detalhar o domínio Knowledge | Redefinir a arquitetura global da KEP |
| KES | Especificação normativa | Normativa | Criar obrigação técnica e constitucional | Contrariar KES-0000, KES-0001 ou Policies aplicáveis |
| Policy | Regra obrigatória interna | Normativa | Definir restrições de propriedade, segurança, classificação, licenciamento e uso | Ser relativizada por conveniência operacional |
| ADR | Registro de decisão aceita | Decisória | Registrar decisão, contexto, alternativas e consequências | Funcionar como proposta aberta sem decisão |
| KIP | Proposta de evolução | Propositiva | Propor mudança antes de aceitação | Ser tratado como regra aceita |
| Standard | Padrão reutilizável | Operacional | Operacionalizar prática recorrente validada | Contradizer KES ou Policy |
| Playbook | Roteiro de execução | Operacional | Orientar execução passo a passo de prática conhecida | Criar obrigação normativa sozinho ou esconder decisão arquitetural |
| Template | Estrutura inicial para documentos ou tarefas | Operacional | Padronizar formato e campos mínimos | Determinar conteúdo final sem revisão |
| Review | Avaliação e evidência | Avaliativa | Registrar análise, riscos, lacunas, nota e decisão sugerida | Aprovar autonomamente mudança normativa |
| Glossary | Definição de termos e siglas | Semântica | Padronizar linguagem | Criar política ou decisão arquitetural |
| Roadmap | Direção temporal e ondas de evolução | Estratégica | Ordenar prioridades e maturidade | Sobrescrever Policies, KES ou ADRs |
| Changelog | Registro de mudanças relevantes | Histórica | Preservar histórico de alteração | Ser tratado como fonte normativa primária |
| Inventory | Mapeamento auditável de estado ou migração | Histórica | Registrar ocorrência, classificação e evidência | Ser usado como regra ativa sem documento normativo |
| Corporate document | Identidade institucional e estratégia | Institucional | Orientar identidade, marca e cultura | Governar detalhe técnico sem KEP |

## 6. Relação entre os tipos

Os tipos documentais não possuem a mesma autoridade. Cada um resolve uma classe de problema.

```text
Corporate
  orienta identidade e intenção
    ↓
Blueprint e Platform Model
  modelam a plataforma
    ↓
KES e Policies
  definem regras normativas
    ↓
ADRs
  registram decisões aceitas
    ↓
Standards e Templates
  operacionalizam padrões recorrentes
    ↓
Produtos consumidores
  aplicam conhecimento no contexto de produto
    ↓
Feedback
  alimenta novas propostas, decisões e ajustes
```

KIPs podem surgir em qualquer ponto da cadeia quando houver proposta de evolução ainda não aceita.

Glossary e Knowledge atuam transversalmente, sustentando linguagem comum para todos os demais tipos.

## 7. Cadeia de geração do conhecimento

Conhecimento nasce quando uma necessidade deixa de ser episódica e passa a merecer preservação.

```text
Necessidade ou problema
  ↓
Observação e contexto
  ↓
Discussão ou análise
  ↓
Classificação do tipo de conhecimento
  ↓
Documento adequado
  ↓
Revisão
  ↓
Aceitação ou rejeição
  ↓
Publicação interna
  ↓
Uso por plataforma, IA ou produto
  ↓
Feedback
  ↓
Evolução
```

Nem toda informação deve virar documento novo. O primeiro critério é perguntar se o conhecimento será reutilizado, auditado, ensinado, aplicado por produto ou necessário para agentes de IA.

## 8. Fluxo de evolução

O conhecimento evolui por ciclos pequenos e rastreáveis.

```text
Uso real
  ↓
Lacuna identificada
  ↓
Correção pontual, KIP ou ADR
  ↓
Atualização do documento adequado
  ↓
Validação de links, coerência e autoridade
  ↓
Registro de mudança quando relevante
  ↓
Novo baseline de conhecimento
```

Uma evolução de conhecimento deve preservar:

- contexto anterior quando ainda for necessário;
- links internos;
- separação entre fato, decisão, regra e proposta;
- distinção entre conhecimento ativo e histórico;
- compatibilidade com produtos consumidores.

## 9. Ciclo de vida do conhecimento

| Estado | Significado | Ação esperada |
| --- | --- | --- |
| Observado | Informação percebida, ainda sem estrutura | Avaliar relevância |
| Rascunho | Conhecimento em formação | Revisar escopo e autoridade |
| Proposto | Mudança ou ideia estruturada | Avaliar via KIP, revisão ou discussão |
| Aceito | Conhecimento validado para uso | Publicar e referenciar |
| Ativo | Conhecimento vigente e aplicável | Manter e usar |
| Substituído | Conhecimento trocado por versão melhor | Preservar histórico quando necessário |
| Depreciado | Conhecimento ainda existente, mas não recomendado | Indicar alternativa |
| Arquivado | Conhecimento preservado apenas por histórico | Impedir uso como regra ativa |

### Manutenção, depreciação e arquivamento

Documentos ativos devem ter manutenção periódica proporcional ao seu risco, uso e autoridade. A manutenção mínima deve verificar:

- se o documento ainda possui owner ou domínio responsável;
- se links e referências continuam válidos;
- se a classificação da informação continua adequada;
- se consumidores relevantes ainda dependem do conteúdo;
- se há conflito com KES, Policies, ADRs, Standards ou modelos mais recentes;
- se o conteúdo histórico está claramente separado de regra ativa.

Um documento pode ser marcado como Deprecated, ou Depreciado, quando:

- ainda precisa permanecer acessível por transição ou histórico;
- existe substituto recomendado;
- seu conteúdo foi superado por decisão, regra, modelo ou prática mais recente;
- seu uso ativo deve ser desestimulado.

Um documento depreciado deve indicar, quando aplicável:

- justificativa;
- substituto;
- data ou condição de revisão;
- impacto esperado;
- responsável pela decisão.

Um documento pode ser arquivado quando:

- não for mais fonte ativa de decisão, regra, execução ou referência;
- precisar existir apenas para histórico, auditoria ou rastreabilidade;
- possuir substituto, justificativa ou registro histórico suficiente;
- sua remoção lógica não quebrar consumidores ativos.

Conteúdo arquivado NÃO DEVE ser tratado como regra ativa por pessoas ou agentes de IA.

## 10. Responsabilidades

### Pessoas

Pessoas autorizadas são responsáveis por criar, revisar, contextualizar e aprovar conhecimento conforme sua autoridade.

### Arquitetura

Arquitetura é responsável por manter coerência entre modelos, fronteiras, domínios e dependências.

### Governança

Governança é responsável por definir estado, prioridade, revisão, critérios de aceite e rastreabilidade.

### Knowledge

Knowledge é responsável por organizar conceitos, termos, relações, lacunas, inventários e estrutura semântica.

### Segurança

Segurança é responsável por classificação da informação, proteção contra exposição indevida e restrição de conteúdo sensível.

### IA

Agentes de IA podem apoiar busca, síntese, revisão, comparação, detecção de inconsistência e proposta de estrutura. Eles não aprovam autonomamente conhecimento normativo ou decisões arquiteturais.

### Produtos

Produtos consumidores são responsáveis por declarar como adotam conhecimento da KEP e por preservar seu próprio contexto de produto em repositórios próprios.

### Papéis documentais mínimos

| Papel | Finalidade | Responsabilidades | Limites | Momento de atuação |
| --- | --- | --- | --- | --- |
| Autor | Criar ou alterar conhecimento | Registrar objetivo, contexto, escopo, fontes, impacto e classificação | Não aprova sozinho conteúdo que exija autoridade superior | Criação, alteração e correção |
| Owner | Manter o conhecimento saudável | Zelar por atualização, coerência, links, estado, consumidores e revisão periódica | Não pode contrariar Policies, KES ou ADRs aceitas | Todo o ciclo de vida |
| Revisor | Avaliar qualidade e risco | Verificar clareza, coerência, autoridade, duplicidade, impacto e aderência à KEP | Não substitui aprovador quando houver decisão formal | Antes de aceitação, publicação ou mudança relevante |
| Aprovador | Aceitar mudança conforme autoridade | Confirmar que a mudança pode se tornar ativa, normativa, decisória ou operacional | Não deve aprovar fora de sua autoridade documental | Aceitação, publicação, depreciação ou arquivamento |
| Consumidor | Aplicar conhecimento no contexto correto | Usar documento vigente, respeitar classificação e reportar lacunas | Não pode tratar proposta, review ou histórico como regra ativa | Uso, adoção e feedback |
| Agente de IA | Apoiar criação, análise e manutenção supervisionada | Consultar, resumir, sugerir, revisar, identificar lacunas e declarar inferências relevantes | Não aprova, publica, deprecia ou arquiva autonomamente | Consulta, sugestão, revisão e implementação supervisionada |

## 11. Governança do Knowledge System

O Knowledge System deve obedecer aos limites de autoridade dos documentos.

```text
Policies
  prevalecem em regras obrigatórias de propriedade, segurança e classificação

KES
  prevalecem em especificações normativas da plataforma

ADRs
  prevalecem em decisões arquiteturais aceitas

KIPs
  representam proposta, não regra aceita

Standards e Templates
  operacionalizam práticas, mas não criam autoridade normativa sozinhos

Knowledge e Glossary
  esclarecem conceitos, mas não substituem políticas ou especificações
```

Políticas de propriedade intelectual, classificação da informação, segurança e licenciamento prevalecem sobre conveniência operacional, reutilização, automação, produtividade local ou sugestão de agente de IA.

Quando houver conflito, a primeira ação deve ser identificar a natureza do conflito:

- conflito de significado;
- conflito normativo;
- conflito arquitetural;
- conflito histórico;
- conflito operacional.

Depois, o ajuste deve ocorrer no documento com autoridade correta.

## 12. Relação com IA

O Knowledge System existe também para tornar a atuação de agentes de IA mais confiável.

Agentes de IA devem usar o conhecimento da KEP para:

- entender contexto antes de propor mudanças;
- diferenciar KDEVY, KEP, Corporate e produtos;
- localizar documentos com autoridade adequada;
- detectar duplicidades e contradições;
- sugerir documentação faltante;
- resumir decisões sem apagar contexto;
- preservar links, histórico e classificação da informação.

Agentes de IA não devem:

- tratar conhecimento histórico como regra ativa;
- transformar proposta em decisão;
- divulgar conteúdo interno;
- inferir autoridade normativa quando o documento for apenas informativo;
- misturar código de produto com conhecimento da plataforma;
- substituir revisão humana em decisões de governança.

Agentes de IA DEVEM declarar inferências relevantes, especialmente quando relacionarem documentos, classificarem autoridade, identificarem impacto ou sugerirem alteração em conhecimento ativo.

### Matriz de limites de IA

| Ação | Classificação | Condição |
| --- | --- | --- |
| Consultar | Permitido | Respeitar classificação da informação e autorização de acesso |
| Sugerir | Permitido | Manter a sugestão revisável por pessoa autorizada |
| Criar rascunho | Permitido com supervisão | Não publicar autonomamente |
| Revisar | Permitido com supervisão | Apoiar revisão humana sem substituir aprovação |
| Alterar | Permitido com supervisão | Validar diff, escopo, referências e impacto |
| Aprovar | Proibido | Não aprovar autonomamente conhecimento normativo, decisório ou sensível |
| Publicar | Permitido com supervisão | Exigir autorização explícita e processo definido |
| Depreciar | Proibido | Exigir autorização explícita de responsável humano |
| Arquivar | Proibido | Exigir autorização explícita de responsável humano |

IA NÃO DEVE aprovar autonomamente conhecimento normativo. IA NÃO DEVE arquivar ou depreciar documentos sem autorização explícita. IA DEVE respeitar propriedade intelectual, classificação da informação, segurança e licenciamento.

## 13. Relação com produtos

Produtos consumidores, começando pelo AutoBody ERP, consomem conhecimento da KEP sem fazer parte operacionalmente deste repositório.

Um produto pode consumir:

- princípios;
- políticas;
- especificações;
- padrões;
- templates;
- glossário;
- modelos arquiteturais;
- diretrizes de IA;
- conhecimento histórico aplicável.

Um produto não deve depender de caminhos internos instáveis da KEP como contrato permanente. Quando necessário, o produto deve declarar baseline, exceções, decisões locais e evidências de conformidade.

## 14. Relação com KEP

O `architecture/PLATFORM_MODEL.md` define a arquitetura global da KEP.

Este documento detalha apenas o domínio Knowledge. Ele NÃO redefine a arquitetura global da plataforma, não altera a autoridade de Policies, KES, ADRs ou Roadmap e não substitui o Platform Model.

Knowledge é o domínio da KEP responsável por organizar conceitos, relações, contexto, aprendizado e estrutura semântica.

KEKB é a base organizada de conhecimento da KEP. Ela reúne documentos, glossários, modelos, inventários e referências de conhecimento.

Knowledge System é o modelo arquitetural que governa criação, relação, evolução, consumo e preservação do conhecimento.

Knowledge, KEKB e Knowledge System NÃO são sinônimos:

- Knowledge é o domínio.
- KEKB é a base organizada.
- Knowledge System é o modelo de funcionamento.

O Knowledge System é parte da KEP. Ele não é uma plataforma separada.

```text
KDEVY Engineering Platform (KEP)
        │
        ▼
Knowledge domain
        │
        ├── KEKB
        │     ├── Glossary
        │     ├── Models
        │     ├── Inventories
        │     └── Context
        │
        └── Knowledge System
              governa criação, relação, evolução e preservação
```

## 15. Relação com Corporate

Corporate pertence conceitualmente à KDEVY. Enquanto estiver incubado dentro da KEP, ele fornece contexto institucional ao Knowledge System.

O Knowledge System deve consumir Corporate para entender:

- identidade;
- visão;
- missão;
- valores;
- cultura;
- estratégia;
- diretrizes de marca;
- história institucional.

O Knowledge System não deve absorver Corporate como se fosse conhecimento técnico da plataforma. A fronteira deve permanecer clara: Corporate orienta a empresa; Knowledge organiza conhecimento reutilizável da plataforma.

## 16. Modelo conceitual

```text
                         KDEVY
                           │
                           ▼
                   Corporate Knowledge
                           │
                           ▼
┌─────────────────────────────────────────────────────────────┐
│          KDEVY Engineering Platform Knowledge System         │
├─────────────────────────────────────────────────────────────┤
│ Conceitos │ Decisões │ Regras │ Padrões │ História │ Contexto │
└─────────────────────────────────────────────────────────────┘
       │          │         │        │          │          │
       ▼          ▼         ▼        ▼          ▼          ▼
   Glossary     ADRs    KES/Policies Standards Changelog  Models
       │          │         │        │          │          │
       └──────────┴─────────┴────────┴──────────┴──────────┘
                           │
                           ▼
                  Humanos e agentes de IA
                           │
                           ▼
                  Produtos consumidores
```

## 17. Diagramas ASCII

### Autoridade documental

```text
Maior autoridade normativa
        │
        ▼
Policies ──► KES ──► ADRs ──► Standards ──► Templates
   │          │        │          │             │
   ▼          ▼        ▼          ▼             ▼
 Segurança  Regras  Decisões   Práticas     Estrutura

Knowledge e Glossary atravessam todos os níveis como camada semântica.
```

### Fluxo de aprendizado

```text
Produto ou plataforma encontra uma lacuna
        ↓
Knowledge registra contexto e termos
        ↓
Architecture avalia impacto estrutural
        ↓
Governance define caminho de decisão
        ↓
KIP, ADR, KES, Policy ou Standard é atualizado
        ↓
Produto ou plataforma aplica
        ↓
Feedback retorna ao Knowledge System
```

### Separação entre conhecimento e produto

```text
KEP Knowledge System
  define conceitos, padrões e contexto
        │
        ▼
Produto consumidor
  aplica no seu próprio repositório
        │
        ▼
Feedback
  retorna sem copiar código, dados ou segredos do produto
```

## 18. Matriz de responsabilidades

| Tipo de conhecimento | Pode criar | Pode revisar | Pode aprovar | Pode consumir |
| --- | --- | --- | --- | --- |
| Institucional | Corporate autorizado | Governança e liderança | Governança institucional | KEP, produtos, IA autorizada |
| Arquitetural | Arquitetura | Arquitetura e engenharia | Governança técnica | KEP, produtos, IA autorizada |
| Normativo | Engenharia, segurança ou governança | Revisores técnicos | Autoridade definida pela KEP | KEP, produtos |
| Decisório | Arquitetos e responsáveis técnicos | Revisores envolvidos | Responsável pela decisão | KEP, produtos, IA autorizada |
| Propositivo | Qualquer membro autorizado | Responsáveis do domínio | Não se aplica até aceitação | Revisores e governança |
| Operacional | Engenharia e operações | Revisores técnicos | Responsável do domínio | Times e agentes autorizados |
| Semântico | Knowledge e autores de domínio | Knowledge, arquitetura e IA assistiva | Responsável do domínio | Todos os consumidores autorizados |
| Histórico | Autores da mudança | Governança ou revisão documental | Responsável pelo registro | Todos os consumidores autorizados |

## 19. Regras para crescimento do conhecimento

O conhecimento deve crescer com intenção.

Antes de criar um novo documento, deve-se avaliar:

- se já existe documento com a mesma finalidade;
- se o novo conteúdo pertence a KES, Policy, ADR, KIP, Standard, Template, Glossary ou modelo;
- se o conhecimento é ativo, histórico ou propositivo;
- quem será responsável por manter o documento;
- quais documentos dependem dele;
- se há links internos suficientes;
- se há risco de expor informação restrita;
- se o documento será útil para humanos e agentes de IA;
- se o conteúdo pertence à KEP, à KDEVY, a produto ou a framework futuro.

Conhecimento novo deve ter:

- propósito claro;
- escopo delimitado;
- relação com documentos existentes;
- classificação de informação;
- owner ou domínio responsável;
- critérios mínimos de revisão;
- indicação de estado quando aplicável.

### Análise de impacto

Qualquer mudança relevante em conhecimento deve registrar ou avaliar:

- documentos afetados;
- produtos afetados;
- agentes de IA afetados;
- riscos de propriedade intelectual, segurança, governança ou classificação;
- compatibilidade com KES, Policies, ADRs, Standards e modelos vigentes;
- necessidade de atualizar referências, links, glossário, README, roadmap, changelog ou inventários;
- impacto sobre consumidores internos e produtos consumidores;
- existência de conteúdo histórico que não deve ser tratado como regra ativa.

Mudanças pequenas podem registrar essa análise de forma resumida. Mudanças estruturais devem tornar o impacto explícito no documento, ADR, Review, KIP ou registro adequado.

## 20. Riscos arquiteturais

### Crescimento desordenado

Risco de criar documentos para cada ideia sem integração com a arquitetura de conhecimento.

Mitigação: exigir classificação documental e relação com documentos existentes.

### Duplicidade semântica

Risco de termos ou conceitos aparecerem com significados diferentes.

Mitigação: manter glossário e revisar nomes antes de criar novos conceitos.

### Autoridade confusa

Risco de um README, template ou inventário ser tratado como regra normativa.

Mitigação: explicitar natureza documental e precedência.

### Conhecimento órfão

Risco de documentos sem owner, sem links e sem uso real.

Mitigação: revisar periodicamente documentos sem dependências ou consumidores.

### Acoplamento com produtos

Risco de conhecimento da KEP depender de código, dados ou decisões internas de produto.

Mitigação: manter produtos como consumidores, não como parte operacional da plataforma.

### IA sem contexto suficiente

Risco de agentes de IA inferirem relações erradas ou aplicarem conhecimento histórico como vigente.

Mitigação: fortalecer metadados, estados, links e distinção entre ativo, proposto e histórico.

## 21. Princípios de preservação do conhecimento

### Contexto antes de conclusão

Todo conhecimento relevante deve preservar o motivo pelo qual existe, não apenas sua conclusão.

### Autoridade explícita

Cada documento deve deixar claro se informa, propõe, decide, normatiza ou operacionaliza.

### Separação de domínios

Conhecimento institucional, técnico, normativo, histórico e de produto não deve ser misturado sem fronteira clara.

### Reutilização responsável

Conhecimento deve ser reutilizável, mas sempre respeitando classificação da informação, propriedade intelectual e contexto.

### Evolução rastreável

Mudanças relevantes devem permitir entender o que mudou, por que mudou e quais impactos existem.

### Compatibilidade com IA

Documentos devem ser compreensíveis por humanos e agentes de IA, com termos estáveis, relações explícitas e links coerentes.

### Preservação sem fossilização

Histórico deve ser preservado quando útil, mas conhecimento antigo não deve bloquear evolução necessária.

### Produto como consumidor

Produtos devem consumir conhecimento da KEP sem transferir para ela código, dados, segredos ou responsabilidades operacionais próprias do produto.

## 22. Critérios de maturidade

O Knowledge System será considerado mais maduro quando:

- os principais conceitos tiverem definição única;
- documentos tiverem owners claros;
- conflitos de autoridade forem raros e resolvidos no documento correto;
- produtos consumidores conseguirem declarar adoção da KEP sem ambiguidade;
- agentes de IA conseguirem localizar contexto confiável antes de agir;
- documentos históricos estiverem separados de documentos ativos;
- novos conhecimentos forem criados por necessidade real, não por impulso organizacional;
- a plataforma conseguir crescer sem perder navegabilidade.

## 23. Histórico de alterações

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.0 | 2026-07-14 | Criação inicial do modelo do Sistema de Conhecimento da KDEVY Engineering Platform. |
| 0.1.1 | 2026-07-14 | Ajustes pós-revisão arquitetural: inclusão de conhecimento técnico e referencial, tipos documentais Playbook e Review, responsabilidades mínimas, limites de IA, análise de impacto e lifecycle documental. |
