# Inventário de Migração de Marca

## Controle

| Campo | Valor |
| --- | --- |
| Migração | KdevX / KdevX Systems / KDEVX para KDEVY |
| Data | 2026-07-14 |
| Escopo | Documentação do repositório KEP |
| Estratégia | Substituição controlada por classificação |

## Critérios de classificação

- substituir: referência institucional ativa à antiga identidade.
- preservar como histórico: referência necessária para explicar a migração ou registrar o nome anterior como fato histórico.
- revisar manualmente: ocorrência com risco de alterar significado, histórico, comando, caminho, código ou identificador.

## Inventário por arquivo

| Arquivo | Linha ou seção | Termo encontrado | Classificação | Justificativa |
| --- | --- | --- | --- | --- |
| `.github/CODEOWNERS` | cabeçalho, propriedade e ownership | KdevX Engineering Platform, KdevX Systems, kdevx-systems | substituir | Arquivo ativo de governança de revisão deve usar a marca oficial e o identificador institucional novo quando aplicável. |
| `.github/pull_request_template.md` | título, relação com KEP e checklist | KdevX Engineering Platform, KdevX Systems | substituir | Template ativo de PR deve orientar contribuições futuras com a marca oficial. |
| `README.md` | título, visão geral, princípios, arquitetura, corporate, agentes | KdevX, KdevX Systems, KdevX Engineering Platform | substituir | Referências institucionais ativas à plataforma e proprietária. |
| `CONTRIBUTING.md` | princípios e regras obrigatórias | KdevX Systems, KdevX Engineering Platform | substituir | Documento operacional deve usar a marca oficial atual. |
| `CHANGELOG.md` | cabeçalho e histórico | KdevX Engineering Platform | substituir | Changelog deve refletir o nome oficial e registrar a adoção da marca KDEVY. |
| `LICENSE_INTERNAL.md` | direitos autorais e propriedade | KdevX Systems | substituir | Licença interna deve identificar a proprietária institucional atual como KDEVY. |
| `blueprint/KEP-BLUEPRINT.md` | propósito, arquitetura geral, componentes, princípios | KdevX, KdevX Systems, KdevX Engineering Platform, KdevX Engineering Knowledge Base, KdevX AI Framework, KdevX Governance Framework, KdevX Automation Platform, KdevX Delivery Framework | substituir | Blueprint é referência arquitetural ativa e deve aderir à nova marca. |
| `governance/README.md` | introdução e diretrizes | KdevX Engineering Platform, KdevX Systems | substituir | Governança ativa da KEP deve usar a marca oficial. |
| `governance/PROJECT_STATE.md` | identificação e estado atual | KdevX Engineering Platform, KdevX Systems | substituir | Estado do projeto deve registrar proprietária e domínio institucional atualizados. |
| `governance/PROJECT_METRICS.md` | propósito | KdevX Engineering Platform | substituir | Métricas ativas da plataforma devem usar o nome oficial. |
| `knowledge/README.md` | descrição da KEKB e ecossistema | KdevX Engineering Knowledge Base, KdevX Engineering Platform, KdevX Systems, KdevX | substituir | Conhecimento ativo deve refletir a nova marca e nomenclatura oficial. |
| `knowledge/GLOSSARY.md` | verbetes | KdevX Engineering Platform, KdevX AI Framework, KdevX Automation Platform, KdevX Delivery Framework, KdevX Engineering Knowledge Base, KdevX Engineering Specifications, KdevX Governance Framework, KdevX Systems | substituir | Glossário deve atualizar significados oficiais, preservando siglas. |
| `specifications/README.md` | introdução | KdevX Engineering Platform, KdevX Systems | substituir | Especificações ativas devem usar KDEVY. |
| `specifications/KES-0000_MASTER_SPECIFICATION.md` | controle, objetivo, declaração, componentes, regras | KdevX Systems, KdevX Engineering Platform, KdevX AI Framework | substituir | KES-0000 é referência normativa ativa. |
| `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md` | controle, objetivo, escopo, princípios, direitos, deveres, evolução, aceite | KdevX Systems, KdevX Engineering Platform, KdevX Engineering Knowledge Base | substituir | KES-0001 é constituição normativa ativa da engenharia. |
| `policies/README.md` | introdução e diretrizes | KdevX Engineering Platform, KdevX Systems | substituir | Políticas ativas devem usar a marca oficial. |
| `policies/POL-0001_INTELLECTUAL_PROPERTY.md` | proprietária, objetivo, política, restrições, IA | KdevX Systems, KdevX Engineering Platform | substituir | Política de propriedade intelectual deve apontar a proprietária atual. |
| `policies/POL-0002_INFORMATION_CLASSIFICATION.md` | proprietária, objetivo, nível interno | KdevX Systems, KdevX Engineering Platform | substituir | Política ativa deve usar a marca oficial. |
| `policies/POL-0004_CORPORATE_NAMING_STANDARD.md` | documento completo | KDEVY | preservar como histórico | Documento já é o padrão novo; não contém ocorrência antiga a migrar. |
| `standards/README.md` | introdução e diretrizes | KdevX Engineering Platform, KdevX Systems | substituir | Standards ativos devem usar a marca oficial. |
| `templates/ADR_TEMPLATE.md` | relação com plataforma | KdevX Engineering Platform | substituir | Template novo deve orientar documentos futuros com marca oficial. |
| `templates/KIP_TEMPLATE.md` | objetivo | KdevX Engineering Platform | substituir | Template novo deve orientar KIPs futuros com marca oficial. |
| `templates/TASK_TEMPLATE.md` | restrições | KdevX Systems | substituir | Template novo deve orientar tarefas futuras com marca oficial. |
| `templates/CODE_REVIEW_TEMPLATE.md` | checklist | KdevX Systems | substituir | Template novo deve orientar revisões futuras com marca oficial. |
| `adr/README.md` | introdução | KdevX Engineering Platform | substituir | Índice ativo de ADRs deve usar a marca oficial. |
| `adr/ADR-0000_FOUNDATION.md` | título, contexto, decisão, consequências, alternativas | KdevX Systems, KdevX Engineering Platform | substituir | ADR fundacional deve ser atualizada para a marca oficial; a mudança histórica é registrada pela ADR-0002. |
| `adr/ADR-0001_CORPORATE_IDENTITY_SEPARATION.md` | contexto, decisão, critérios, consequências, impacto | KdevX Systems, KdevX Engineering Platform | substituir | ADR ativa de fronteira corporativa deve usar a marca oficial. |
| `adr/ADR-0002_CORPORATE_BRAND_ADOPTION.md` | contexto e decisão | marca de trabalho anterior | preservar como histórico | ADR-0002 explica a migração; a marca antiga deve aparecer apenas se necessário como referência histórica. |
| `kip/README.md` | introdução | KdevX, KdevX Engineering Platform | substituir | KIPs futuros devem usar KDEVY. |
| `roadmap/ROADMAP.md` | visão geral e IA | KdevX Engineering Platform, KdevX Systems | substituir | Roadmap ativo deve refletir a marca oficial. |
| `scripts/README.md` | introdução | KdevX Engineering Platform | substituir | Documentação ativa deve usar KDEVY. |
| `architecture/REPOSITORY_BOUNDARIES_REVIEW.md` | revisão arquitetural | KdevX Systems, KdevX Engineering Platform, KdevX | revisar manualmente | Revisão pré-migração pode ser atualizada para KDEVY, preservando apenas referências históricas necessárias à arquitetura. |
| `architecture/KES-0001_CONSTITUTIONAL_REVIEW.md` | revisão constitucional | KdevX Systems | revisar manualmente | Revisão técnica pode ser atualizada para KDEVY sem alterar conclusão. |
| `architecture/PLATFORM_MODEL.md` | documento completo | KDEVY | preservar como histórico | Documento já usa a marca oficial e não requer migração. |
| `architecture/PLATFORM_MODEL_ARCHITECTURE_REVIEW.md` | documento completo | KDEVY | preservar como histórico | Documento já usa a marca oficial e não requer migração. |
| `docs/corporate/README.md` | título, objetivo, situação, escopo, documentos, diretrizes | KdevX Systems, KdevX Engineering Platform | substituir | Corporate ativo deve usar KDEVY, mantendo nota de incubação. |
| `docs/corporate/COMPANY_IDENTITY.md` | documento completo | KdevX Systems, KdevX Engineering Platform | substituir | Identidade corporativa ativa deve migrar integralmente para KDEVY. |
| `docs/corporate/COMPANY_VISION.md` | documento completo | KdevX Systems | substituir | Visão ativa deve usar KDEVY. |
| `docs/corporate/COMPANY_MISSION.md` | documento completo | KdevX Systems | substituir | Missão ativa deve usar KDEVY. |
| `docs/corporate/COMPANY_VALUES.md` | documento completo | KdevX Systems | substituir | Valores ativos devem usar KDEVY. |
| `docs/corporate/COMPANY_CULTURE.md` | documento completo | KdevX Systems | substituir | Cultura ativa deve usar KDEVY. |
| `docs/corporate/COMPANY_HISTORY.md` | origem, fundação, evolução | KdevX Systems, KdevX Engineering Platform | revisar manualmente | História deve migrar para KDEVY, preservando contexto de transição quando necessário. |
| `docs/corporate/COMPANY_STRATEGY.md` | documento completo | KdevX Systems | substituir | Estratégia ativa deve usar KDEVY. |
| `docs/corporate/BRAND_GUIDELINES.md` | documento completo | KDEVY | preservar como histórico | Documento já usa a marca oficial após ADR-0002. |
| `docs/corporate/FOUNDING.md` | documento completo | KDEVY | preservar como histórico | Documento já registra a fundação da marca KDEVY. |

## Decisão de migração

A migração deve substituir referências institucionais ativas à identidade anterior por KDEVY.

Referências antigas devem permanecer apenas quando forem necessárias para explicar a migração de marca, especialmente neste inventário e na ADR-0002.

## Contagem inicial

A busca inicial encontrou 182 linhas com `KdevX`, `KDEVX` ou `Kdevx` fora de `.git` em arquivos não ocultos. A validação ampliada identificou também ocorrências ativas em `.github/`, tratadas nesta migração.

Após a migração, o diff registrou 198 ocorrências antigas removidas ou substituídas. As referências remanescentes a `KdevX`, `KDEVX` ou `Kdevx` permanecem apenas neste inventário como evidência histórica e de auditoria da migração.
