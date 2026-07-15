# KES-0000 - Especificação-Mestre da KEP

## Situação

Inicial

## Proprietária

KDEVY

## Objetivo

Definir a especificação-mestre inicial da KDEVY Engineering Platform.

## Declaração de plataforma

A KEP é a plataforma-mãe de engenharia da KDEVY. Ela governa conhecimento, especificações, políticas, padrões, decisões, automação, IA e práticas de entrega.

## Componentes principais

- KEKB: módulo de conhecimento da KEP.
- KES: conjunto de especificações da KEP.
- KAF: framework de IA da KDEVY.
- KGF: framework de governança da KEP.
- KAP: plataforma de automação da KEP.
- KDF: framework de entrega da KEP.
- Produtos: sistemas que consomem a KEP, começando pelo AutoBody ERP.

## Regras-mestre

- A KEP é proprietária e interna.
- Apenas a licença interna proprietária da KDEVY se aplica a este repositório.
- Nenhum código-fonte do AutoBody ERP deve ser copiado para este repositório.
- Documentos devem atender humanos e agentes de IA.
- Decisões estruturais devem ser registradas por ADR.
- Políticas devem prevalecer sobre conveniências locais.

## Produto consumidor inicial

O AutoBody ERP é o primeiro produto consumidor da KEP. Ele deve herdar padrões e orientações da plataforma, mantendo código, issues e entregas de produto em seu próprio repositório.
