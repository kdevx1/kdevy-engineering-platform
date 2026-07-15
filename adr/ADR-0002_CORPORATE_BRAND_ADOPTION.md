# ADR-0002 - Adoção da Marca Corporativa KDEVY

## Status

Accepted

## Data

2026-07-13

## Contexto

A KDEVY precisa consolidar sua identidade corporativa antes de iniciar substituições documentais amplas.

Até este momento, a documentação da plataforma utilizou uma marca de trabalho anterior para nomear a entidade institucional, a plataforma de engenharia e seus ativos. Essa marca cumpriu papel de fundação, mas não deve permanecer como identidade corporativa final.

O domínio `kdevy.com.br` está registrado como ativo digital associado à nova marca corporativa.

A marca KDEVY ainda poderá passar por registro formal no INPI em etapa futura. Esta ADR não substitui análise jurídica, registro marcário ou documentação societária.

## Decisão

Adotar KDEVY como marca corporativa oficial.

A marca de trabalho anterior será abandonada gradualmente na documentação institucional, técnica e operacional, conforme plano de migração documental.

As siglas estruturais serão mantidas, com expansão atualizada:

- KEP = KDEVY Engineering Platform
- KES = KDEVY Engineering Specification
- KIP = KDEVY Improvement Proposal

O AutoBody ERP permanece como produto consumidor da KEP.

## Plano de migração documental

A migração documental DEVE ocorrer em fases:

1. Consolidar esta decisão arquitetural.
2. Criar política de nomenclatura corporativa.
3. Atualizar diretrizes internas de marca.
4. Mapear documentos que usam a marca de trabalho anterior.
5. Priorizar documentos institucionais.
6. Atualizar especificações, políticas, ADRs e templates com revisão controlada.
7. Validar links, siglas e referências após cada lote de migração.
8. Evitar substituições em massa sem revisão humana.

## Consequências

- KDEVY passa a ser a marca corporativa oficial.
- A documentação existente terá um período de transição.
- Siglas consolidadas continuam válidas, reduzindo ruptura operacional.
- Agentes de IA DEVEM diferenciar marca oficial, marca de trabalho anterior e nomes de produtos.
- Qualquer substituição documental futura DEVE preservar significado, links, histórico e propriedade intelectual.

## Alternativas consideradas

### Manter a marca de trabalho anterior

Rejeitada porque a marca KDEVY passa a ser a identidade corporativa pretendida.

### Fazer substituição em massa imediata

Rejeitada porque aumentaria risco de quebrar contexto, links, histórico documental e referências normativas.

### Alterar também as siglas estruturais

Rejeitada porque KEP, KES e KIP já expressam conceitos centrais da plataforma e podem ser preservadas com nova expansão.

## Impacto

A decisão afeta documentos institucionais, políticas, especificações, ADRs, templates, materiais de onboarding e agentes de IA.

Não há impacto direto sobre código-fonte de produtos.

## Próximos passos

- Criar `policies/POL-0004_CORPORATE_NAMING_STANDARD.md`.
- Atualizar `docs/corporate/BRAND_GUIDELINES.md`.
- Registrar a fundação da marca em `docs/corporate/FOUNDING.md`.
- Planejar a migração documental por lotes revisáveis.
- Avaliar futuramente o registro da marca KDEVY no INPI.
