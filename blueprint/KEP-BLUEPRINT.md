# KEP Blueprint

## Propósito

Este documento descreve a arquitetura conceitual inicial da KDEVY Engineering Platform, ou KEP.

A KDEVY é a entidade institucional proprietária dos ativos intelectuais, plataformas, produtos, documentos e padrões.

A KEP é a plataforma-mãe de engenharia da KDEVY. Ela organiza governança, conhecimento, especificações, padrões, políticas, automação, IA, entrega e documentação para sustentar produtos atuais e futuros.

A identidade corporativa da KDEVY fica em `docs/corporate/`. Essa área orienta empresa, plataforma e produtos, mas não substitui a arquitetura da KEP.

O AutoBody ERP é o primeiro produto que consumirá a KEP, mas seu código-fonte não pertence a este repositório e não deve ser copiado para cá.

## Arquitetura geral

```text
KDEVY
├── Identidade Corporativa
│   └── docs/corporate/
├── KDEVY Engineering Platform (KEP)
│   ├── KEKB - KDEVY Engineering Knowledge Base
│   ├── KES  - KDEVY Engineering Specification
│   ├── KAF  - KDEVY AI Framework
│   ├── KGF  - KDEVY Governance Framework
│   ├── KAP  - KDEVY Automation Platform
│   └── KDF  - KDEVY Delivery Framework
└── Produtos
    └── AutoBody ERP
```

## KDEVY

A KDEVY é a entidade institucional.

Ela é proprietária dos ativos intelectuais, documentos, padrões, prompts, playbooks, arquitetura, plataformas e produtos criados sob sua direção.

Sua identidade corporativa fica em `docs/corporate/` e deve orientar a KEP, o AutoBody ERP e futuros produtos.

## KEP - KDEVY Engineering Platform

A KEP é o ativo estratégico central de engenharia da KDEVY. Ela define como a empresa pensa, documenta, decide, constrói, governa e evolui tecnologia.

A KEP não é apenas uma coleção de documentos. Ela é a base operacional para:

- orientar humanos;
- orientar agentes de IA;
- manter rastreabilidade de decisões;
- padronizar execução técnica;
- preservar propriedade intelectual;
- acelerar produtos sem duplicar conhecimento.

## KEKB - KDEVY Engineering Knowledge Base

A KEKB é o módulo de conhecimento dentro da KEP.

Ela não é uma plataforma separada. Seu papel é armazenar e organizar conhecimento reutilizável, glossários, conceitos, contexto de produtos, aprendizados, playbooks e referências.

## KES - KDEVY Engineering Specification

A KES reúne especificações de engenharia, contratos conceituais, requisitos técnicos, modelos de arquitetura e definições-mestre.

As especificações devem ser escritas de forma clara para leitura humana e também estruturadas o suficiente para consumo por agentes de IA.

## KAF - KDEVY AI Framework

O KAF define como a KDEVY usa IA no ciclo de engenharia.

Ele cobre princípios, prompts, agentes, limites, revisão humana, rastreabilidade, segurança, avaliação e integração com produtos.

## KGF - KDEVY Governance Framework

O KGF organiza governança técnica, propriedade, métricas, estado do projeto, políticas internas, responsabilidades e critérios de decisão.

## KAP - KDEVY Automation Platform

O KAP concentra automações, scripts, integrações, rotinas operacionais e mecanismos que reduzem trabalho repetitivo.

Automação deve ser documentada, auditável e alinhada às políticas da KEP.

## KDF - KDEVY Delivery Framework

O KDF define como iniciativas saem de ideia para entrega: planejamento, especificação, implementação, revisão, validação, publicação e aprendizado.

## Produtos

Produtos são consumidores da KEP.

O primeiro produto consumidor é o AutoBody ERP. Ele deve usar padrões, políticas, especificações, conhecimento e práticas da KEP, mantendo seu código-fonte em repositório próprio.

## Princípios de arquitetura

- A KEP é proprietária da KDEVY.
- A KDEVY é a entidade institucional.
- A identidade corporativa fica em `docs/corporate/`.
- A KEP é a fonte de verdade para engenharia, governança e conhecimento técnico.
- A KEKB é um módulo da KEP, não uma entidade independente.
- Produtos consomem a KEP, mas não são copiados para dentro dela.
- Documentos devem ser úteis para pessoas e agentes de IA.
- Decisões relevantes devem ser registradas em ADRs.
- Mudanças estruturais devem ser rastreáveis e revisáveis.
