# Estado do Projeto

## Identificação

- Projeto: KDEVY Engineering Platform
- Sigla: KEP
- Proprietária: KDEVY
- Classificação padrão: Interno
- Versão inicial histórica: 0.1.0 Foundation
- Estado atual: Wave 6 em fechamento corretivo pós-tag
- Wave 7: não iniciada
- Corporate Identity: incubada na KEP
- Repository Boundaries Review: concluída
- Dívida arquitetural: extração futura de `docs/corporate/` para `kdevy-systems`
- Brand Migration: concluída
- Domínio institucional: `kdevy.com.br`
- Registro no INPI: pendente
- Data de criação: 2026-07-06
- Última atualização documental deste estado: 2026-07-19

## Estado atual

A KEP concluiu a sequência documental até a Wave 6 no histórico Git local.

A tag `wave-6-complete` existe e aponta para o fechamento documental da Wave 6. Essa tag é evidência histórica e NÃO deve ser alterada, apagada, recriada ou movida.

A Wave 6 está em fechamento corretivo devido à revisão arquitetural posterior do `architecture/DELIVERY_FRAMEWORK.md`. O fechamento corretivo trata ajustes obrigatórios no Delivery Framework e alinha documentos de estado e roadmap ao histórico real.

A Wave 7 ainda não foi iniciada.

O próximo movimento planejado é um piloto controlado de adoção da KEP pelo AutoBody ERP, condicionado ao fechamento final da Wave 6.

## Histórico de waves e evidência Git

| Wave | Estado | Evidência Git local | Observação |
| --- | --- | --- | --- |
| Wave 1 | Concluída | Tag semântica `v0.1.0-foundation` | Fundação inicial da KEP. |
| Wave 2 | Concluída | Tag semântica `v0.2.0-engineering-core` | Núcleo de engenharia e KES iniciais. |
| Wave 3 | Concluída | Tag semântica `v0.3.0-brand-migration` | Migração e consolidação da marca KDEVY. |
| Wave 4 | Concluída | Tag semântica `v0.4.0-agent-foundation` | Fundação documental do framework de agentes. |
| Wave 5 | Concluída por commits | Sem tag própria | Não deve receber tag retroativa sem decisão explícita de governança. |
| Wave 6 | Concluída por tag, em fechamento corretivo | Tag `wave-6-complete` | Correções pós-review do Delivery Framework em andamento. |
| Wave 7 | Não iniciada | Sem tag e sem abertura formal | Adoção por produto consumidor ainda condicionada ao fechamento final da Wave 6. |

## Papel dos roadmaps

`roadmap/ROADMAP.md` preserva o roadmap fundacional e histórico inicial por ondas.

`architecture/KEP_MASTER_ROADMAP.md` é o roadmap estratégico mestre atual da KEP.

Quando houver divergência de leitura entre os dois documentos, o `KEP_MASTER_ROADMAP` deve orientar a visão estratégica atual, enquanto este `PROJECT_STATE` deve orientar o estado factual corrente.

## Fora do escopo atual

- Código-fonte do AutoBody ERP.
- Implementações de produto.
- Scripts operacionais definitivos.
- Integrações automatizadas.
- Publicação externa de documentação.
- Abertura formal da Wave 7.
- Criação, alteração, remoção ou movimentação de tags.

## Relação com produtos

O AutoBody ERP é o primeiro produto que consumirá a KEP. Ele deve permanecer em repositório separado.

O piloto controlado de adoção da KEP pelo AutoBody ERP é o próximo movimento planejado, mas só deve ocorrer após o fechamento final da Wave 6.

## Critérios de saúde

- A estrutura base existe.
- A documentação está em português do Brasil.
- A KEP está explicitamente definida como plataforma-mãe.
- A KEKB está definida como módulo de conhecimento da KEP.
- As políticas proprietárias iniciais estão registradas.
- Waves 1 a 4 possuem tags semânticas.
- Wave 5 possui evidência por commits, sem tag própria.
- Wave 6 possui tag `wave-6-complete`.
- O fechamento corretivo da Wave 6 está registrado sem mover a tag existente.
- A Wave 7 permanece não iniciada.
