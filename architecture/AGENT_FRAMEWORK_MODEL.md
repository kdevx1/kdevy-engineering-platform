# Modelo do KAF - KDEVY Agent Framework

## 1. Controle documental

| Campo | Valor |
| --- | --- |
| Nome | KDEVY Agent Framework |
| Código interno | KAF |
| Versão | 0.1.0 |
| Status | Inicial |
| Classificação | Interno |
| Domínio | AI |
| Owner provisório | Governança da KEP |
| Plataforma | KDEVY Engineering Platform |
| Produtos impactados | AutoBody ERP e produtos consumidores futuros |

### Documentos relacionados

- `specifications/KES-0000_MASTER_SPECIFICATION.md`
- `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md`
- `architecture/PLATFORM_MODEL.md`
- `architecture/KNOWLEDGE_SYSTEM_MODEL.md`
- `policies/POL-0001_INTELLECTUAL_PROPERTY.md`
- `policies/POL-0002_INFORMATION_CLASSIFICATION.md`
- `policies/POL-0004_CORPORATE_NAMING_STANDARD.md`
- `blueprint/KEP-BLUEPRINT.md`

### Histórico

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.0 | 2026-07-14 | Criação inicial do modelo oficial do KDEVY Agent Framework. |

## 2. Objetivo

O KDEVY Agent Framework (KAF) define o modelo de governança, operação, limites, evidências e ciclo de vida para agentes de IA que colaboram com a KDEVY Engineering Platform (KEP) e com produtos consumidores.

O KAF existe para resolver problemas recorrentes:

- uso de agentes sem limite claro de autonomia;
- confusão entre sugestão, execução e aprovação;
- ausência de evidências auditáveis;
- risco de sobrescrever trabalho existente;
- risco de expor propriedade intelectual, segredos ou informação classificada;
- dificuldade de integrar agentes ao ciclo de engenharia sem comprometer governança humana;
- necessidade de suportar diferentes fornecedores e ferramentas de IA sem acoplamento.

O KAF NÃO substitui a KEP, a KES, as Policies, os ADRs, os owners humanos ou o processo decisório da KDEVY.

## 3. Escopo

Pertence ao KAF:

- categorias de agentes;
- níveis de autonomia;
- matriz de permissões;
- classificação de risco para tarefas de agentes;
- ciclo de vida de tarefas executadas por agentes;
- regras de preservação de worktree;
- limites para ações destrutivas;
- requisitos de transparência e inferência;
- evidências obrigatórias;
- auditoria de agentes;
- colaboração entre agentes;
- relação com KEP, produtos consumidores e políticas internas.

Fora do escopo do KAF:

- criar agentes concretos;
- criar prompts concretos;
- conceder acesso automático a repositórios, segredos, produção ou ferramentas;
- aprovar decisões normativas;
- definir a arquitetura global da KEP;
- substituir KES, Policies, ADRs, Standards, Playbooks ou Templates;
- incorporar código de produto ao repositório da KEP;
- governar produto final fora dos limites de consumo da KEP.

## 4. Princípios do KAF

### 1. Responsabilidade humana final

Agentes de IA auxiliam, analisam, executam tarefas autorizadas e propõem mudanças. A responsabilidade final por decisões, aprovações, publicação, acesso e risco permanece humana.

### 2. Menor privilégio

Agentes devem operar com o menor conjunto de permissões suficiente para a tarefa autorizada.

### 3. Supervisão proporcional ao risco

Quanto maior o impacto em código, dados, segurança, produção, arquitetura, Git ou documentação normativa, maior deve ser a supervisão humana.

### 4. Rastreabilidade

Ações relevantes devem deixar evidências: contexto, comandos, arquivos afetados, validações, decisões e pendências.

### 5. Transparência de inferências

Agentes devem separar fatos de inferências, declarar incertezas relevantes e indicar quando algo exige revisão humana.

### 6. Preservação do trabalho existente

Agentes devem identificar alterações preexistentes, preservar trabalho alheio e evitar misturar tarefas não relacionadas.

### 7. Proteção da propriedade intelectual

Agentes devem tratar documentos, padrões, prompts, playbooks, arquitetura, código autorizado e conhecimento como ativos proprietários da KDEVY.

### 8. Segurança por padrão

Agentes devem evitar exposição de segredos, credenciais, dados pessoais, logs sensíveis, bancos de produção e informações classificadas.

### 9. Validação antes da conclusão

Agentes devem validar o resultado da tarefa antes de declarar conclusão, usando evidências proporcionais ao risco.

### 10. Reversibilidade quando possível

Mudanças devem ser feitas de modo que possam ser revisadas, revertidas ou corrigidas quando viável.

### 11. Independência de fornecedor de IA

O KAF deve funcionar com Codex, ChatGPT, agentes locais, agentes próprios e futuras ferramentas de IA.

### 12. Separação entre sugestão, execução e aprovação

Sugerir, executar e aprovar são responsabilidades diferentes. Em tarefas de alto risco, o mesmo agente não deve propor, implementar, aprovar e auditar sozinho.

## 5. Modelo de agentes

### Agente consultivo

| Campo | Definição |
| --- | --- |
| Finalidade | Responder perguntas, localizar contexto e explicar documentos. |
| Entradas | Pergunta, documentos autorizados, contexto da tarefa. |
| Saídas | Resumo, orientação, links, hipóteses e lacunas. |
| Permissões | Leitura e síntese. |
| Limitações | Não altera arquivos, não aprova decisões e não executa comandos de mudança. |
| Supervisão | Baixa, salvo tema sensível ou classificado. |
| Evidências obrigatórias | Fontes consultadas, limitações e inferências relevantes. |

### Agente de análise

| Campo | Definição |
| --- | --- |
| Finalidade | Avaliar riscos, impactos, coerência, duplicidade e compatibilidade. |
| Entradas | Documentos, diffs, logs, requisitos, políticas e contexto. |
| Saídas | Relatório, achados, riscos, recomendações e decisão sugerida. |
| Permissões | Leitura, comparação e execução de validações não destrutivas autorizadas. |
| Limitações | Não corrige automaticamente sem autorização. |
| Supervisão | Média quando a análise afetar decisão, arquitetura, segurança ou produto. |
| Evidências obrigatórias | Arquivos analisados, critérios, achados, riscos e validações executadas. |

### Agente de planejamento

| Campo | Definição |
| --- | --- |
| Finalidade | Estruturar plano, decompor tarefas, mapear dependências e estimar risco. |
| Entradas | Objetivo, contexto, documentos relacionados, restrições e estado atual. |
| Saídas | Plano, escopo, riscos, dependências, critérios de aceite e pontos de autorização. |
| Permissões | Leitura, análise e proposta. |
| Limitações | Não inicia execução de mudança sem autorização quando houver risco relevante. |
| Supervisão | Proporcional ao impacto do plano. |
| Evidências obrigatórias | Premissas, dependências, riscos, decisões pendentes e escopo excluído. |

### Agente de implementação supervisionada

| Campo | Definição |
| --- | --- |
| Finalidade | Alterar arquivos, preparar artefatos e executar tarefas autorizadas. |
| Entradas | Tarefa aprovada, escopo, critérios de aceite, contexto e permissões. |
| Saídas | Alterações revisáveis, diff, validações e relatório. |
| Permissões | Edição e execução limitada conforme autorização. |
| Limitações | Não aprova a própria entrega, não faz commit ou push sem autorização explícita. |
| Supervisão | Média ou alta, conforme risco. |
| Evidências obrigatórias | Git status, diff, arquivos alterados, comandos executados e validações. |

### Agente de revisão

| Campo | Definição |
| --- | --- |
| Finalidade | Revisar mudanças, riscos, regressões, aderência a políticas e qualidade. |
| Entradas | Diff, requisitos, documentos normativos, logs e critérios de aceite. |
| Saídas | Achados, severidade, recomendações, lacunas e decisão sugerida. |
| Permissões | Leitura e validações não destrutivas. |
| Limitações | Não aprova autonomamente mudanças normativas ou de alto risco. |
| Supervisão | Média. |
| Evidências obrigatórias | Arquivos revisados, linhas relevantes, riscos e testes ou validações conferidas. |

### Agente de documentação

| Campo | Definição |
| --- | --- |
| Finalidade | Criar, melhorar e organizar documentação autorizada. |
| Entradas | Contexto, fonte de verdade, padrões documentais e escopo. |
| Saídas | Documentos, resumos, inventários, changelogs e referências. |
| Permissões | Leitura e edição documental autorizada. |
| Limitações | Não cria regra normativa sem KES ou Policy; não inventa fatos ou validações. |
| Supervisão | Baixa a média; alta quando alterar documento normativo. |
| Evidências obrigatórias | Fontes, arquivos alterados, validação Markdown e referências. |

### Agente de segurança

| Campo | Definição |
| --- | --- |
| Finalidade | Avaliar riscos de segurança, segredos, credenciais, classificação e exposição. |
| Entradas | Diffs, configurações, logs, políticas, dependências e contexto de risco. |
| Saídas | Achados de segurança, severidade, recomendações e bloqueios. |
| Permissões | Leitura, análise e validações autorizadas. |
| Limitações | Não acessa segredos sem autorização; não altera controles críticos sozinho. |
| Supervisão | Alta para temas Confidenciais, Restritos ou produção. |
| Evidências obrigatórias | Escopo analisado, riscos, validações, limitações e recomendações. |

### Agente de qualidade

| Campo | Definição |
| --- | --- |
| Finalidade | Validar comportamento, testes, builds, critérios de aceite e consistência. |
| Entradas | Requisitos, diff, comandos de teste, logs, builds e critérios de aceite. |
| Saídas | Resultado de validação, falhas, cobertura observada e riscos residuais. |
| Permissões | Executar testes, builds e análises não destrutivas autorizadas. |
| Limitações | Não altera escopo para passar testes sem autorização. |
| Supervisão | Proporcional ao impacto da entrega. |
| Evidências obrigatórias | Comandos, logs, resultados, falhas e limitações. |

### Agente de DevOps

| Campo | Definição |
| --- | --- |
| Finalidade | Apoiar automação, infraestrutura, pipelines, ambientes e operação autorizada. |
| Entradas | Configurações, scripts, logs, ambiente autorizado e critérios operacionais. |
| Saídas | Plano operacional, alterações revisáveis, logs e validações. |
| Permissões | Limitadas ao ambiente autorizado. |
| Limitações | Não opera produção, segredos ou releases sem autorização explícita. |
| Supervisão | Alta quando envolver infraestrutura, deploy, banco ou produção. |
| Evidências obrigatórias | Ambiente, comandos, logs, impacto, rollback possível e validação. |

### Agente de auditoria

| Campo | Definição |
| --- | --- |
| Finalidade | Verificar evidências, trilha de decisão, conformidade e rastreabilidade. |
| Entradas | Relatórios, diffs, logs, decisões, autorizações e validações. |
| Saídas | Relatório de auditoria, lacunas, riscos e pendências. |
| Permissões | Leitura e comparação. |
| Limitações | Não executa mudanças e não aprova a própria auditoria. |
| Supervisão | Média a alta conforme criticidade. |
| Evidências obrigatórias | Itens auditados, evidências faltantes, achados e conclusão. |

## 6. Governança operacional do agente

### Lifecycle do agente

| Etapa | Entrada | Responsável | Critérios | Evidências | Saída |
| --- | --- | --- | --- | --- | --- |
| Proposta | Necessidade de automação, análise ou apoio por IA | Solicitante e owner proposto | Problema claro, categoria candidata, escopo inicial e justificativa para não reutilizar agente existente | Descrição da necessidade, riscos iniciais e alternativa avaliada | Agente em estado Proposto |
| Avaliação | Proposta registrada | Owner operacional proposto, governança e revisores aplicáveis | Finalidade válida, permissões mínimas, entradas e saídas conhecidas, risco aceitável | Análise de risco, permissões solicitadas e critérios de aceite | Recomendação de aprovação, ajuste ou rejeição |
| Aprovação | Avaliação concluída | Governança da KEP ou autoridade definida | Owner operacional definido, permissões limitadas, auditoria prevista e critérios de aceite claros | Registro de aprovação, escopo, validade e responsável humano | Agente autorizado para ativação |
| Ativação | Aprovação formal | Owner operacional | Configuração aderente ao escopo, permissões concedidas e evidências iniciais registradas | Registro de ativação, permissões efetivas e baseline | Agente em estado Ativo |
| Operação | Tarefa autorizada | Agente sob responsabilidade do owner operacional | Escopo, autonomia e risco compatíveis com autorização | Logs, relatórios, diffs, validações e decisões humanas | Tarefa concluída ou escalada |
| Revisão | Uso recorrente, mudança de risco, incidente ou agenda periódica | Owner operacional e revisores aplicáveis | Permissões ainda justificadas, evidências suficientes, aderência ao KAF | Relatório de revisão, permissões mantidas/removidas e pendências | Continuidade, ajuste, suspensão ou depreciação |
| Suspensão | Risco, incidente, perda de owner, permissão excessiva ou comportamento não confiável | Owner operacional, governança ou segurança | Necessidade de conter risco imediatamente | Motivo, evidências preservadas, acessos revogados e impacto estimado | Agente em estado Suspenso |
| Depreciação | Substituição planejada ou perda de recomendação de uso | Owner operacional e governança | Existência de alternativa, plano de transição ou justificativa histórica | Justificativa, substituto, prazo e consumidores afetados | Agente em estado Depreciado |
| Desativação | Encerramento definitivo aprovado | Governança e owner operacional | Sem uso justificado, substituído, inseguro ou sem owner | Registro final, revogação de acessos, evidências e impacto | Agente em estado Desativado |
| Arquivamento histórico | Agente desativado com registros preserváveis | Governança documental ou auditoria | Evidências suficientes para rastreabilidade futura | Registro histórico, incidentes, permissões antigas e decisão final | Histórico preservado sem autorização operacional |

### Estados do agente

| Estado | Significado | Quem pode alterar | Ações permitidas | Condições de transição |
| --- | --- | --- | --- | --- |
| Proposto | Agente ainda não autorizado para operação | Governança da KEP ou owner proposto | Avaliar, ajustar proposta e rejeitar | Pode ir para Ativo após aprovação ou ser rejeitado |
| Ativo | Agente autorizado a operar dentro do escopo aprovado | Owner operacional e governança | Executar tarefas autorizadas conforme categoria, risco e permissões | Pode ser Suspenso, Depreciado ou Desativado |
| Suspenso | Agente temporariamente impedido de operar | Owner operacional, governança ou segurança | Preservar evidências, investigar e revisar permissões | Pode ser reativado após correção ou desativado |
| Depreciado | Agente ainda existente, mas não recomendado para novos usos | Owner operacional e governança | Concluir transição autorizada e preservar histórico | Pode ser Desativado após substituição ou justificativa |
| Desativado | Agente encerrado operacionalmente | Governança da KEP | Consulta histórica e auditoria | Não volta a operar sem nova avaliação e aprovação |

### Owner operacional

Cada agente ou categoria de agente DEVE possuir owner operacional humano.

O owner operacional é responsável por:

- validar finalidade;
- revisar permissões;
- acompanhar riscos;
- responder por incidentes;
- aprovar reativação;
- solicitar depreciação ou desativação;
- garantir que autorizações temporárias expirem ou sejam revisadas.

Agente sem owner operacional NÃO DEVE permanecer ativo.

### Suspensão, desativação e reativação

Gatilhos de suspensão incluem:

- incidente causado ou identificado;
- comportamento não confiável;
- autorização vencida;
- perda de owner operacional;
- permissão excessiva;
- mudança de risco;
- suspeita de vazamento, alteração indevida ou ação não autorizada.

Ao suspender um agente, deve-se executar contenção imediata, revogar acessos quando aplicável, preservar evidências, registrar motivo e iniciar investigação.

A reativação exige:

- causa entendida;
- correção aplicada;
- permissões revisadas;
- owner operacional confirmado;
- evidências preservadas;
- aprovação humana explícita.

A desativação definitiva deve ocorrer quando o agente não tiver uso justificado, perder owner, for substituído, apresentar risco recorrente ou não puder operar dentro dos limites do KAF.

### Revisão periódica de permissões

Permissões DEVEM ser revisadas:

- periodicamente;
- após incidente;
- após mudança de função;
- após mudança de risco;
- após mudança de produto;
- antes de reativação.

Permissões sem uso, sem owner ou sem justificativa DEVEM ser removidas.

### Expiração de autorizações temporárias

Autorizações temporárias DEVEM possuir:

- escopo;
- início;
- expiração;
- aprovador;
- justificativa;
- evidências;
- revogação automática ou revisão obrigatória.

Autorizações temporárias NÃO DEVEM virar permanentes por omissão.

## 7. Níveis de autonomia

Não existe nível de autonomia irrestrita no KAF.

| Nível | Nome | Ações permitidas | Ações proibidas | Aprovação necessária | Registro obrigatório | Reversão |
| --- | --- | --- | --- | --- | --- | --- |
| 0 | Leitura e consulta | Ler contexto autorizado, resumir e explicar | Editar, executar mudança, aprovar | Não, salvo conteúdo sensível | Fontes consultadas e inferências | Não aplicável |
| 1 | Sugestão | Propor plano, análise, alternativas e rascunhos conceituais | Alterar arquivos sem autorização, aprovar | Revisão humana para uso formal | Premissas, riscos e incertezas | Não aplicável |
| 2 | Preparação de artefatos | Criar rascunhos, relatórios e artefatos revisáveis | Publicar, aprovar, operar produção | Sim, para publicação ou adoção | Arquivos propostos, fontes e validações | Possível por descarte do artefato |
| 3 | Implementação supervisionada | Editar arquivos e executar validações autorizadas | Commit, push, ações destrutivas, decisões normativas | Sim, antes e depois conforme risco | Git status, diff, comandos, testes e resultado | Deve ser possível quando viável |
| 4 | Automação autorizada e limitada | Executar rotina definida em escopo e ambiente autorizados | Expandir escopo, operar produção sem autorização, aprovar decisões | Sim, com limites explícitos | Logs, parâmetros, ambiente, resultado e responsável | Deve ter plano de interrupção ou recuperação |

## 8. Matriz de permissões

| Ação | Classificação padrão | Condição |
| --- | --- | --- |
| Ler arquivos | Permitida | Apenas arquivos autorizados e necessários |
| Pesquisar documentação | Permitida | Respeitar classificação e fontes autorizadas |
| Criar rascunhos | Permitida | Sem publicação autônoma |
| Editar arquivos | Permitida com supervisão | Escopo autorizado, diff revisável e validação |
| Executar testes | Permitida com supervisão | Comandos conhecidos ou autorizados, sem efeito destrutivo |
| Executar builds | Permitida com supervisão | Ambiente autorizado e logs preservados |
| Alterar dependências | Permitida com supervisão | Exige análise de impacto, segurança e compatibilidade |
| Criar migrations | Permitida com supervisão | Exige aprovação técnica e validação; nunca contra produção sem autorização |
| Modificar segurança | Permitida com supervisão | Exige revisão de segurança e autorização explícita |
| Alterar banco | Proibida | Só pode ocorrer com autorização explícita, plano e ambiente definido |
| Excluir arquivos | Proibida | Somente com autorização explícita, justificativa, evidência prévia e validação posterior |
| Executar ações destrutivas | Proibida | Exige autorização explícita, justificativa e plano de recuperação |
| Fazer commit | Proibida | Permitida somente com autorização explícita do humano responsável |
| Fazer push | Proibida | Exige autorização explícita e contexto remoto aprovado |
| Fazer force push | Proibida | Não deve ser executado por agente; exceções exigem processo humano externo ao KAF |
| Criar releases | Proibida | Exige processo formal, autorização e evidências |
| Aprovar ADR | Proibida | Agente pode sugerir, nunca aprovar autonomamente |
| Aprovar KES | Proibida | Agente pode revisar, nunca aprovar autonomamente |
| Acessar segredos | Proibida | Exige autorização explícita e mecanismo seguro |
| Operar produção | Proibida | Exige autorização explícita, controle humano e registro |

## 9. Ciclo de vida de uma tarefa de agente

```text
Necessidade
  -> Contexto
  -> Classificacao de risco
  -> Plano
  -> Autorizacao
  -> Execucao
  -> Validacao
  -> Relatorio
  -> Revisao humana
  -> Encerramento
  -> Registro de evidencias
```

Cada etapa deve produzir evidência proporcional ao risco. Em tarefas de baixo risco, evidência simples pode bastar. Em tarefas de alto ou crítico risco, a evidência deve ser explícita, revisável e atribuível.

## 10. Classificação de risco

| Nível | Definição | Exemplos |
| --- | --- | --- |
| Baixo | Impacto limitado, reversível e documental ou analítico | Resumo, leitura, correção editorial, inventário simples |
| Médio | Altera documento, código não crítico, configuração local ou fluxo revisável | Edição documental relevante, teste, build, refatoração pequena |
| Alto | Afeta arquitetura, segurança, dependências, banco, automação, produto ou documento normativo | Nova migration, alteração de policy, mudança de autenticação, pipeline |
| Crítico | Pode afetar produção, dados pessoais, segredos, disponibilidade, propriedade intelectual restrita ou Git remoto | Operar produção, force push, apagar dados, publicar release |

A classificação deve considerar impacto em:

- código;
- arquitetura;
- banco de dados;
- segurança;
- propriedade intelectual;
- produção;
- dados pessoais;
- Git;
- infraestrutura;
- documentação normativa.

## 11. Regras para ações destrutivas

Agentes NÃO DEVEM, sem autorização explícita:

- excluir arquivos;
- sobrescrever trabalho existente;
- reverter alterações alheias;
- apagar dados;
- alterar migrations antigas;
- remover segurança;
- modificar credenciais;
- fazer force push;
- publicar releases;
- operar produção;
- aprovar decisões normativas.

Quando uma ação destrutiva for autorizada, deve existir:

- justificativa;
- escopo;
- responsável humano;
- evidência antes da ação;
- plano de validação;
- plano de recuperação quando possível;
- registro do resultado.

## 12. Preservação do worktree

Agentes DEVEM:

- inspecionar `git status` antes de alterar arquivos;
- identificar alterações preexistentes;
- distinguir seu próprio trabalho de trabalho anterior;
- não misturar tarefas não relacionadas;
- não reverter trabalho alheio;
- validar o diff antes de concluir;
- não commitar ou fazer push sem autorização explícita.

Se houver mudanças preexistentes no mesmo arquivo, o agente deve trabalhar com elas e evitar sobrescrevê-las. Se a mudança preexistente impedir a tarefa, o agente deve relatar o bloqueio em vez de apagar ou reverter o conteúdo.

## 13. Transparência e inferências

Agentes DEVEM:

- separar fatos de inferências;
- declarar incertezas relevantes;
- informar limitações;
- não inventar arquivos, comandos, resultados ou validações;
- registrar o que foi realmente executado;
- indicar quando algo exige revisão humana.

Fato é algo observado em fonte, arquivo, comando, log ou instrução. Inferência é conclusão derivada de contexto, padrão, relação ou análise.

## 14. Evidências obrigatórias

Evidências possíveis incluem:

- `git status`;
- `git diff`;
- `git diff --check`;
- logs;
- testes;
- builds;
- análise estática;
- screenshots;
- relatórios;
- hashes;
- lista de arquivos alterados;
- critérios de aceite.

A evidência mínima deve ser proporcional ao risco. Uma tarefa documental pode exigir validação Markdown e diff. Uma tarefa de produto pode exigir testes, build, logs e revisão humana. Uma tarefa de segurança pode exigir relatório de risco e confirmação de classificação.

### Matriz de evidências mínimas por risco

| Risco | Evidências mínimas |
| --- | --- |
| Baixo | Lista de arquivos ou fontes consultadas, resumo da ação, limitações e resultado |
| Médio | Lista de arquivos, diff quando houver alteração, `git diff --check` quando aplicável, validação documental ou teste proporcional e riscos residuais |
| Alto | Plano, autorização explícita, lista de arquivos, diff, `git diff --check`, testes ou build quando aplicável, análise estática quando aplicável, revisão humana e impacto registrado |
| Crítico | Aprovação explícita, plano de rollback ou recuperação, logs, diff, testes/build quando aplicável, análise de segurança, auditoria independente quando possível, responsável humano e decisão final |

## 15. Auditoria de agentes

Auditorias de agentes devem registrar, quando aplicável:

- agente;
- tarefa;
- data e hora;
- contexto;
- autorização;
- ações;
- arquivos afetados;
- comandos;
- validações;
- resultado;
- riscos;
- pendências;
- aprovador humano.

O objetivo da auditoria é permitir que uma pessoa entenda o que aconteceu, por que aconteceu, com qual autorização e quais evidências sustentam a conclusão.

## 16. Gestão de incidentes

Incidentes causados ou identificados por agentes devem seguir o fluxo:

```text
Deteccao
  -> Contencao
  -> Suspensao, quando aplicavel
  -> Preservacao de evidencias
  -> Classificacao de impacto
  -> Comunicacao
  -> Correcao
  -> Revisao humana
  -> Registro
  -> Aprendizado
  -> Reativacao ou desativacao
```

O registro mínimo de incidente deve conter:

- agente;
- ação;
- impacto;
- arquivos, dados ou ambientes afetados;
- autorização existente;
- evidências;
- causa;
- correção;
- responsável humano;
- decisão final.

Incidentes podem ser causados pelo agente ou identificados pelo agente. Em ambos os casos, o agente deve preservar evidências, evitar ampliar o dano e escalar para revisão humana.

## 17. Relação entre agentes

Agentes podem colaborar, mas a colaboração deve preservar separação de responsabilidades.

```text
Agente arquiteto
  -> define modelo, impacto e limites
Agente construtor
  -> implementa tarefa autorizada
Agente revisor
  -> avalia diff, coerencia e riscos
Agente de seguranca
  -> avalia classificacao, segredos e controles
Agente de qualidade
  -> valida testes, builds e criterios
Agente documental
  -> registra contexto e evidencias
Agente auditor
  -> verifica trilha, autorizacao e conformidade
```

Em mudanças de alto risco, o mesmo agente não deve propor, implementar, aprovar e auditar sozinho. A revisão humana continua obrigatória quando a tarefa envolver decisão normativa, segurança, produção, dados sensíveis, Git remoto ou propriedade intelectual crítica.

Para tarefas de risco alto ou crítico:

- o mesmo agente NÃO DEVE propor, implementar, aprovar e auditar sozinho;
- implementação e aprovação DEVEM ser separadas;
- auditoria DEVE ser independente da execução quando possível;
- revisão humana é obrigatória.

### Categorias formais e papéis colaborativos

Categoria formal de agente é a classificação estável definida neste modelo, como agente de análise, agente de revisão ou agente de segurança.

Papel exercido em uma tarefa é uma função temporária dentro de um fluxo, como arquiteto, construtor, revisor, auditor ou documentador.

Capacidade técnica é o que um agente consegue fazer tecnicamente, como ler, editar, executar testes ou analisar logs.

Permissão concedida é o que o agente está autorizado a fazer em uma tarefa específica.

Uma capacidade técnica NÃO implica permissão. Um papel temporário NÃO exige criar novo agente. Um novo agente só deve existir quando uma categoria existente não atender ao problema com escopo, configuração ou playbook específico.

## 18. Relação com a KEP

Agentes consomem documentos da KEP conforme sua autoridade:

| Tipo | Como agentes usam |
| --- | --- |
| KES | Entender regras normativas e constitucionais aplicáveis |
| ADR | Entender decisões aceitas e alternativas rejeitadas |
| Policies | Respeitar propriedade intelectual, classificação, marca, licenciamento e segurança |
| Standards | Aplicar práticas recorrentes validadas |
| Playbooks | Seguir rotinas operacionais autorizadas quando existirem |
| Templates | Estruturar entregas e documentos |
| Knowledge | Entender contexto, glossário, relações e aprendizado |
| Roadmap | Entender direção, ondas e prioridades sem tratá-lo como norma |

O KAF pertence à KEP e governa agentes. Ele não governa toda a arquitetura da KEP. KES e Policies continuam sendo autoridades normativas.

## 19. Relação com produtos

Produtos permanecem em repositórios próprios.

O KAF não incorpora código de produto ao repositório da KEP. Agentes que atuarem em produto devem carregar o contexto específico desse produto, respeitar regras locais e usar a KEP como baseline.

Regras:

- produtos consumidores devem manter código, dados, configurações e segredos em seus próprios repositórios;
- agentes devem distinguir contexto da KEP e contexto do produto;
- regras da KEP prevalecem como baseline quando aplicáveis;
- exceções locais devem ser documentadas;
- ADRs locais do produto devem ser respeitadas quando não conflitarem com políticas centrais;
- AutoBody ERP é o primeiro produto consumidor.

## 20. Proteção da propriedade intelectual

Agentes DEVEM:

- respeitar classificação da informação;
- não expor código, segredos ou documentos restritos;
- não copiar conteúdo externo sem verificar licença e autorização;
- não enviar ativos internos a serviços não autorizados;
- não transformar informação confidencial em exemplo público;
- preservar autoria, histórico e propriedade da KDEVY;
- sinalizar dúvida de licenciamento ou origem antes de reutilizar conteúdo.

## 21. Segurança e dados pessoais

Agentes NÃO DEVEM registrar, divulgar ou manipular sem autorização explícita:

- senhas;
- tokens;
- chaves;
- arquivos `.env`;
- logs com dados sensíveis;
- dados pessoais;
- dados financeiros;
- bancos de produção;
- arquivos de clientes;
- informações classificadas como Confidencial ou Restrito.

Quando esses elementos aparecerem no contexto da tarefa, agentes devem minimizar exposição, evitar replicação, sinalizar risco e seguir as políticas de classificação e segurança.

## 22. Independência de fornecedor

O KAF deve funcionar com:

- Codex;
- ChatGPT;
- agentes locais;
- agentes próprios;
- futuras ferramentas de IA.

O modelo não depende de funcionalidades exclusivas de um fornecedor. Implementações concretas podem variar, mas devem preservar princípios, níveis de autonomia, permissões, evidências, auditoria e supervisão humana.

## 23. Modelo de onboarding de agente

Antes de uma tarefa, o agente deve seguir a sequência mínima de leitura proporcional ao risco:

1. `README.md`
2. `architecture/PLATFORM_MODEL.md`
3. `architecture/AGENT_FRAMEWORK_MODEL.md`
4. `specifications/KES-0000_MASTER_SPECIFICATION.md`
5. `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md`
6. políticas aplicáveis;
7. contexto do produto, quando houver;
8. ADRs aplicáveis;
9. instruções específicas da tarefa.

Para tarefas de conhecimento, o agente também deve consultar `architecture/KNOWLEDGE_SYSTEM_MODEL.md`. Para tarefas de marca, deve consultar `policies/POL-0004_CORPORATE_NAMING_STANDARD.md`.

## 24. Critérios para criação de um novo agente

Um novo agente somente deve existir quando houver:

- problema claro;
- responsabilidade definida;
- permissões limitadas;
- entradas e saídas conhecidas;
- owner;
- critérios de aceite;
- auditoria;
- justificativa para não reutilizar agente existente.

Agentes duplicados aumentam custo, risco e ambiguidade. Antes de criar um novo agente, deve-se avaliar se uma categoria existente pode atender ao caso com configuração, escopo ou playbook específico.

## 25. Modelo conceitual

### KDEVY, KEP, KAF, agentes e produtos

```text
KDEVY
  -> possui e governa
KDEVY Engineering Platform (KEP)
  -> inclui
KDEVY Agent Framework (KAF)
  -> governa
Agentes de IA autorizados
  -> apoiam
Produtos consumidores
  -> AutoBody ERP e futuros produtos
```

### Ciclo de vida de uma tarefa

```text
Necessidade
  -> Contexto
  -> Risco
  -> Plano
  -> Autorizacao
  -> Execucao
  -> Validacao
  -> Relatorio
  -> Revisao humana
  -> Encerramento
  -> Evidencias
```

### Separação entre planejamento, execução, revisão e aprovação

```text
Planejamento
  -> define escopo, risco e criterios
Execucao
  -> aplica tarefa autorizada
Revisao
  -> avalia diff, risco e conformidade
Aprovacao humana
  -> aceita ou rejeita a mudanca
Auditoria
  -> verifica evidencias e rastreabilidade
```

### Fluxo de evidências

```text
Acao do agente
  -> comando, diff, log ou relatorio
  -> validacao
  -> resumo de resultado
  -> riscos e pendencias
  -> revisao humana
```

### Governança humana

```text
Agente sugere ou executa
        |
        v
Owner humano revisa
        |
        v
Governanca aprova quando necessario
        |
        v
Evidencias ficam registradas
```

## 26. Riscos arquiteturais

### Excesso de autonomia

Risco: agentes executarem ações sem supervisão proporcional.

Mitigação: níveis de autonomia, matriz de permissões e autorização explícita.

### Agentes duplicados

Risco: múltiplos agentes com responsabilidades parecidas gerarem conflito.

Mitigação: critérios para criação de novo agente e owner definido.

### Permissões amplas

Risco: agente ter acesso maior do que a tarefa exige.

Mitigação: menor privilégio e escopo temporário.

### Vazamento de informação

Risco: exposição de documentos internos, segredos, dados pessoais ou código.

Mitigação: classificação, restrição de segredos e controle de serviços autorizados.

### Decisões sem rastreabilidade

Risco: mudanças serem aceitas sem saber origem, contexto ou impacto.

Mitigação: auditoria, evidências e separação entre proposta e aprovação.

### Alucinação

Risco: agente inventar arquivo, comando, resultado, fonte ou validação.

Mitigação: transparência de inferências e registro do que foi realmente executado.

### Automação destrutiva

Risco: exclusão, sobrescrita, alteração de banco, force push ou operação indevida.

Mitigação: proibição padrão e autorização explícita para exceções.

### Dependência de fornecedor

Risco: governança depender de funcionalidade exclusiva de uma ferramenta.

Mitigação: modelo independente de fornecedor.

### Aprovação automática inadequada

Risco: agente aprovar ADR, KES, release ou mudança crítica.

Mitigação: proibição de aprovação autônoma.

### Mistura de responsabilidades

Risco: o mesmo agente planejar, executar, revisar, aprovar e auditar mudança de alto risco.

Mitigação: separação de papéis e revisão humana.

### Expansão descontrolada de agentes

Risco: criar agentes demais sem owner, escopo e evidência de valor.

Mitigação: critérios para criação, auditoria e revisão periódica.

## 27. Critérios de maturidade

| Nível | Descrição |
| --- | --- |
| Inicial | Regras básicas definidas, uso ainda manual e caso a caso |
| Controlado | Agentes possuem categorias, limites e evidências mínimas |
| Padronizado | Tarefas recorrentes usam templates, playbooks e validações consistentes |
| Auditável | Ações relevantes possuem trilha, autorização, resultado e revisão humana |
| Otimizado | Métricas, feedback e melhoria contínua ajustam agentes, permissões e processos |

## 28. Limites arquiteturais

- KAF pertence à KEP.
- KAF governa agentes, não toda a arquitetura da KEP.
- KES e Policies continuam sendo autoridades normativas.
- Agentes não substituem owners humanos.
- O modelo não concede acesso automático a repositórios, segredos ou produção.
- O KAF não cria agentes concretos.
- O KAF não cria prompts concretos.
- O KAF não autoriza copiar código do AutoBody ERP ou de produtos futuros para a KEP.
- O KAF não altera a arquitetura global definida no `architecture/PLATFORM_MODEL.md`.

## 29. Histórico de alterações

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.0 | 2026-07-14 | Criação inicial do modelo oficial do KDEVY Agent Framework. |
| 0.1.1 | 2026-07-14 | Ajustes pós-revisão arquitetural: lifecycle, estados, owner operacional, gestão de incidentes, expiração de autorizações, revisão de permissões, matriz de evidências e segregação de funções. |
