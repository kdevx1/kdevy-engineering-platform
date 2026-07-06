# ADR-0000 - Criação da KdevX Engineering Platform

## Situação

Aceita

## Data

2026-07-06

## Contexto

A KdevX Systems precisa de uma base proprietária para organizar engenharia, governança, conhecimento, padrões, IA, documentação e decisões estratégicas.

Produtos como o AutoBody ERP exigem consistência técnica e operacional, mas seu código-fonte deve permanecer separado de documentos e ativos estruturais de engenharia da empresa.

## Decisão

Criar a KdevX Engineering Platform, ou KEP, como ativo estratégico proprietário da KdevX Systems.

A KEP será a plataforma-mãe para governança, conhecimento, especificações, políticas, padrões, IA, automação, entrega e documentação.

A KEKB será tratada como módulo de conhecimento dentro da KEP, e não como plataforma separada.

O AutoBody ERP será o primeiro produto consumidor da KEP, mantendo seu código-fonte em repositório próprio.

## Consequências

- A KdevX Systems passa a ter uma fonte de verdade para engenharia.
- Decisões passam a ser registradas com rastreabilidade.
- Conteúdo técnico e estratégico passa a ser protegido como propriedade intelectual.
- Produtos consumidores podem evoluir com mais consistência.
- Agentes de IA terão contexto estruturado para apoiar tarefas autorizadas.

## Alternativas consideradas

### Manter conhecimento disperso

Rejeitada porque dificulta governança, reuso e rastreabilidade.

### Usar o repositório do AutoBody ERP como base de engenharia

Rejeitada porque misturaria produto com plataforma-mãe e aumentaria risco de acoplamento indevido.

### Criar apenas uma base de conhecimento isolada

Rejeitada porque a KdevX Systems precisa de uma plataforma mais ampla do que conhecimento: governança, políticas, padrões, IA, automação e entrega também fazem parte do ativo estratégico.
