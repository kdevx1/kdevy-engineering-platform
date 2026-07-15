# KES-0001 - Engineering Constitution

## Controle documental

| Campo | Valor |
| --- | --- |
| Identificador | KES-0001 |
| Título | Engineering Constitution |
| Proprietária | KDEVY |
| Classificação | Interno |
| Situação | Inicial |
| Versão | 0.1.1 |
| Data | 2026-07-07 |
| Escopo | Engenharia, governança, documentação, IA e produtos consumidores |

## Objetivo

Estabelecer a constituição normativa de engenharia da KDEVY no contexto da KDEVY Engineering Platform.

Este documento define princípios, direitos, deveres e regras de governança que DEVEM orientar pessoas, agentes de IA, documentos, automações, produtos consumidores e decisões técnicas.

## Escopo

Esta especificação se aplica à engenharia realizada sob direção da KDEVY, incluindo:

- KDEVY Engineering Platform;
- KDEVY Engineering Knowledge Base;
- especificações KES;
- políticas, padrões e templates;
- automações e agentes de IA autorizados;
- produtos consumidores da KEP;
- documentação técnica e institucional relacionada à engenharia.

Esta especificação NÃO DEVE ser usada para incorporar código-fonte de produtos ao repositório da KEP.

## Aplicabilidade

Esta especificação DEVE ser considerada em:

- criação de especificações;
- escrita de ADRs e KIPs;
- desenho de arquitetura;
- revisão de código ou documentação;
- uso de agentes de IA;
- criação de padrões;
- governança de produtos consumidores;
- decisões que afetem propriedade intelectual, segurança, qualidade ou continuidade.

Produtos consumidores, incluindo o AutoBody ERP, DEVEM consumir esta constituição como referência de engenharia, mantendo seus próprios repositórios e ciclos de produto.

## Linguagem normativa

Os termos normativos abaixo DEVEM ser interpretados da seguinte forma:

- DEVE: indica requisito obrigatório.
- NÃO DEVE: indica proibição obrigatória.
- RECOMENDA-SE: indica orientação preferencial, admitindo exceção justificada.
- PODE: indica permissão ou possibilidade, sem caráter obrigatório.

## Referências

- `specifications/KES-0000_MASTER_SPECIFICATION.md`
- `blueprint/KEP-BLUEPRINT.md`
- `policies/POL-0001_INTELLECTUAL_PROPERTY.md`
- `policies/POL-0002_INFORMATION_CLASSIFICATION.md`
- `adr/ADR-0000_FOUNDATION.md`
- `adr/ADR-0001_CORPORATE_IDENTITY_SEPARATION.md`
- `architecture/REPOSITORY_BOUNDARIES_REVIEW.md`

## Relação com KES-0000

A KES-0000 define a especificação-mestre da KEP.

A KES-0001 complementa a KES-0000 ao declarar a constituição normativa da engenharia. Enquanto a KES-0000 define a plataforma e seus componentes principais, a KES-0001 define como a engenharia DEVE se comportar ao criar, alterar, revisar e governar esses componentes.

Em caso de conflito, a precedência normativa mínima DEVE ser:

1. Políticas de segurança, propriedade intelectual, licenciamento e classificação prevalecem quando aplicáveis.
2. A KES-0000 prevalece sobre especificações KES derivadas.
3. Especificações KES específicas DEVEM obedecer à KES-0001.
4. ADRs registram decisões arquiteturais aceitas.
5. KIPs propõem evolução antes de aceitação.

Se o conflito permanecer após aplicar essa precedência, uma nova ADR ou KIP DEVE ser criada.

## Princípios Constitucionais

### 1. Clareza antes de velocidade

- Descrição: Toda entrega DEVE priorizar clareza de intenção, escopo e impacto antes de velocidade aparente.
- Justificativa: Velocidade sem clareza cria retrabalho, decisões frágeis e dívida difícil de rastrear.
- Exemplo de aplicação: Antes de implementar uma automação, a equipe DEVE registrar qual problema ela resolve, quem será afetado e quais limites operacionais existem.

### 2. Propriedade intelectual protegida

- Descrição: Documentos, padrões, prompts, playbooks, arquitetura, especificações e decisões pertencem à KDEVY e DEVEM ser tratados como ativos intelectuais proprietários.
- Justificativa: A base de engenharia é patrimônio estratégico e NÃO DEVE ser tratada como material descartável ou livre de controle.
- Exemplo de aplicação: Um agente de IA PODE usar documentos da KEP em uma tarefa autorizada, mas NÃO DEVE publicar, exportar ou misturar esse conteúdo com bases externas sem autorização.

### 3. Separação entre empresa, plataforma e produto

- Descrição: KDEVY, KEP, AutoBody ERP e produtos futuros DEVEM ser descritos como entidades distintas.
- Justificativa: Misturar identidade institucional, plataforma e produto gera acoplamento conceitual e governança ambígua.
- Exemplo de aplicação: Um documento de produto DEVE dizer que o AutoBody ERP consome a KEP, e NÃO DEVE apresentar o AutoBody ERP como parte interna da plataforma.

### 4. Documentação como artefato de engenharia

- Descrição: Documentação técnica DEVE ser tratada como artefato de engenharia, não como material secundário.
- Justificativa: Sistemas sustentáveis exigem contexto, rastreabilidade e instruções compreensíveis por pessoas e agentes de IA.
- Exemplo de aplicação: Uma mudança arquitetural relevante DEVE atualizar blueprint, ADR, especificação ou política relacionada.

### 5. Decisão rastreável

- Descrição: Decisões relevantes DEVEM registrar contexto, alternativas, decisão e consequências.
- Justificativa: Rastreabilidade reduz ambiguidade e permite entender por que uma escolha foi feita.
- Exemplo de aplicação: A escolha de manter `docs/corporate/` incubada na KEP DEVE ser registrada em ADR e refletida no estado do projeto.

### 6. Segurança por padrão

- Descrição: Segurança DEVE ser considerada desde o início de qualquer documentação, automação, integração ou produto.
- Justificativa: Segurança tardia tende a ser incompleta e mais cara de corrigir.
- Exemplo de aplicação: Um script operacional NÃO DEVE registrar segredos, chaves, credenciais ou dados sensíveis em arquivos versionados.

### 7. Classificação da informação

- Descrição: Informações DEVEM respeitar os níveis de classificação definidos pela KEP.
- Justificativa: Classificação reduz risco de exposição indevida e orienta pessoas e agentes de IA.
- Exemplo de aplicação: Um documento com arquitetura detalhada PODE ser classificado como Confidencial quando houver impacto técnico ou estratégico relevante.

### 8. Qualidade sustentada

- Descrição: Entregas DEVEM buscar manutenção possível, simplicidade adequada, legibilidade e comportamento verificável.
- Justificativa: Qualidade não é apenas ausência de erro; é capacidade de evoluir com segurança.
- Exemplo de aplicação: Uma mudança compartilhada DEVE incluir critérios de aceite e, quando aplicável, validação automatizada ou manual documentada.

### 9. Automação auditável

- Descrição: Automações DEVEM ter propósito claro, entradas compreensíveis, impactos documentados e modo de revisão.
- Justificativa: Automação sem auditoria pode acelerar erros e ocultar decisões.
- Exemplo de aplicação: Um script que altera estado DEVE documentar o que muda, como validar o resultado e como interromper a operação.

### 10. IA responsável e supervisionada

- Descrição: IA PODE apoiar engenharia, documentação, análise e automação, mas NÃO DEVE substituir responsabilidade humana em decisões críticas.
- Justificativa: Agentes de IA ampliam capacidade, mas podem errar contexto, política, segurança ou intenção.
- Exemplo de aplicação: Um agente PODE propor uma ADR, mas uma pessoa responsável DEVE revisar a decisão antes de aceitá-la.

### 11. Conhecimento reutilizável

- Descrição: Conhecimento relevante DEVE ser estruturado para reuso por pessoas, agentes de IA e produtos consumidores.
- Justificativa: Conhecimento preso em conversas, memória individual ou arquivos dispersos perde valor operacional.
- Exemplo de aplicação: Um conceito recorrente DEVE ser adicionado ao glossário ou a uma especificação, em vez de ser redefinido em cada documento.

### 12. Governança proporcional

- Descrição: O nível de governança DEVE ser proporcional ao risco, alcance e permanência da decisão.
- Justificativa: Governança excessiva desacelera, mas ausência de governança torna decisões frágeis.
- Exemplo de aplicação: Uma correção editorial PODE seguir revisão simples; uma mudança em fronteiras de repositório DEVE ter análise arquitetural e ADR.

### 13. Evolução incremental

- Descrição: A KEP DEVE evoluir por ondas, decisões registradas, entregas pequenas o suficiente para revisão e validação antes de commit. Mudanças DEVEM preservar comportamento e conteúdo existente, salvo decisão explícita. Mudanças NÃO DEVEM misturar refatores ou alterações não relacionadas.
- Justificativa: Evolução incremental reduz risco, permite aprendizado contínuo e preserva comportamento e conteúdo existente salvo decisão explícita.
- Exemplo de aplicação: Uma área institucional PODE nascer incubada na KEP e ser extraída futuramente quando critérios objetivos forem atendidos; essa mudança NÃO DEVE misturar refatores ou alterações não relacionadas.

### 14. Revisão técnica honesta

- Descrição: Revisões DEVEM priorizar riscos, inconsistências, regressões, lacunas de teste e aderência às políticas.
- Justificativa: Revisão existe para melhorar a decisão, não para apenas aprovar mudanças.
- Exemplo de aplicação: Uma revisão DEVE apontar quando uma documentação mistura empresa, plataforma e produto de forma ambígua.

### 15. Produtos consomem a plataforma sem acoplamento indevido

- Descrição: Produtos consumidores DEVEM usar padrões e práticas da KEP sem incorporar sua própria implementação ou código-fonte ao repositório da plataforma.
- Justificativa: A KEP deve ser reutilizável por múltiplos produtos sem virar repositório de produto.
- Exemplo de aplicação: O AutoBody ERP DEVE manter seu código-fonte em repositório próprio, mesmo quando seguir políticas e especificações da KEP.

### 16. Operabilidade e continuidade

- Descrição: Sistemas, documentos e processos DEVEM ser compreensíveis por pessoas futuras e agentes de IA autorizados.
- Justificativa: Engenharia sustentável depende de continuidade além de uma única pessoa, sessão ou decisão.
- Exemplo de aplicação: Um playbook operacional DEVE explicar pré-condições, execução, validação e riscos conhecidos.

## Direitos

No contexto desta especificação, direitos são direitos operacionais internos da engenharia da KDEVY. Eles NÃO representam autorização pública, cessão de propriedade intelectual ou direito externo de uso.

Pessoas e agentes de IA autorizados têm direito a:

- contexto suficiente para executar uma tarefa com segurança;
- documentação clara sobre arquitetura, políticas e padrões;
- critérios de aceite objetivos;
- decisões rastreáveis;
- separação explícita entre empresa, plataforma e produto;
- acesso apenas às informações necessárias ao escopo autorizado;
- sinalizar inconsistências, riscos e ambiguidades.
- bloquear ou escalar mudança quando houver risco de segurança, propriedade intelectual ou governança.

Esses direitos NÃO autorizam divulgação externa, cópia indevida ou uso fora do escopo aprovado pela KDEVY.

## Deveres

Pessoas e agentes de IA autorizados DEVEM:

- respeitar a propriedade intelectual da KDEVY;
- escrever documentação em português do Brasil, salvo nomes próprios, siglas e termos técnicos necessários;
- preservar a separação entre KDEVY, KEP, AutoBody ERP e produtos futuros;
- não copiar código-fonte do AutoBody ERP para a KEP;
- seguir políticas de classificação da informação;
- registrar decisões relevantes;
- validar mudanças antes de concluir trabalho;
- preservar alterações preexistentes no worktree;
- validar antes de commit;
- não reverter trabalho alheio sem autorização explícita;
- explicitar incertezas quando o contexto não for suficiente.

## Governança

A governança da Engineering Constitution DEVE seguir estes critérios:

- mudanças nesta especificação DEVEM ser revisadas como alteração normativa;
- mudanças que afetem princípios constitucionais DEVEM ser registradas em ADR ou KIP;
- mudanças constitucionais DEVEM ter justificativa, diff revisável e atualização do histórico de alterações;
- conflitos com políticas DEVEM ser resolvidos favorecendo a política formal aplicável;
- conflitos normativos DEVEM seguir a precedência mínima definida na relação com a KES-0000;
- conflitos com produtos consumidores DEVEM preservar a separação entre plataforma e produto;
- a autoridade formal de aprovação normativa será definida pela governança da KEP;
- exceções DEVEM ser documentadas com prazo, justificativa e responsável.

RECOMENDA-SE revisar esta especificação ao final de cada onda relevante do roadmap.

## Papel da IA

Agentes de IA PODEM:

- ler e resumir documentos da KEP;
- propor especificações, ADRs, KIPs, templates e revisões;
- identificar inconsistências entre documentos;
- apoiar onboarding;
- sugerir melhorias de automação e documentação.

Agentes de IA NÃO DEVEM:

- assumir autoridade final sobre decisões críticas;
- revelar conteúdo interno sem autorização;
- criar ou copiar segredos;
- misturar código de produto com documentação da KEP;
- executar ações destrutivas ou irreversíveis sem autorização explícita;
- remover contexto de propriedade intelectual ou classificação da informação.

Agentes de IA DEVEM:

- declarar inferências relevantes;
- validar caminhos, referências e diffs antes de concluir trabalho.

Quando houver dúvida, agentes de IA DEVEM preferir ação conservadora, registrar a incerteza e solicitar revisão humana.

## Evolução

Esta especificação DEVE evoluir conforme a maturidade da KEP, da governança da KDEVY e dos produtos consumidores.

Mudanças futuras PODEM incluir:

- critérios mais detalhados de revisão;
- integração com KAF, KGF, KAP e KDF;
- níveis de conformidade para produtos consumidores;
- diretrizes específicas para agentes de IA;
- mecanismos formais de exceção.

Toda evolução DEVE preservar a premissa de que a KEP é plataforma proprietária de engenharia e que produtos consumidores permanecem separados.

## Critérios de Aceite

Esta especificação será considerada aceita quando:

- estiver escrita em português do Brasil;
- usar linguagem normativa;
- declarar objetivo, escopo, aplicabilidade e referências;
- explicar sua relação com KES-0000;
- definir pelo menos 15 princípios constitucionais;
- incluir direitos, deveres, governança, papel da IA e evolução;
- preservar a propriedade intelectual da KDEVY;
- tratar o AutoBody ERP como produto consumidor da KEP;
- não incluir dados pessoais sensíveis, segredos ou código de produto;
- passar em `git diff --check`.

## Histórico de Alterações

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.0 | 2026-07-07 | Criação da primeira versão da Engineering Constitution. |
| 0.1.1 | 2026-07-07 | Ajustes pós-revisão constitucional, com fortalecimento de governança, IA, preservação de trabalho existente e validação antes de commit. |
