# Catálogo Oficial de Agentes da KDEVY Engineering Platform

## 1. Controle documental

| Campo | Valor |
| --- | --- |
| Documento | AGENT_CATALOG |
| Versão | 0.1.0 |
| Status | Draft |
| Classificação | Interno |
| Domínio | AI / KAF |
| Owner provisório | Governança da KEP |
| Produtos impactados | KEP, AutoBody ERP e produtos consumidores futuros |
| Última revisão | 2026-07-15 |

### Documentos relacionados

- `architecture/AGENT_FRAMEWORK_MODEL.md`
- `architecture/AGENT_FRAMEWORK_MODEL_REVIEW.md`
- `architecture/PLATFORM_MODEL.md`
- `architecture/KNOWLEDGE_SYSTEM_MODEL.md`
- `specifications/KES-0000_MASTER_SPECIFICATION.md`
- `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md`
- `policies/POL-0001_INTELLECTUAL_PROPERTY.md`
- `policies/POL-0002_INFORMATION_CLASSIFICATION.md`

### Histórico

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.0 | 2026-07-15 | Criação inicial do catálogo oficial de agentes candidatos da KEP. |

## 2. Objetivo

Este catálogo organiza capacidades planejadas de IA para a KDEVY Engineering Platform (KEP), em conformidade com o KDEVY Agent Framework (KAF).

O catálogo existe para:

- organizar capacidades de IA;
- impedir agentes duplicados;
- limitar responsabilidades;
- apoiar decisões de criação, reutilização, ativação, suspensão, depreciação e desativação;
- preservar rastreabilidade entre missão, owner, permissões, evidências e produtos;
- apoiar governança humana sobre agentes.

O catálogo NÃO substitui o modelo normativo do KAF, não implementa agentes, não concede permissões e não autoriza operação em produção.

A presença de um agente neste catálogo NÃO significa que ele está implementado, autorizado ou ativo.

## 3. Escopo

Este catálogo contém entradas para:

- agentes candidatos;
- agentes planejados;
- agentes aprovados;
- agentes ativos;
- agentes suspensos;
- agentes depreciados;
- agentes desativados.

Fora do escopo:

- prompts completos;
- credenciais;
- segredos;
- código de produto;
- configurações específicas de fornecedor;
- concessão automática de acesso;
- autorização para operar produção;
- criação de usuários, times ou organizações;
- execução real de agentes.

## 4. Definições

Agente é uma capacidade de IA catalogada para apoiar tarefas autorizadas da KEP ou de produtos consumidores.

Catálogo é o registro arquitetural das capacidades planejadas, candidatas, aprovadas, ativas, suspensas, depreciadas ou desativadas.

Entrada de catálogo é o registro formal de um agente específico, identificado por código único.

Autonomia é o limite máximo de ação permitido para um agente conforme o KAF.

Ativação é o processo formal que torna um agente apto a operar dentro de limites definidos. Uma entrada catalogada não está ativada por padrão.

Desativação é o encerramento operacional de um agente, preservando histórico e impedindo reuso do identificador.

## 5. Diferença entre categoria, agente e papel

Categoria de agente é uma classe funcional definida pelo KAF, como análise, revisão, documentação, segurança, qualidade ou auditoria.

Agente concreto é uma entrada específica no catálogo, com ID, missão, owner, limites, permissões e critérios de ativação.

Papel temporário em uma tarefa é uma função exercida durante um fluxo, como planejar, implementar, revisar, auditar ou documentar.

Capacidade técnica é o que uma ferramenta ou agente consegue fazer tecnicamente, como ler arquivos, editar documentos, executar testes ou analisar logs.

Permissão concedida é o que o agente está autorizado a fazer em uma tarefa, ambiente ou contexto específico.

Nível de autonomia é o limite máximo de ação permitido conforme o KAF.

Ferramenta ou modelo utilizado é o mecanismo de execução, como Codex, ChatGPT, agente local, agente próprio ou ferramenta futura.

Não se deve criar agentes diferentes apenas porque ferramentas diferentes executam a mesma responsabilidade.

## 6. Estados do catálogo

| Status | Significado | Critério de entrada | Próximas transições |
| --- | --- | --- | --- |
| Candidate | Capacidade identificada, ainda sem aprovação operacional | Problema claro e justificativa inicial | Planned, Disabled |
| Planned | Entrada aceita para detalhamento futuro | Missão, escopo, riscos e owner proposto | Approved, Deprecated, Disabled |
| Approved | Agente aprovado conceitualmente, ainda não ativo | Owner operacional, permissões, evidências e critérios definidos | Active, Suspended, Deprecated |
| Active | Agente autorizado para uso controlado | Ativação formal, permissões concedidas e auditoria disponível | Suspended, Deprecated, Disabled |
| Suspended | Agente temporariamente impedido de operar | Incidente, risco, owner ausente ou revisão pendente | Active, Deprecated, Disabled |
| Deprecated | Agente não recomendado para novos usos | Substituição, baixa utilidade ou mudança de arquitetura | Disabled |
| Disabled | Agente encerrado operacionalmente | Decisão de desativação e evidências preservadas | Histórico apenas |

Nenhum agente deste catálogo inicial está `Active`.

## 7. Critérios para criação

Um agente candidato DEVE possuir:

- problema claro;
- missão;
- responsabilidade delimitada;
- entradas conhecidas;
- saídas conhecidas;
- owner operacional humano;
- consumidores;
- nível máximo de autonomia;
- permissões mínimas;
- riscos;
- evidências obrigatórias;
- critérios de aceite;
- justificativa para não reutilizar agente existente.

Agentes sem owner NÃO DEVEM ser ativados.

### Tipos de owner

Owner provisório do catálogo é responsável pela manutenção estrutural do `AGENT_CATALOG.md`.

Owner operacional do agente é o responsável humano pelo propósito, permissões, riscos, lifecycle e incidentes de um agente concreto.

Owner do produto consumidor é o responsável pelo contexto, regras locais, baseline da KEP, critérios de aceite e autorização de atuação no produto.

Esses papéis podem ser exercidos pela mesma pessoa em estágio inicial, mas suas responsabilidades NÃO DEVEM ser confundidas.

Um agente sem owner operacional NÃO DEVE ser ativado.

### Critério objetivo para promoção de Candidate para Planned

Um agente `Candidate` somente pode ser promovido para `Planned` quando houver:

- demanda real identificada;
- ocorrência recorrente ou impacto relevante;
- problema que não seja adequadamente resolvido por agente existente;
- missão e escopo revisados;
- owner operacional humano identificado;
- consumidores conhecidos;
- risco preliminar classificado;
- nível máximo de autonomia definido;
- justificativa documental para planejamento;
- ausência de duplicidade relevante no catálogo.

A simples possibilidade de uso futuro NÃO é suficiente para promoção.

## 8. Critérios para reutilização

Antes de criar um novo agente, a governança DEVE:

1. pesquisar o catálogo;
2. verificar se uma entrada existente pode assumir o papel;
3. avaliar extensão de capacidade;
4. verificar impacto em permissões;
5. comparar missão, entradas, saídas, riscos e evidências;
6. justificar formalmente a criação quando a reutilização não for suficiente.

Um papel temporário em uma tarefa NÃO DEVE gerar novo agente por si só.

Reutilizar capacidade existente é preferível a criar novo agente.

## 8.1 Controle de agentes prematuros

Um agente deve permanecer `Candidate` quando:

- não houver demanda recorrente;
- não houver owner operacional;
- não houver consumidor real;
- a capacidade puder ser exercida como papel temporário de outro agente;
- o risco não estiver suficientemente compreendido;
- ainda não existirem instruções, evidências ou processo de suspensão;
- sua criação aumentar complexidade sem valor operacional comprovado.

O catálogo não é roadmap de implementação. Presença no catálogo não cria prioridade. Quantidade de agentes não é métrica de maturidade.

## 9. Critérios para desativação

Um agente PODE ser desativado quando:

- não possuir owner operacional;
- tiver sido substituído;
- apresentar risco recorrente;
- não possuir uso justificado;
- duplicar responsabilidade de outro agente;
- depender de ferramenta ou fornecedor incompatível com o KAF;
- perder aderência a KES, Policies ou Platform Model.

A desativação DEVE preservar histórico, motivo, evidências, decisão humana e identificador original.

## 10. Estrutura padrão de cada agente

| Campo | Descrição |
| --- | --- |
| ID | Identificador único |
| Nome | Nome oficial |
| Status | Estado atual |
| Categoria | Categoria funcional |
| Missão | Problema resolvido |
| Escopo | Limites de atuação |
| Responsabilidades | Responsabilidades principais |
| Fora do escopo | O que não pode assumir |
| Entradas | Contextos e artefatos consumidos |
| Saídas | Artefatos e evidências produzidos |
| Consumidores | Pessoas, agentes ou produtos atendidos |
| Owner operacional | Responsável humano |
| Nível máximo de autonomia | Conforme KAF |
| Classificação de risco | Baixo, médio, alto ou crítico |
| Permissões | Capacidades mínimas |
| Proibições | Ações não autorizadas |
| Dependências | KES, Policies, Standards, Playbooks e outros agentes |
| Evidências obrigatórias | Validações e relatórios |
| Critérios de ativação | Condições para uso |
| Critérios de suspensão | Condições de interrupção |
| Critérios de depreciação | Condições de substituição |
| Produtos aplicáveis | KEP, AutoBody ERP ou futuros produtos |

## 11. Convenção de identificadores

Os identificadores seguem o padrão:

```text
AGT-<DOMINIO>-<NUMERO>
```

Exemplos:

- `AGT-ARCH-001`
- `AGT-DOC-001`
- `AGT-SEC-001`
- `AGT-QA-001`

Como ainda não existem agentes concretos implementados, não há códigos existentes a renomear.

Um identificador histórico nunca poderá ser reutilizado, mesmo que o agente seja renomeado, substituído, depreciado ou desativado.

## 12. Catálogo inicial

### AGT-ARCH-001 - Architecture Advisor

| Campo | Valor |
| --- | --- |
| ID | AGT-ARCH-001 |
| Nome | Architecture Advisor |
| Status | Candidate |
| Categoria | Agente de análise / arquitetura |
| Missão | Analisar arquitetura, identificar impactos, propor ADRs e revisar aderência ao Platform Model. |
| Escopo | Modelos arquiteturais, fronteiras, impactos, dependências e coerência entre domínios. |
| Responsabilidades | Avaliar impactos, verificar limites entre domínios, propor alternativas e registrar riscos arquiteturais. |
| Fora do escopo | Aprovar ADRs, aprovar mudanças arquiteturais ou alterar a arquitetura global autonomamente. |
| Entradas | Platform Model, KES, ADRs, Policies, diffs, requisitos e contexto técnico. |
| Saídas | Relatórios arquiteturais, riscos, impactos, propostas de ADR e recomendações. |
| Consumidores | Arquitetura, engenharia, governança, agentes de revisão e produtos consumidores. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 2 - Preparação de artefatos |
| Classificação de risco | Alto |
| Permissões | Ler documentação, analisar diffs, criar rascunhos e recomendar decisões. |
| Proibições | Aprovar ADR, aprovar KES, alterar arquitetura global, fazer commit ou push. |
| Dependências | Platform Model, KES-0000, KES-0001, ADRs, Policies, Engineering Reviewer. |
| Evidências obrigatórias | Fontes, análise de impacto, riscos, documentos afetados e decisão sugerida. |
| Critérios de ativação | Owner definido, escopo aprovado, matriz de permissões e critérios de revisão. |
| Critérios de suspensão | Sugestão de decisão sem fonte, confusão de autoridade ou risco arquitetural não tratado. |
| Critérios de depreciação | Sobreposição com outro agente arquitetural ou baixa utilidade recorrente. |
| Produtos aplicáveis | KEP, AutoBody ERP e produtos futuros. |

### AGT-IMPL-001 - Engineering Builder

| Campo | Valor |
| --- | --- |
| ID | AGT-IMPL-001 |
| Nome | Engineering Builder |
| Status | Candidate |
| Categoria | Agente de implementação supervisionada |
| Missão | Implementar tarefas explicitamente autorizadas, criar ou alterar artefatos e apresentar evidências. |
| Escopo | Alterações documentais, técnicas ou operacionais dentro de escopo aprovado. |
| Responsabilidades | Executar mudanças supervisionadas, preservar worktree, validar resultado e relatar evidências. |
| Fora do escopo | Commit, push, release, aprovação, operação de produção ou ações destrutivas sem autorização. |
| Entradas | Tarefa autorizada, critérios de aceite, contexto, arquivos e políticas aplicáveis. |
| Saídas | Arquivos alterados, diff, validações, relatório e pendências. |
| Consumidores | Engenharia, arquitetura, revisão, QA e produtos consumidores. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 3 - Implementação supervisionada |
| Classificação de risco | Alto |
| Permissões | Editar arquivos autorizados, executar validações autorizadas e relatar diffs. |
| Proibições | Commit, push, release, force push, segredos, produção e alteração destrutiva sem autorização. |
| Dependências | KAF, KES-0001, Policies, Templates, Engineering Reviewer, QA Agent. |
| Evidências obrigatórias | Git status, diff, lista de arquivos, validações, testes quando aplicável e riscos residuais. |
| Critérios de ativação | Owner, escopo de edição, validações permitidas e processo de revisão definidos. |
| Critérios de suspensão | Mistura de tarefas, reversão indevida, alteração não autorizada ou validação falsa. |
| Critérios de depreciação | Substituição por agente mais específico ou excesso de sobreposição. |
| Produtos aplicáveis | KEP, AutoBody ERP e produtos futuros. |

### AGT-REV-001 - Engineering Reviewer

| Campo | Valor |
| --- | --- |
| ID | AGT-REV-001 |
| Nome | Engineering Reviewer |
| Status | Candidate |
| Categoria | Agente de revisão |
| Missão | Revisar mudanças, inconsistências, critérios de aceite e aderência a KES, Policies e ADRs. |
| Escopo | Revisão de diffs, documentação, riscos, lacunas e conformidade. |
| Responsabilidades | Identificar regressões, inconsistências, lacunas de validação, conflitos normativos e riscos de entrega. |
| Fora do escopo | Aprovação final autônoma ou revisão como autoridade única de implementação própria de alto risco. |
| Entradas | Diff, requisitos, KES, Policies, ADRs, logs e critérios de aceite. |
| Saídas | Achados, severidade, recomendações, lacunas e decisão sugerida. |
| Consumidores | Engenharia, arquitetura, QA, segurança e governança. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 2 - Preparação de artefatos |
| Classificação de risco | Alto |
| Permissões | Ler, comparar, executar validações não destrutivas autorizadas e reportar achados. |
| Proibições | Aprovar KES/ADR, auditar a própria implementação de alto risco ou alterar arquivos sem autorização. |
| Dependências | KES-0001, Policies, ADRs, Engineering Builder, Security Reviewer. |
| Evidências obrigatórias | Arquivos revisados, achados, severidade, critérios verificados e limitações. |
| Critérios de ativação | Owner, checklist de revisão e limites de autoridade definidos. |
| Critérios de suspensão | Aprovação indevida, achados inventados ou conflito de interesse não declarado. |
| Critérios de depreciação | Substituição por processo de revisão mais específico. |
| Produtos aplicáveis | KEP, AutoBody ERP e produtos futuros. |

### AGT-DOC-001 - Documentation Architect

| Campo | Valor |
| --- | --- |
| ID | AGT-DOC-001 |
| Nome | Documentation Architect |
| Status | Candidate |
| Categoria | Agente de documentação |
| Missão | Estruturar documentação, revisar clareza, identificar duplicidades e preservar linguagem normativa. |
| Escopo | Documentos, modelos, links, estrutura, clareza, consistência e relações documentais. |
| Responsabilidades | Organizar documentos, preservar contexto, validar links, evitar duplicidade e manter clareza para humanos e IA. |
| Fora do escopo | Transformar documento informativo em norma sem aprovação ou inventar fatos. |
| Entradas | Documentos, templates, KES, Policies, modelos arquiteturais e contexto da tarefa. |
| Saídas | Documentos estruturados, revisão documental, inventários e recomendações. |
| Consumidores | Knowledge, arquitetura, governança, agentes e produtos consumidores. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 3 - Implementação supervisionada |
| Classificação de risco | Médio |
| Permissões | Criar e editar documentação autorizada, validar Markdown e links. |
| Proibições | Criar norma sem KES/Policy, apagar histórico ou publicar externamente. |
| Dependências | Knowledge System Model, Templates, KES-0001, POL-0004. |
| Evidências obrigatórias | Fontes, arquivos alterados, validação Markdown, links e resumo de mudanças. |
| Critérios de ativação | Owner, escopo documental e critérios de revisão definidos. |
| Critérios de suspensão | Quebra de links, alteração normativa indevida ou apagamento de contexto histórico. |
| Critérios de depreciação | Consolidação com Knowledge Curator ou agente documental mais amplo. |
| Produtos aplicáveis | KEP, AutoBody ERP e produtos futuros. |

### AGT-KNOW-001 - Knowledge Curator

| Campo | Valor |
| --- | --- |
| ID | AGT-KNOW-001 |
| Nome | Knowledge Curator |
| Status | Candidate |
| Categoria | Agente de documentação / conhecimento |
| Missão | Identificar conhecimento órfão, verificar referências, classificar conteúdo e apoiar lifecycle documental. |
| Escopo | Knowledge, glossários, inventários, lifecycle, referências e conteúdo desatualizado. |
| Responsabilidades | Mapear lacunas, sugerir classificação, sinalizar conteúdo obsoleto e apoiar preservação do conhecimento. |
| Fora do escopo | Arquivar ou depreciar documentos autonomamente. |
| Entradas | Knowledge System Model, documentos, links, inventários e estados documentais. |
| Saídas | Relatórios de lacunas, referências quebradas, conteúdo órfão e recomendações de lifecycle. |
| Consumidores | Knowledge, documentação, agentes de auditoria e governança. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 2 - Preparação de artefatos |
| Classificação de risco | Médio |
| Permissões | Ler, classificar, sugerir atualização, propor depreciação e validar referências. |
| Proibições | Depreciar, arquivar, apagar documentos ou alterar classificação sem autorização. |
| Dependências | Knowledge System Model, Policies, Documentation Architect, Agent Audit Reviewer. |
| Evidências obrigatórias | Lista de documentos, referências verificadas, classificação sugerida e justificativa. |
| Critérios de ativação | Owner, critérios de classificação e processo de lifecycle definidos. |
| Critérios de suspensão | Classificação indevida, arquivamento não autorizado ou confusão entre histórico e regra ativa. |
| Critérios de depreciação | Incorporação por ferramenta ou agente documental mais completo. |
| Produtos aplicáveis | KEP e produtos consumidores. |

### AGT-SEC-001 - Security Reviewer

| Campo | Valor |
| --- | --- |
| ID | AGT-SEC-001 |
| Nome | Security Reviewer |
| Status | Candidate |
| Categoria | Agente de segurança |
| Missão | Identificar riscos, revisar exposição de segredos, analisar permissões e produzir recomendações. |
| Escopo | Segurança, classificação, segredos, permissões, controles e exposição indevida. |
| Responsabilidades | Detectar exposição indevida, avaliar severidade, recomendar contenção e apoiar aderência às políticas. |
| Fora do escopo | Operar produção, acessar segredos sem autorização ou alterar controles críticos sozinho. |
| Entradas | Diffs, logs, policies, configurações, dependências e contexto de risco. |
| Saídas | Achados de segurança, severidade, recomendações e bloqueios sugeridos. |
| Consumidores | Segurança, engenharia, DevOps, auditoria e governança. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 2 - Preparação de artefatos |
| Classificação de risco | Alto |
| Permissões | Ler, analisar, executar validações não destrutivas e recomendar contenção. |
| Proibições | Acessar segredos, modificar credenciais, operar produção ou remover controles sem autorização. |
| Dependências | POL-0001, POL-0002, KAF, DevOps Advisor, Agent Audit Reviewer. |
| Evidências obrigatórias | Escopo analisado, achados, severidade, evidências, limitações e recomendações. |
| Critérios de ativação | Owner, critérios de severidade, política de acesso e fluxo de escalonamento definidos. |
| Critérios de suspensão | Exposição indevida, acesso não autorizado ou recomendação sem evidência. |
| Critérios de depreciação | Substituição por processo formal de segurança ou ferramenta aprovada. |
| Produtos aplicáveis | KEP, AutoBody ERP e produtos futuros. |

### AGT-QA-001 - Quality Assurance Agent

| Campo | Valor |
| --- | --- |
| ID | AGT-QA-001 |
| Nome | Quality Assurance Agent |
| Status | Candidate |
| Categoria | Agente de qualidade |
| Missão | Verificar critérios de aceite, avaliar evidências, identificar regressões e consolidar readiness de qualidade. |
| Escopo | Critérios de aceite, evidências de testes/builds, regressões, validações executadas e readiness de qualidade. |
| Responsabilidades | Verificar se testes, builds e validações necessárias foram executados; avaliar suficiência, consistência e aderência das evidências; identificar regressões e riscos residuais. |
| Fora do escopo | Ser responsável principal por projetar ou implementar suites de teste; declarar aprovação final quando evidências obrigatórias estiverem ausentes. |
| Entradas | Requisitos, critérios de aceite, comandos autorizados, logs e diffs. |
| Saídas | Relatório de validação, falhas, cobertura observada e riscos residuais. |
| Consumidores | Engenharia, produto, revisão e release. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 3 - Implementação supervisionada |
| Classificação de risco | Alto |
| Permissões | Analisar evidências, executar validações autorizadas quando necessário, verificar logs e reportar falhas. |
| Proibições | Aprovar release, alterar escopo para passar testes ou ocultar falhas. |
| Dependências | KES-0001, Engineering Builder, Test Engineering Agent, Release Advisor. Test Engineering produz evidências; Quality Assurance avalia suficiência, consistência e aderência dessas evidências. |
| Evidências obrigatórias | Comandos, logs, resultado, falhas, limitações e critérios verificados. |
| Critérios de ativação | Owner, comandos permitidos, ambientes autorizados e critérios de aceite definidos. |
| Critérios de suspensão | Execução fora do ambiente autorizado ou resultado reportado sem evidência. |
| Critérios de depreciação | Consolidação com Test Engineering Agent ou automação de QA mais madura. |
| Produtos aplicáveis | KEP, AutoBody ERP e produtos futuros. |

### AGT-TEST-001 - Test Engineering Agent

| Campo | Valor |
| --- | --- |
| ID | AGT-TEST-001 |
| Nome | Test Engineering Agent |
| Status | Candidate |
| Categoria | Agente de qualidade / testes |
| Missão | Projetar estratégia de testes, propor casos, criar testes autorizados, executar suites e investigar falhas. |
| Escopo | Estratégia de testes, casos, suites, falhas, lacunas de cobertura e evidências de execução. |
| Responsabilidades | Propor cobertura, criar testes autorizados, executar suites permitidas, investigar falhas e identificar lacunas de cobertura. |
| Fora do escopo | Conceder aprovação final de qualidade; modificar comportamento funcional apenas para fazer testes passarem. |
| Entradas | Requisitos, código autorizado, critérios de aceite, falhas e cobertura existente. |
| Saídas | Testes autorizados, relatórios de execução, evidências, falhas investigadas e lacunas de cobertura. |
| Consumidores | Engenharia, QA, produto e revisão. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 3 - Implementação supervisionada |
| Classificação de risco | Alto |
| Permissões | Propor/criar testes autorizados e executar suites permitidas. |
| Proibições | Alterar regra de negócio sem autorização, apagar testes relevantes ou mascarar falhas. |
| Dependências | KES-0001, QA Agent, Engineering Builder, Product Analysis Agent. |
| Evidências obrigatórias | Testes criados, comandos, resultados, falhas, cobertura observada e limitações. |
| Critérios de ativação | Owner, suites permitidas, escopo de escrita e validação definidos. |
| Critérios de suspensão | Testes que alterem comportamento indevidamente ou execução sem autorização. |
| Critérios de depreciação | Sobreposição com QA Agent ou framework de testes futuro. |
| Produtos aplicáveis | AutoBody ERP e produtos futuros. |

### AGT-DEVOPS-001 - DevOps Advisor

| Campo | Valor |
| --- | --- |
| ID | AGT-DEVOPS-001 |
| Nome | DevOps Advisor |
| Status | Candidate |
| Categoria | Agente de DevOps |
| Missão | Analisar CI/CD, revisar Docker, propor automações, verificar pipelines e apoiar ambientes. |
| Escopo | Pipelines, ambientes, automações, builds, containers e operação autorizada. |
| Responsabilidades | Avaliar pipelines, revisar automações, identificar riscos operacionais e propor melhorias controladas. |
| Fora do escopo | Publicar, operar produção ou alterar infraestrutura crítica sem autorização explícita. |
| Entradas | Configurações, scripts, logs, pipelines, Dockerfiles e critérios operacionais. |
| Saídas | Recomendações, planos operacionais, riscos, validações e relatórios. |
| Consumidores | Engenharia, QA, segurança, release e produtos consumidores. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 2 - Preparação de artefatos |
| Classificação de risco | Alto |
| Permissões | Ler configs, analisar pipelines, propor automações e executar validações autorizadas. |
| Proibições | Operar produção, alterar infra crítica, publicar release ou acessar segredos sem autorização. |
| Dependências | KAF, Security Reviewer, QA Agent, Release Advisor. |
| Evidências obrigatórias | Ambiente, comandos, logs, riscos, impacto e validação. |
| Critérios de ativação | Owner, ambientes autorizados, comandos permitidos e limites definidos. |
| Critérios de suspensão | Operação fora de ambiente autorizado ou risco de produção não escalado. |
| Critérios de depreciação | Substituição por playbook ou agente operacional mais controlado. |
| Produtos aplicáveis | KEP, AutoBody ERP e produtos futuros. |

### AGT-DATA-001 - Database Reviewer

| Campo | Valor |
| --- | --- |
| ID | AGT-DATA-001 |
| Nome | Database Reviewer |
| Status | Candidate |
| Categoria | Agente de análise / dados |
| Missão | Revisar modelagem, analisar migrations, verificar integridade, riscos de dados e rollback. |
| Escopo | Modelagem, migrations, integridade, consistência e riscos de dados. |
| Responsabilidades | Avaliar integridade, riscos de migrations, impactos em dados e alternativas de rollback. |
| Fora do escopo | Apagar dados, alterar migrations antigas ou operar banco de produção. |
| Entradas | Migrations, schemas, diffs, ADRs, requisitos e logs autorizados. |
| Saídas | Análise de risco, recomendações, lacunas e plano de rollback sugerido. |
| Consumidores | Backend, arquitetura, QA, segurança e produtos consumidores. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 2 - Preparação de artefatos |
| Classificação de risco | Alto |
| Permissões | Ler e analisar modelagem/migrations autorizadas e propor correções. |
| Proibições | Operar produção, apagar dados, modificar migrations antigas ou executar alteração destrutiva. |
| Dependências | KES-0001, Security Reviewer, Backend Agent, Product Analysis Agent. |
| Evidências obrigatórias | Arquivos analisados, riscos, impacto, compatibilidade e rollback sugerido. |
| Critérios de ativação | Owner, contexto de banco permitido e fluxo de revisão definidos. |
| Critérios de suspensão | Recomendar alteração destrutiva sem autorização ou ignorar risco de produção. |
| Critérios de depreciação | Substituição por agente de dados mais específico. |
| Produtos aplicáveis | AutoBody ERP e produtos futuros. |

### AGT-FE-001 - Frontend Engineering Agent

| Campo | Valor |
| --- | --- |
| ID | AGT-FE-001 |
| Nome | Frontend Engineering Agent |
| Status | Candidate |
| Categoria | Agente de implementação supervisionada / frontend |
| Missão | Apoiar Angular e frontend, revisar componentes, analisar acessibilidade, responsividade e estado. |
| Escopo | UI, componentes, estado, rotas, acessibilidade, responsividade e integração frontend autorizada. |
| Responsabilidades | Implementar ou revisar frontend supervisionado, validar UX técnica, acessibilidade e integração. |
| Fora do escopo | Alterar contratos de negócio unilateralmente. |
| Entradas | Requisitos, design, código autorizado, critérios de aceite e padrões frontend. |
| Saídas | Alterações supervisionadas, análises, testes, screenshots quando aplicável e relatório. |
| Consumidores | Produto, engenharia, QA e revisão. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 3 - Implementação supervisionada |
| Classificação de risco | Alto |
| Permissões | Editar frontend autorizado, executar testes/builds autorizados e reportar evidências. |
| Proibições | Alterar regra de negócio, expor dados, quebrar contrato ou publicar release. |
| Dependências | KES-0001, QA Agent, Product Analysis Agent, Backend Agent. |
| Evidências obrigatórias | Diff, arquivos alterados, validações, screenshots quando úteis e riscos. |
| Critérios de ativação | Owner, escopo frontend, comandos permitidos e critérios de aceite definidos. |
| Critérios de suspensão | Alteração de contrato sem autorização ou regressão crítica não reportada. |
| Critérios de depreciação | Substituição por agente frontend mais especializado. |
| Produtos aplicáveis | AutoBody ERP e produtos futuros. |

### AGT-BE-001 - Backend Engineering Agent

| Campo | Valor |
| --- | --- |
| ID | AGT-BE-001 |
| Nome | Backend Engineering Agent |
| Status | Candidate |
| Categoria | Agente de implementação supervisionada / backend |
| Missão | Apoiar Java e Spring, revisar APIs, serviços, persistência e segurança. |
| Escopo | APIs, serviços, persistência, validações, segurança e integração backend autorizada. |
| Responsabilidades | Implementar ou revisar backend supervisionado, avaliar APIs, persistência, segurança e impacto. |
| Fora do escopo | Expor entidades diretamente ou alterar regras críticas sem contexto e aprovação. |
| Entradas | Requisitos, código autorizado, APIs, logs, critérios de aceite e ADRs locais. |
| Saídas | Alterações supervisionadas, análises, testes, relatórios e riscos. |
| Consumidores | Produto, engenharia, QA, segurança e banco de dados. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 3 - Implementação supervisionada |
| Classificação de risco | Alto |
| Permissões | Editar backend autorizado, executar testes/builds autorizados e reportar evidências. |
| Proibições | Expor dados sensíveis, alterar regra crítica sem aprovação, operar produção ou modificar segurança sozinho. |
| Dependências | KES-0001, Security Reviewer, Database Reviewer, QA Agent. |
| Evidências obrigatórias | Diff, testes, logs, análise de impacto, riscos e limitações. |
| Critérios de ativação | Owner, escopo backend, comandos permitidos e critérios de aceite definidos. |
| Critérios de suspensão | Exposição indevida, mudança crítica sem aprovação ou falha de segurança não escalada. |
| Critérios de depreciação | Substituição por agente backend mais especializado. |
| Produtos aplicáveis | AutoBody ERP e produtos futuros. |

### AGT-PROD-001 - Product Analysis Agent

| Campo | Valor |
| --- | --- |
| ID | AGT-PROD-001 |
| Nome | Product Analysis Agent |
| Status | Candidate |
| Categoria | Agente de planejamento / produto |
| Missão | Analisar requisitos, identificar impacto, estruturar critérios de aceite e apoiar priorização. |
| Escopo | Necessidades, impacto, critérios de aceite, rastreabilidade e priorização operacional. |
| Responsabilidades | Estruturar necessidades, mapear impacto, definir critérios de aceite e preservar rastreabilidade. |
| Fora do escopo | Definir estratégia empresarial autonomamente. |
| Entradas | Requisitos, feedback, roadmap, contexto de produto e políticas aplicáveis. |
| Saídas | Critérios de aceite, impacto, riscos, dependências e proposta de priorização. |
| Consumidores | Produto, engenharia, QA, documentação e arquitetura. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 2 - Preparação de artefatos |
| Classificação de risco | Médio |
| Permissões | Analisar requisitos, propor critérios e mapear impacto. |
| Proibições | Definir estratégia, aprovar roadmap ou alterar prioridade sem decisão humana. |
| Dependências | Roadmap, KES-0001, Platform Model, Domain Advisor, QA Agent. |
| Evidências obrigatórias | Requisito analisado, impacto, critérios, riscos e dependências. |
| Critérios de ativação | Owner de produto, limites de decisão e contexto de produto definidos. |
| Critérios de suspensão | Priorização indevida como decisão final ou invenção de requisito. |
| Critérios de depreciação | Substituição por processo de discovery ou agente de produto mais maduro. |
| Produtos aplicáveis | AutoBody ERP e produtos futuros. |

### AGT-DOMAIN-001 - AutoBody Domain Advisor

| Campo | Valor |
| --- | --- |
| ID | AGT-DOMAIN-001 |
| Nome | AutoBody Domain Advisor |
| Status | Candidate |
| Categoria | Agente consultivo / domínio |
| Missão | Apoiar entendimento do domínio automotivo e coerência entre clientes, veículos, OS, oficina, estoque e financeiro. |
| Escopo | Contexto de domínio do AutoBody ERP, termos, conflitos de regra e critérios de aceite. Este agente é específico do AutoBody ERP e não representa todos os domínios de negócio futuros. |
| Responsabilidades | Identificar conflitos de domínio, separar hipótese de decisão e apoiar critérios de aceite. |
| Fora do escopo | Inventar regras de negócio como decisões aprovadas. |
| Entradas | Documentação do produto, requisitos, ADRs locais, feedback e critérios de aceite. |
| Saídas | Explicações, lacunas, riscos de regra, critérios sugeridos e dúvidas para revisão humana. |
| Consumidores | Produto, backend, frontend, QA, documentação e arquitetura. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 1 - Sugestão |
| Classificação de risco | Médio |
| Permissões | Ler contexto autorizado, sugerir critérios e identificar conflitos. |
| Proibições | Aprovar regra de negócio, alterar produto ou inventar decisão como fato. |
| Dependências | Product Analysis Agent, Knowledge, ADRs locais do AutoBody ERP. |
| Evidências obrigatórias | Fontes, hipóteses, inferências, dúvidas e critérios sugeridos. |
| Critérios de ativação | Owner de domínio e fontes autorizadas definidas. |
| Critérios de suspensão | Regras inventadas, confusão entre hipótese e decisão ou uso sem fonte. |
| Critérios de depreciação | Substituição por documentação de domínio mais completa ou agente setorial. |
| Produtos aplicáveis | AutoBody ERP. |

Futuros produtos podem possuir agentes de domínio próprios somente quando houver necessidade real. Regras de negócio continuam dependendo de decisão humana e contexto validado.

### AGT-AUD-001 - Agent Audit Reviewer

| Campo | Valor |
| --- | --- |
| ID | AGT-AUD-001 |
| Nome | Agent Audit Reviewer |
| Status | Candidate |
| Categoria | Agente de auditoria |
| Missão | Revisar evidências de agentes, verificar permissões, analisar incidentes e recomendar suspensão ou revisão. |
| Escopo | Evidências, permissões, incidentes, violações do KAF e conformidade operacional. |
| Responsabilidades | Auditar evidências, verificar permissões, apontar violações do KAF e recomendar ações corretivas. |
| Fora do escopo | Auditar sozinho tarefa própria de alto ou crítico risco. |
| Entradas | Logs, relatórios, diffs, autorizações, evidências, incidentes e decisões. |
| Saídas | Relatório de auditoria, lacunas, riscos, recomendações e decisão sugerida. |
| Consumidores | Governança, segurança, owners, agentes e produtos consumidores. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 2 - Preparação de artefatos |
| Classificação de risco | Alto |
| Permissões | Ler evidências, comparar permissões e recomendar suspensão, revisão ou reativação. |
| Proibições | Aprovar sua própria auditoria, ocultar lacunas ou executar mudanças operacionais. |
| Dependências | KAF, Policies, Security Reviewer, Engineering Reviewer. |
| Evidências obrigatórias | Itens auditados, evidências faltantes, permissões usadas, riscos e recomendação. |
| Critérios de ativação | Owner, critérios de auditoria e fluxo de incidentes definidos. |
| Critérios de suspensão | Auditoria de tarefa própria de alto risco ou recomendação sem evidência. |
| Critérios de depreciação | Substituição por processo formal de auditoria ou ferramenta aprovada. |
| Produtos aplicáveis | KEP, AutoBody ERP e produtos futuros. |

### AGT-REL-001 - Release Advisor

| Campo | Valor |
| --- | --- |
| ID | AGT-REL-001 |
| Nome | Release Advisor |
| Status | Candidate |
| Categoria | Agente de análise / release |
| Missão | Verificar readiness, changelog, versão, checklist e produzir recomendação de release. |
| Escopo | Readiness, versão, changelog, checklist, evidências e riscos de release. |
| Responsabilidades | Consolidar evidências de release, identificar pendências, avaliar prontidão e recomendar decisão humana. |
| Fora do escopo | Publicar release autonomamente. |
| Entradas | Changelog, versão, testes, build, checklist, critérios e riscos. |
| Saídas | Relatório de readiness, pendências, riscos e recomendação. |
| Consumidores | Produto, engenharia, QA, DevOps e governança. |
| Owner operacional | Owner a definir |
| Nível máximo de autonomia | Nível 2 - Preparação de artefatos |
| Classificação de risco | Alto |
| Permissões | Ler evidências, verificar checklist, analisar readiness e recomendar. |
| Proibições | Publicar release, alterar versão final sem autorização ou operar produção. |
| Dependências | QA Agent, DevOps Advisor, Changelog, Policies, KAF. |
| Evidências obrigatórias | Checklist, testes/build, changelog, versão, riscos e recomendação. |
| Critérios de ativação | Owner, checklist aprovado e fluxo de release definido. |
| Critérios de suspensão | Recomendação sem evidência ou tentativa de publicação autônoma. |
| Critérios de depreciação | Substituição por processo de release mais maduro. |
| Produtos aplicáveis | AutoBody ERP e produtos futuros. |

## 13. Matriz resumida

| ID | Nome | Categoria | Status inicial | Risco máximo | Autonomia máxima | Owner | Escopo de atuação | Produtos | Principais evidências |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| AGT-ARCH-001 | Architecture Advisor | Análise / arquitetura | Candidate | Alto | Nível 2 | Owner a definir | Ambos | KEP, produtos | Impacto, riscos, fontes |
| AGT-IMPL-001 | Engineering Builder | Implementação supervisionada | Candidate | Alto | Nível 3 | Owner a definir | Ambos | KEP, produtos | Status, diff, validações |
| AGT-REV-001 | Engineering Reviewer | Revisão | Candidate | Alto | Nível 2 | Owner a definir | Ambos | KEP, produtos | Achados, severidade, critérios |
| AGT-DOC-001 | Documentation Architect | Documentação | Candidate | Médio | Nível 3 | Owner a definir | Plataforma | KEP, produtos | Markdown, links, fontes |
| AGT-KNOW-001 | Knowledge Curator | Conhecimento | Candidate | Médio | Nível 2 | Owner a definir | Plataforma | KEP, produtos | Referências, lacunas, lifecycle |
| AGT-SEC-001 | Security Reviewer | Segurança | Candidate | Alto | Nível 2 | Owner a definir | Ambos | KEP, produtos | Achados, severidade, evidências |
| AGT-QA-001 | Quality Assurance Agent | Qualidade | Candidate | Alto | Nível 3 | Owner a definir | Ambos | KEP, produtos | Evidências, builds, logs |
| AGT-TEST-001 | Test Engineering Agent | Testes | Candidate | Alto | Nível 3 | Owner a definir | Ambos | Produtos | Testes, falhas, cobertura |
| AGT-DEVOPS-001 | DevOps Advisor | DevOps | Candidate | Alto | Nível 2 | Owner a definir | Ambos | KEP, produtos | Ambiente, logs, impacto |
| AGT-DATA-001 | Database Reviewer | Dados | Candidate | Alto | Nível 2 | Owner a definir | Produto | Produtos | Migrations, riscos, rollback |
| AGT-FE-001 | Frontend Engineering Agent | Frontend | Candidate | Alto | Nível 3 | Owner a definir | Produto | Produtos | Diff, testes, screenshots |
| AGT-BE-001 | Backend Engineering Agent | Backend | Candidate | Alto | Nível 3 | Owner a definir | Produto | Produtos | Diff, testes, logs |
| AGT-PROD-001 | Product Analysis Agent | Produto | Candidate | Médio | Nível 2 | Owner a definir | Produto | Produtos | Critérios, impacto, riscos |
| AGT-DOMAIN-001 | AutoBody Domain Advisor | Domínio | Candidate | Médio | Nível 1 | Owner a definir | Produto | AutoBody ERP | Fontes, inferências, dúvidas |
| AGT-AUD-001 | Agent Audit Reviewer | Auditoria | Candidate | Alto | Nível 2 | Owner a definir | Plataforma | KEP, produtos | Evidências, permissões, riscos |
| AGT-REL-001 | Release Advisor | Release | Candidate | Alto | Nível 2 | Owner a definir | Ambos | Produtos | Checklist, versão, readiness |

## 14. Relações entre agentes

Relações recomendadas:

- Architecture Advisor propõe e Engineering Reviewer revisa.
- Engineering Builder implementa e QA valida.
- Test Engineering produz evidências; Quality Assurance avalia suficiência, consistência e aderência dessas evidências.
- Security Reviewer revisa alterações de segurança.
- Agent Audit Reviewer audita atividades relevantes.
- Product Analysis Agent estrutura necessidade.
- Documentation Architect registra conhecimento aprovado.

Para risco alto ou crítico, planejamento, implementação, revisão, aprovação e auditoria NÃO DEVEM ficar concentrados no mesmo agente.

Notas de fronteira:

- Documentation Architect estrutura e redige artefatos; Knowledge Curator governa classificação, relações, lifecycle e saúde do conhecimento.
- DevOps Advisor analisa pipeline, infraestrutura e automação; Release Advisor avalia readiness, versão, changelog e checklist de publicação.
- Engineering Reviewer revisa uma mudança específica; Agent Audit Reviewer verifica atuação, permissões, evidências e conformidade dos agentes.

## 15. Segregação de funções

Em tarefas de risco alto ou crítico:

- planejamento, implementação, revisão, aprovação e auditoria DEVEM ser funções distinguíveis;
- implementação e aprovação DEVEM ser separadas;
- auditoria DEVE ser independente da execução quando possível;
- o mesmo agente NÃO DEVE implementar testes e ser o único aprovador de qualidade;
- nenhum agente DEVE aprovar autonomamente o próprio trabalho;
- revisão humana é obrigatória.

## 16. Reutilização e prevenção de duplicidade

Antes de criar um novo agente:

1. Pesquisar o catálogo.
2. Verificar se um agente existente pode assumir o papel.
3. Avaliar extensão de capacidade.
4. Verificar impacto em permissões.
5. Justificar formalmente a criação.

Agentes duplicados DEVEM ser consolidados ou depreciados.

## 17. Contrato com produtos

Agentes atuando no AutoBody ERP ou em produtos futuros DEVEM receber:

- contexto específico;
- baseline da KEP;
- políticas aplicáveis;
- ADRs locais;
- limites do repositório;
- critérios de aceite;
- permissões autorizadas;
- evidências esperadas.

O catálogo não concede acesso automático ao produto.

## 18. Critérios de ativação

Um agente só pode passar para `Active` quando houver:

- owner operacional humano;
- missão aprovada;
- limites definidos;
- matriz de permissões;
- classificação de risco;
- instruções operacionais;
- evidências obrigatórias;
- processo de suspensão;
- revisão de segurança;
- autorização formal.

## 19. Métricas futuras

Possibilidades futuras, sem implementação nesta versão:

- taxa de tarefas concluídas;
- retrabalho;
- incidentes;
- violações de permissões;
- qualidade das evidências;
- tempo de revisão;
- agentes sem uso;
- sobreposição de capacidades;
- permissões não utilizadas.

## 20. Evolução do catálogo

### Fusão de agentes

Agentes com missões, entradas, saídas e permissões substancialmente sobrepostas DEVEM ser avaliados para fusão. A fusão deve preservar histórico, consumidores, evidências e identificadores anteriores.

### Divisão de agentes

Um agente PODE ser dividido quando acumular responsabilidades incompatíveis, riscos distintos ou capacidades que exijam owners, permissões ou evidências diferentes.

### Renomeação

Renomeações DEVEM preservar o identificador original, registrar motivo e manter rastreabilidade histórica.

### Substituição

Um agente substituto DEVE declarar qual agente substitui, por que substitui e quais capacidades permanecem, mudam ou deixam de existir.

### Depreciação

Um agente DEVE ser depreciado quando não for mais recomendado para novos usos, mas ainda precisar existir durante transição ou por histórico.

### Desativação

Um agente desativado NÃO DEVE operar, receber novas permissões ou ser usado como agente ativo. Seu histórico deve permanecer disponível para auditoria.

### Preservação histórica

Um identificador histórico nunca poderá ser reutilizado.

## 21. Arquitetura futura

Os componentes abaixo são visão arquitetural futura e não fazem parte deste documento:

- Agent Templates;
- Agent Registry;
- Agent Playbooks;
- Agent Metrics;
- Agent Capability Matrix;
- Agent Incident Register.

Esses componentes poderão ser criados futuramente por documentos próprios, sem alterar a regra de que o catálogo não implementa agentes nem concede permissões.

## 22. Riscos arquiteturais

### Proliferação de agentes

Risco de criar agentes demais para responsabilidades parecidas.

Mitigação: pesquisa obrigatória no catálogo e consolidação de duplicidades.

### Nomes diferentes para a mesma capacidade

Risco de mascarar duplicidade com nomenclaturas distintas.

Mitigação: comparar missão, entradas, saídas e permissões antes de criar novo agente.

### Permissões amplas

Risco de conceder mais acesso do que a missão exige.

Mitigação: menor privilégio, owner operacional e critérios de ativação.

### Owners inexistentes

Risco de agente sem responsável humano.

Mitigação: agente sem owner não pode ser ativado.

### Agentes ativos sem revisão

Risco de agentes permanecerem ativos depois de perderem utilidade ou segurança.

Mitigação: revisão periódica e critérios de suspensão/depreciação.

### Dependência de fornecedor

Risco de agente depender de recurso exclusivo de ferramenta.

Mitigação: catalogar responsabilidade e permissões, não fornecedor.

### Excesso de especialização

Risco de criar agentes muito estreitos e pouco reutilizáveis.

Mitigação: reutilizar categoria existente quando possível.

### Falsa sensação de autonomia

Risco de interpretar catálogo como autorização operacional.

Mitigação: status Candidate e declaração de que o catálogo não concede acesso.

### Acúmulo de responsabilidades

Risco de um agente planejar, implementar, revisar, aprovar e auditar.

Mitigação: segregação de funções em risco alto ou crítico.

### Conhecimento duplicado entre agentes

Risco de agentes manterem critérios divergentes.

Mitigação: usar KEP, KAF, KES, Policies e Knowledge como fontes comuns.

## 23. Diagramas ASCII

### KAF, catálogo e agentes

```text
KDEVY Agent Framework (KAF)
  -> governa
Agent Catalog
  -> organiza
Agentes candidatos, planejados, aprovados, ativos, suspensos, depreciados e desativados
```

### Necessidade, pesquisa e criação ou reutilização

```text
Necessidade
  -> pesquisar catalogo
  -> existe agente aplicavel?
       -> sim: reutilizar ou estender capacidade
       -> nao: propor novo agente candidato
  -> avaliar owner, risco, permissoes e evidencias
```

### Planejamento, implementação, revisão, aprovação e auditoria

```text
Planejamento
  -> Implementacao
  -> Revisao
  -> Aprovacao humana
  -> Auditoria quando aplicavel
```

### Agente e produto consumidor

```text
Agente catalogado
  -> recebe contexto autorizado
  -> aplica baseline da KEP
  -> respeita limites do produto
  -> produz evidencias
  -> nao recebe acesso automatico
```

### Lifecycle de uma entrada do catálogo

```text
Candidate
  -> Planned
  -> Approved
  -> Active
  -> Suspended
  -> Deprecated
  -> Disabled
```

## 24. Limites arquiteturais

- O catálogo pertence ao KAF.
- O catálogo não substitui o `architecture/AGENT_FRAMEWORK_MODEL.md`.
- O catálogo não cria permissões automaticamente.
- O catálogo não contém segredos.
- O catálogo não implementa agentes.
- O catálogo não substitui owners humanos.
- O catálogo não altera a arquitetura global da KEP.
- O catálogo pode evoluir independentemente de fornecedores.

## 25. Histórico

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.0 | 2026-07-15 | Criação inicial do Catálogo Oficial de Agentes da KDEVY Engineering Platform. |
| 0.1.1 | 2026-07-15 | Ajustes pós-revisão arquitetural: refinamento das fronteiras entre QA e Test, diferenciação de owners, critérios de promoção para Planned, escopo de atuação, controle de agentes prematuros e esclarecimento de sobreposições. |
