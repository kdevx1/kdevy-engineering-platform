# ADR-0001 - Separação da Identidade Corporativa

## Status

Accepted

## Data

2026-07-06

## Contexto

A KdevX Engineering Platform foi criada como plataforma-mãe de engenharia da KdevX Systems.

Com a evolução da KEP, ficou necessário separar a identidade institucional da empresa da documentação específica da plataforma. A KdevX Systems precisa de uma área própria para visão, missão, valores, cultura, história, estratégia e diretrizes de marca.

Essa identidade deve orientar a KEP, o AutoBody ERP e futuros produtos, sem ficar limitada à plataforma de engenharia.

## Decisão

Decisão final: Opção C.

Separar conceitualmente a identidade corporativa da KEP, mantendo `docs/corporate/` temporariamente dentro deste repositório como área incubada.

Essa área será a referência institucional inicial da KdevX Systems dentro deste repositório, enquanto a KEP continuará sendo a plataforma de engenharia proprietária da empresa.

`docs/corporate/` pertence conceitualmente à KdevX Systems. Ela permanece na KEP por pragmatismo inicial e poderá ser extraída futuramente para um repositório institucional separado chamado `kdevx-systems`.

## Critérios para extração futura

A extração de `docs/corporate/` para `kdevx-systems` deve ser avaliada quando um ou mais critérios forem atendidos:

- houver mais de um produto consumidor ativo além do AutoBody ERP;
- o volume de documentos institucionais crescer de forma relevante;
- a identidade corporativa exigir fluxo de aprovação diferente da governança técnica da KEP;
- houver necessidade de publicar ou compartilhar materiais institucionais sem expor documentação técnica da KEP;
- produtos futuros começarem a depender da identidade institucional da KdevX Systems;
- permissões, ownership ou classificação da informação precisarem ser separados entre documentos institucionais e documentos de engenharia.

## Consequências

- A KdevX Systems passa a ter uma área institucional separada da arquitetura da KEP.
- A KEP continua sendo ativo estratégico, mas não representa sozinha toda a identidade da empresa.
- `docs/corporate/` fica explicitamente marcada como área incubada e candidata à extração futura.
- O AutoBody ERP permanece como produto consumidor da KEP.
- Futuros produtos poderão consumir a identidade institucional sem depender de documentos específicos da KEP.
- Membros e agentes de IA passam a ter uma referência mais clara sobre empresa, plataforma e produtos.

## Alternativas rejeitadas

### Manter identidade corporativa apenas no README da KEP

Rejeitada porque reduziria a identidade da empresa a uma seção de plataforma.

### Tratar a KEP como identidade institucional completa

Rejeitada porque a KEP é um ativo de engenharia, não a totalidade da KdevX Systems.

### Colocar identidade corporativa dentro de conhecimento técnico

Rejeitada porque a KEKB é um módulo de conhecimento da KEP, enquanto a identidade corporativa governa a empresa como instituição.

## Impacto

A separação melhora a governança institucional e reduz ambiguidade entre KdevX Systems, KEP e AutoBody ERP.

Também cria uma base mais adequada para futuros produtos, materiais internos, agentes de IA e decisões estratégicas.

## Próximos passos

- Evoluir os documentos de `docs/corporate/`.
- Criar padrões de uso institucional para novos produtos.
- Revisar a relação entre identidade corporativa, políticas e roadmap.
- Avaliar a criação do repositório `kdevx-systems` conforme os critérios de extração futura.
- Manter a área livre de dados pessoais sensíveis e dados privados.
