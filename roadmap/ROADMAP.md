# Roadmap

## Visão geral

O roadmap da KDEVY Engineering Platform está organizado em ondas.

Cada onda amplia a maturidade da plataforma-mãe, preservando a separação entre a KEP e os repositórios de produtos.

## Papel deste documento

Este documento preserva o roadmap fundacional e histórico inicial da KEP.

As ondas descritas abaixo registram a intenção inicial de evolução e NÃO devem ser tratadas como fonte concorrente do estado estratégico atual.

O roadmap estratégico mestre atual é `architecture/KEP_MASTER_ROADMAP.md`.

O estado factual corrente da plataforma é registrado em `governance/PROJECT_STATE.md`.

Quando houver divergência de leitura, o `KEP_MASTER_ROADMAP` orienta a estratégia atual e o `PROJECT_STATE` orienta o estado factual.

## Estado histórico alinhado ao Git

| Marco | Estado histórico |
| --- | --- |
| Waves 1 a 4 | Concluídas com tags semânticas. |
| Wave 5 | Concluída por commits, sem tag própria. |
| Wave 6 | Possui tag `wave-6-complete` e está em fechamento corretivo pós-review do Delivery Framework. |
| Wave 7 | Não iniciada. |

O próximo movimento planejado é um piloto controlado de adoção da KEP pelo AutoBody ERP, condicionado ao fechamento final da Wave 6.

As seções abaixo permanecem como histórico fundacional e não apagam nem reclassificam marcos já registrados.

## Onda 1 - Foundation

Objetivo: criar a fundação proprietária da KEP.

Entregas esperadas:

- Estrutura inicial do repositório.
- README principal.
- Blueprint da arquitetura geral.
- Governança inicial.
- Políticas iniciais.
- Templates de trabalho.
- ADR fundacional.

## Onda 2 - Plataforma

Objetivo: consolidar a KEP como plataforma operacional de engenharia.

Entregas esperadas:

- Padrões técnicos detalhados.
- Modelo de especificações.
- Processo de revisão e aprovação.
- Primeiras automações documentadas.
- Expansão da KEKB.

## Onda 3 - AutoBody ERP

Objetivo: conectar o AutoBody ERP como primeiro produto consumidor da KEP.

Entregas esperadas:

- Mapeamento de padrões aplicáveis ao AutoBody ERP.
- Documentação de integração conceitual.
- Critérios de consumo da KEP por produto.
- Lacunas técnicas e organizacionais identificadas.

## Onda 4 - IA

Objetivo: formalizar o uso de IA na engenharia da KDEVY.

Entregas esperadas:

- KAF detalhado.
- Padrões de prompts e agentes.
- Processo de revisão humana.
- Critérios de segurança, rastreabilidade e avaliação.
- Playbooks de uso de IA.

## Onda 5 - Enterprise

Objetivo: elevar a KEP para maturidade empresarial.

Entregas esperadas:

- Governança avançada.
- Métricas de maturidade.
- Controles de classificação e acesso.
- Integração com múltiplos produtos.
- Auditoria e melhoria contínua.

## Itens futuros

- Avaliar criação do repositório institucional `kdevy-systems` para extrair a identidade corporativa atualmente incubada em `docs/corporate/`.
