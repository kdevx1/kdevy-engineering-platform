# KDEVY Engineering Platform

## Visão geral

A KDEVY Engineering Platform, ou KEP, é a plataforma-mãe proprietária de engenharia da KDEVY.

Ela reúne governança, conhecimento, especificações, políticas, padrões, documentação, práticas de IA, automação e entrega. Seu objetivo é criar uma base consistente para humanos e agentes de IA trabalharem com clareza, rastreabilidade e proteção da propriedade intelectual.

A KEP é separada dos repositórios de produtos. O AutoBody ERP é o primeiro produto que consumirá a KEP, mas seu código-fonte não deve ser copiado para este repositório.

## Princípios

- A KEP pertence à KDEVY.
- Este repositório usa apenas licença interna proprietária.
- A KEP é a plataforma-mãe.
- A KEKB é apenas o módulo de conhecimento dentro da KEP.
- Produtos consomem a KEP sem serem incorporados a ela.
- Documentos devem ser úteis para pessoas e agentes de IA.
- Decisões importantes devem ser registradas.
- Políticas internas prevalecem sobre conveniências locais.

## Estrutura

```text
kdevx-engineering-platform/
├── .github/          # Governança de revisão no GitHub
├── assets/           # Materiais visuais, blueprint e marca
├── blueprint/        # Arquitetura conceitual da KEP
├── docs/             # Documentação institucional e complementar
├── governance/       # Estado, métricas e governança
├── knowledge/        # KEKB, a base de conhecimento da KEP
├── specifications/   # KES, especificações de engenharia
├── policies/         # Políticas internas
├── standards/        # Padrões técnicos e operacionais
├── templates/        # Modelos reutilizáveis
├── adr/              # Registros de decisão arquitetural
├── kip/              # Propostas de melhoria da KEP
├── roadmap/          # Roadmap por ondas
├── scripts/          # Automações futuras
├── README.md         # Visão geral
├── CHANGELOG.md      # Histórico de mudanças
├── CONTRIBUTING.md   # Guia de contribuição
└── LICENSE_INTERNAL.md
```

## Arquitetura conceitual

A arquitetura inicial da KEP é descrita em `blueprint/KEP-BLUEPRINT.md`.

Resumo dos componentes:

- KEP: plataforma-mãe de engenharia da KDEVY.
- KEKB: módulo de conhecimento dentro da KEP.
- KES: especificações de engenharia.
- KAF: framework de IA.
- KGF: framework de governança.
- KAP: plataforma de automação.
- KDF: framework de entrega.
- Produtos: sistemas consumidores, começando pelo AutoBody ERP.

## Roadmaps e estado

`roadmap/ROADMAP.md` preserva o roadmap fundacional e histórico inicial por ondas.

`architecture/KEP_MASTER_ROADMAP.md` é o roadmap estratégico mestre atual da KEP.

`governance/PROJECT_STATE.md` registra o estado factual corrente da plataforma.

Quando houver divergência de leitura, o `KEP_MASTER_ROADMAP` orienta a estratégia atual e o `PROJECT_STATE` orienta o estado factual.

## Identidade Corporativa

A identidade institucional da KDEVY fica em `docs/corporate/README.md`.

Essa área separa empresa, plataforma e produtos: a KDEVY é a entidade institucional, a KEP é sua plataforma de engenharia, e o AutoBody ERP é produto consumidor da plataforma.

`docs/corporate/` está incubada temporariamente dentro da KEP por pragmatismo inicial. Conceitualmente, a identidade corporativa pertence à KDEVY e poderá ser extraída futuramente para um repositório institucional separado chamado `kdevy-systems`.

## Como começar

1. Leia este `README.md`.
2. Leia `blueprint/KEP-BLUEPRINT.md` para entender a arquitetura geral.
3. Leia `docs/corporate/README.md` para entender a identidade institucional.
4. Leia `governance/PROJECT_STATE.md` para entender a versão atual.
5. Leia `architecture/KEP_MASTER_ROADMAP.md` para entender a estratégia atual.
6. Consulte `roadmap/ROADMAP.md` como histórico fundacional inicial.
7. Leia as políticas em `policies/`.
8. Consulte `knowledge/GLOSSARY.md` antes de criar novos termos.
9. Use os modelos em `templates/` para ADRs, KIPs, tarefas e revisões.
10. Ao propor uma mudança estrutural, registre uma KIP ou ADR conforme o caso.

## Orientação para agentes de IA

Agentes de IA que atuem neste repositório devem:

- responder e documentar em português do Brasil;
- tratar a KEP como propriedade da KDEVY;
- não assumir autorização de uso, cópia ou redistribuição externa;
- não copiar código-fonte do AutoBody ERP;
- preservar a separação entre plataforma-mãe e produtos consumidores;
- seguir as políticas em `policies/`;
- preferir clareza, rastreabilidade e contexto explícito;
- sinalizar incertezas de classificação da informação.

## Estado atual

Estado documental: Wave 6 em fechamento corretivo pós-tag.

Waves 1 a 4 possuem tags semânticas. A Wave 5 foi concluída por commits, sem tag própria. A Wave 6 possui a tag `wave-6-complete` e passa por correções pós-review do Delivery Framework.

A Wave 7 ainda não foi iniciada.

O próximo movimento planejado é um piloto controlado de adoção da KEP pelo AutoBody ERP, condicionado ao fechamento final da Wave 6.
