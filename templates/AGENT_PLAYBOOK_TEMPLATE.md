# Template Oficial de Playbook de Agente da KDEVY

Use este template para modelar Playbooks de Agentes da KDEVY Engineering Platform (KEP).

Um Playbook representa um fluxo operacional reutilizável. Ele NÃO representa um agente, NÃO implementa agente, NÃO contém prompt executável, NÃO concede permissões e NÃO aprova ações.

Um agente autorizado PODE executar um Playbook quando houver escopo, permissões, contexto, supervisão e critérios de aceite compatíveis com o KDEVY Agent Framework (KAF).

## 1. Controle documental

| Campo | Valor |
| --- | --- |
| Documento | Preencher com o nome do Playbook. |
| ID do Playbook | Usar `PBK-<DOMINIO>-<NUMERO>`. |
| Nome | Preencher com o nome oficial. |
| Versão | Preencher com a versão do documento. |
| Status | Draft, Review, Approved, Active, Deprecated ou Archived. |
| Categoria | Preencher com a categoria operacional. |
| Classificação | Público, Interno, Confidencial ou Restrito. |
| Owner | Responsável humano pelo Playbook. Não inventar owner. |
| Aprovador | Responsável por aprovar uso, exceções e alterações relevantes. |
| Última revisão | AAAA-MM-DD. |
| Próxima revisão | AAAA-MM-DD ou justificativa. |
| Histórico | Resumo curto ou referência ao histórico deste documento. |

### Lifecycle do documento do Playbook

Este lifecycle pertence ao documento do Playbook, não às execuções individuais.

```text
Draft
  ↓
Review
  ↓
Approved
  ↓
Active
  ↓
Deprecated
  ↓
Archived
```

| Estado | Significado | Ações permitidas |
| --- | --- | --- |
| Draft | Documento em elaboração inicial. | Escrever, revisar localmente e ajustar. |
| Review | Documento em revisão governada. | Avaliar, solicitar ajustes e aprovar ou rejeitar. |
| Approved | Documento aprovado, ainda não necessariamente ativo para uso amplo. | Preparar adoção controlada. |
| Active | Documento autorizado para uso operacional. | Executar por agentes autorizados conforme KAF. |
| Deprecated | Documento não recomendado para novas execuções. | Preservar histórico e orientar substituição. |
| Archived | Documento arquivado para consulta histórica. | Consultar histórico; não executar como fluxo ativo. |

IDs históricos de Playbooks NÃO DEVEM ser reutilizados. Documentos arquivados permanecem rastreáveis.

## 2. Identificação

- ID: `PBK-<DOMINIO>-<NUMERO>`
- Nome:
- Categoria:
- Status:
- Agentes compatíveis:
- Produtos compatíveis:
- Escopo:
- Fora do escopo:

Um mesmo Playbook PODE ser utilizado por diferentes agentes, desde que cada agente tenha autorização, permissões, contexto e nível de autonomia compatíveis com o KAF.

O Playbook NÃO deve ser duplicado apenas porque será executado por agente diferente, ferramenta diferente ou produto consumidor diferente.

### Documento, execução e evidências

Documento do Playbook:

- é um modelo reutilizável;
- permanece estável até revisão formal;
- é versionado;
- não representa uma execução.

Instância de execução:

- representa uma execução específica do Playbook;
- possui contexto próprio;
- possui agente executor, responsável humano, produto, repositório, ambiente e risco próprios;
- pode gerar evidências diferentes a cada uso;
- pode terminar com sucesso, interrupção ou incidente.

Evidências da execução:

- pertencem à execução;
- nunca pertencem ao documento-base do Playbook;
- DEVEM ser registradas em local rastreável;
- DEVEM preservar contexto, validações, limitações, decisões e riscos daquela execução.

Um mesmo Playbook PODE possuir inúmeras execuções distintas. Cada execução DEVE possuir identificador próprio e rastreável.

### Identificação da execução

Use esta tabela para registrar uma instância específica de execução do Playbook.

| Campo | Valor |
| --- | --- |
| ID único da execução | Usar identificador único. Não reutilizar. |
| Playbook utilizado | ID e versão do Playbook. |
| Agente executor | Agente autorizado que executou ou apoiou a execução. |
| Responsável humano | Pessoa responsável pela execução, supervisão ou aceite. |
| Produto | Produto afetado, quando aplicável. |
| Repositório | Repositório afetado, quando aplicável. |
| Ambiente | Local, desenvolvimento, homologação, produção ou outro autorizado. |
| Data/hora de início | AAAA-MM-DD HH:MM TZ. |
| Data/hora de término | AAAA-MM-DD HH:MM TZ ou justificativa. |
| Status da execução | Concluída, Interrompida, Bloqueada, Com pendências ou Incidente. |
| Local das evidências | Caminho, relatório, ticket, registro ou referência autorizada. |
| Classificação de risco | Baixo, Médio, Alto ou Crítico. |

IDs de execução NÃO DEVEM ser reutilizados.

## 3. Objetivo

Descreva:

- qual missão operacional o Playbook descreve;
- qual resultado deve produzir;
- quando deve ser utilizado;
- quais sinais indicam que este Playbook é o fluxo correto;
- quais documentos ou políticas governam o uso.

Missão operacional:

> Preencher.

Resultado esperado:

> Preencher.

Quando utilizar:

> Preencher.

Quando NÃO utilizar:

> Preencher.

## 4. Pré-condições

Antes de iniciar, o agente ou responsável humano DEVE verificar:

| Pré-condição | Obrigatória | Evidência | Observações |
| --- | --- | --- | --- |
| Contexto mínimo disponível | Sim | Preencher | Preencher |
| Documentos necessários identificados | Sim | Preencher | Preencher |
| Permissões necessárias conhecidas | Sim | Preencher | Preencher |
| Autorizações necessárias obtidas | Quando aplicável | Preencher | Preencher |
| Dependências mapeadas | Sim | Preencher | Preencher |
| Classificação da informação definida | Sim | Preencher | Preencher |
| Risco preliminar classificado | Sim | Preencher | Preencher |
| Produto consumidor identificado | Quando aplicável | Preencher | Preencher |

O Playbook NÃO DEVE iniciar execução se depender de autorização ausente, segredo não autorizado, acesso proibido, escopo ambíguo ou informação classificada sem tratamento adequado.

## 5. Entradas

Modele todas as entradas necessárias ou possíveis.

| Entrada | Obrigatória | Fonte esperada | Validação necessária |
| --- | --- | --- | --- |
| Tarefa | Sim | Solicitante ou documento de trabalho | Verificar objetivo e escopo |
| Contexto | Sim | Repositório, documentação ou owner | Verificar suficiência |
| Critérios de aceite | Sim | Solicitante, KEP ou produto | Verificar clareza |
| Documentos da KEP | Quando aplicável | KEP | Verificar versão e relevância |
| ADRs | Quando aplicável | `adr/` ou produto | Verificar decisão aceita |
| KES | Quando aplicável | `specifications/` | Verificar aplicabilidade |
| Policies | Sim | `policies/` | Verificar precedência |
| Baseline | Quando aplicável | KEP ou produto consumidor | Verificar compatibilidade |
| Permissões temporárias | Quando aplicável | Aprovador autorizado | Verificar escopo e expiração |
| Classificação de risco | Sim | KAF, owner ou análise inicial | Verificar proporcionalidade |
| Status do Git | Quando houver alteração | Repositório aplicável | Verificar worktree e mudanças preexistentes |
| Dados do produto | Quando aplicável | Produto consumidor | Verificar autorização e classificação |

Entradas insuficientes DEVEM ser registradas como limitação ou exceção.

## 5.1 Git e worktree

Quando a execução envolver repositório, arquivos versionados ou preparação de commit, o agente DEVE:

- executar ou solicitar `git status` antes da execução;
- identificar alterações preexistentes;
- preservar trabalho alheio;
- separar escopos e não misturar tarefas não relacionadas;
- listar arquivos alterados;
- gerar ou revisar `git diff` quando houver alteração;
- executar `git diff --check` quando houver alteração;
- não usar `git add .` de forma indiscriminada;
- fazer commit somente mediante autorização explícita;
- fazer push somente mediante autorização explícita;
- tratar `force push` como proibido;
- não reverter alterações fora da missão;
- não reverter trabalho alheio sem autorização explícita.

Se houver conflito entre alterações preexistentes e a missão, a execução DEVE ser interrompida, limitada ou escalada para decisão humana.

## 6. Fluxo operacional

O fluxo abaixo é reutilizável e PODE ser adaptado por Playbooks específicos, desde que os limites do KAF, das Policies e da KES-0001 sejam preservados.

```text
Receber missão
    ↓
Validar contexto
    ↓
Identificar escopo e fora do escopo
    ↓
Classificar risco
    ↓
Validar permissões e autorizações
    ↓
Planejar execução
    ↓
Executar atividades autorizadas
    ↓
Gerar evidências
    ↓
Executar validações
    ↓
Registrar fatos, inferências e limitações
    ↓
Emitir resultado
    ↓
Encerrar missão
```

### Etapas obrigatórias

| Etapa | Objetivo | Saída esperada |
| --- | --- | --- |
| Receber missão | Entender pedido, resultado esperado e restrições | Missão reescrita de forma objetiva |
| Validar contexto | Confirmar informações mínimas | Contexto suficiente ou solicitação de complemento |
| Identificar escopo | Separar o que será feito e o que não será feito | Escopo e fora do escopo registrados |
| Classificar risco | Definir supervisão e evidências proporcionais | Risco baixo, médio, alto ou crítico |
| Validar permissões | Confirmar se a ação é permitida | Permissões confirmadas ou bloqueio |
| Planejar execução | Definir passos antes de agir | Plano breve, revisável e proporcional |
| Executar atividades | Realizar somente ações autorizadas | Artefatos ou análise produzidos |
| Gerar evidências | Registrar o que foi feito | Evidências auditáveis |
| Executar validações | Confirmar resultado quando aplicável | Validações ou limitações documentadas |
| Registrar limitações | Separar fatos, inferências e lacunas | Limitações explícitas |
| Emitir resultado | Entregar conclusão compreensível | Resultado, riscos e pendências |
| Encerrar missão | Confirmar estado final | Critérios de aceite e pós-condições |

## 7. Decisões

Pontos de decisão DEVEM ser explícitos.

### Contexto suficiente?

```text
Contexto suficiente?
    ├─ SIM → continuar
    └─ NÃO → solicitar contexto
              ↓
            contexto recebido?
              ├─ SIM → continuar
              └─ NÃO → interromper e registrar limitação
```

### Autorização suficiente?

```text
Autorização suficiente?
    ├─ SIM → executar etapa autorizada
    └─ NÃO → não executar
              ↓
            solicitar autorização ou encerrar com pendência
```

### Risco aceitável?

```text
Risco aceitável para o nível de autonomia?
    ├─ SIM → continuar com evidências proporcionais
    └─ NÃO → escalar para revisão humana ou interromper
```

### Conflito com Policy, KES ou ADR?

```text
Conflito normativo ou decisório?
    ├─ NÃO → continuar
    └─ SIM → aplicar precedência
              ↓
            conflito resolvido?
              ├─ SIM → continuar com justificativa
              └─ NÃO → interromper e propor KIP, ADR ou revisão
```

## 8. Exceções

| Exceção | Detecção | Tratamento | Encerramento |
| --- | --- | --- | --- |
| Contexto insuficiente | Informações mínimas ausentes ou ambíguas | Solicitar complemento ou limitar escopo | Registrar limitação e pendência |
| Autorização ausente | Permissão, aprovação ou acesso não confirmado | Não executar ação dependente | Encerrar ou aguardar autorização |
| Conflito de escopo | Pedido inclui tarefa fora do Playbook | Separar escopo autorizado do escopo excluído | Registrar recusa parcial ou redirecionamento |
| Evidências insuficientes | Resultado não pode ser auditado | Gerar evidências adicionais ou declarar limitação | Encerrar com risco residual |
| Riscos elevados | Risco alto ou crítico incompatível com autonomia | Escalar para revisão humana | Suspender execução até decisão |
| Falhas inesperadas | Erro de comando, validação, leitura ou ambiente | Parar, preservar evidências e relatar | Encerrar com diagnóstico e próxima ação |
| Documentos ausentes | Referência obrigatória não localizada | Registrar ausência e procurar fonte alternativa autorizada | Encerrar com pendência se fonte for necessária |
| Conflito com Policies | Ação viola propriedade intelectual, classificação, segurança ou licenciamento | Interromper ação proibida | Registrar bloqueio e escalar |
| Tentativa de ação proibida | Ação fora das permissões do agente ou Playbook | Não executar | Encerrar ou solicitar nova autorização |

Exceções NÃO DEVEM ser escondidas no resultado final.

## 9. Evidências obrigatórias

O Playbook DEVE definir evidências proporcionais ao risco.

| Evidência | Quando exigir | Observações |
| --- | --- | --- |
| Arquivos alterados | Quando houver edição | Listar caminhos e finalidade |
| Lista de arquivos | Quando houver leitura relevante ou alteração | Separar arquivos consultados e arquivos alterados |
| Relatórios | Quando houver análise, revisão ou decisão sugerida | Incluir achados, riscos e limitações |
| Diffs | Quando houver alteração versionável | Revisar antes da conclusão |
| `git status` | Antes de alteração em repositório | Registrar mudanças preexistentes |
| `git diff --check` | Quando houver alteração versionável | Registrar resultado ou justificativa de não execução |
| Comandos executados | Quando houver execução de comandos | Listar comandos relevantes e resultados reais |
| Testes | Quando aplicável | Informar comando, resultado ou justificativa |
| Build | Quando aplicável | Informar comando, resultado ou justificativa |
| Logs | Quando houver comandos, testes, builds ou operações | Não incluir segredos ou dados sensíveis |
| Hashes | Quando aplicável | Registrar versão, artefato ou referência auditável |
| Validações | Sempre que aplicável | Informar executadas e não executadas |
| Revisão humana | Obrigatória em risco alto ou crítico | Registrar revisor, escopo e resultado |
| Aprovação explícita | Quando exigida por risco, permissão ou ambiente | Registrar aprovador, escopo e validade |
| Plano de rollback | Quando houver ação destrutiva, alto risco ou produção | Registrar pré-condições e estratégia de reversão |
| Evidências de reversão | Quando reversão for executada | Registrar ação, resultado e validação |
| Justificativas | Quando houver exceção, decisão ou item não atendido | Explicar motivo, impacto e risco |
| Riscos | Sempre | Classificar e registrar mitigação |
| Pendências | Quando houver | Indicar responsável e próxima ação quando possível |
| Autorizações | Quando exigidas | Registrar aprovador, escopo e validade |
| Status do Git | Quando houver alteração em repositório | Registrar mudanças preexistentes e próprias |

Evidência não executada ou não aplicável DEVE possuir justificativa.

## 10. Critérios de aceite

Use o status Atendido, Não aplicável, Não executado ou Bloqueado. Todo item não atendido DEVE possuir justificativa.

| Critério | Status | Justificativa |
| --- | --- | --- |
| Missão compreendida |  |  |
| Escopo respeitado |  |  |
| Fora do escopo preservado |  |  |
| Contexto mínimo validado |  |  |
| Risco classificado |  |  |
| Permissões verificadas |  |  |
| Autorizações verificadas |  |  |
| Policies aplicáveis respeitadas |  |  |
| KES aplicáveis respeitadas |  |  |
| Evidências produzidas |  |  |
| Validações executadas ou justificadas |  |  |
| Fatos, inferências e hipóteses separados |  |  |
| Limitações registradas |  |  |
| Pendências registradas |  |  |
| Resultado final emitido |  |  |

## 11. Critérios de interrupção

A missão DEVE parar imediatamente quando ocorrer:

- ausência de autorização obrigatória;
- risco crítico sem autorização e supervisão adequadas;
- inconsistência documental que afete decisão ou execução;
- ação proibida pelo KAF, por Policies, por KES ou pelo produto consumidor;
- conflito com propriedade intelectual, segurança, classificação ou licenciamento;
- tentativa de alterar arquivos fora do escopo;
- tentativa de executar alteração destrutiva sem autorização explícita, justificativa, evidência, plano de reversão e aprovação humana;
- tentativa de acessar segredo, credencial, dado pessoal, dado financeiro ou produção sem autorização explícita;
- falha de segurança real ou suspeita;
- inconsistência entre tarefa, baseline da KEP e baseline do produto;
- tentativa de `force push`;
- risco de sobrescrever trabalho preexistente;
- validação essencial indisponível sem alternativa aceitável;
- instrução conflitante com governança humana.

Interrupção DEVE registrar motivo, impacto, evidências existentes, responsável pela decisão e próxima ação recomendada.

## 12. Critérios de conclusão

O Playbook PODE ser considerado concluído quando:

- a missão operacional foi executada ou encerrada com justificativa;
- critérios de aceite foram avaliados;
- evidências obrigatórias foram registradas;
- validações foram executadas ou justificadas;
- limitações foram declaradas;
- riscos residuais foram registrados;
- pendências foram listadas;
- nenhuma ação proibida permaneceu sem tratamento;
- resultado final foi emitido de forma compreensível;
- owner ou aprovador recebeu informação suficiente para decidir próximos passos.

Conclusão do Playbook NÃO significa aprovação de mudança, ativação de agente, concessão de permissão, commit, push, release ou aceite de produto.

## 13. Pós-condições

Ao encerrar, registre:

- documentos atualizados:
- evidências registradas:
- pendências abertas:
- recomendações:
- riscos residuais:
- validações executadas:
- validações não executadas:
- decisões sugeridas:
- ações que exigem aprovação humana:

Se houver produto consumidor, registrar também:

- produto afetado:
- owner do produto:
- baseline da KEP usada:
- exceções locais:
- impacto em ADRs, KES, Policies, Standards ou Playbooks:

## 14. Riscos

| Nível | Riscos típicos | Supervisão mínima | Evidências mínimas |
| --- | --- | --- | --- |
| Baixo | Consulta, organização documental, análise sem alteração | Revisão simples quando aplicável | Fontes, limitações, resultado, lista de arquivos quando aplicável |
| Médio | Edição documental, análise com decisão sugerida, validação não destrutiva | Revisão humana proporcional | Lista de arquivos, `git status` quando aplicável, diff quando houver alteração, `git diff --check`, comandos executados, validações e riscos |
| Alto | Mudança normativa, produto consumidor, segurança, automação, Git, banco ou dados sensíveis | Revisão humana obrigatória | Lista de arquivos, `git status`, diff, `git diff --check`, testes ou justificativa, build ou justificativa, logs, aprovação explícita, revisão humana, plano de rollback quando aplicável |
| Crítico | Produção, segredos, dados restritos, ação destrutiva, release, force push ou impacto amplo | Autorização explícita e supervisão independente | Evidências completas, comandos executados, hashes quando aplicável, logs sem segredos, aprovação explícita, revisão humana, plano de contenção, plano de rollback, evidências de reversão quando executada, auditoria e decisão humana |

O Playbook NÃO DEVE reduzir risco para caber na autonomia do agente. Se o risco for maior que a autonomia permitida, a missão DEVE ser interrompida ou escalada.

Ações destrutivas DEVEM exigir autorização explícita, justificativa, evidência, plano de reversão e aprovação humana antes de qualquer execução.

## 15. Transparência

O resultado do Playbook DEVE separar:

- fatos observados;
- inferências;
- hipóteses;
- recomendações;
- limitações;
- ações executadas;
- ações não executadas;
- validações reais;
- validações não realizadas;
- riscos residuais.

O Playbook NÃO DEVE permitir que agente invente arquivos, comandos, resultados, validações, permissões, owners, aprovações ou contexto.

## 16. Relação com o KAF

O Playbook existe dentro do modelo de governança do KAF.

Regras obrigatórias:

- Playbook NÃO substitui agente.
- Agente executa Playbook quando autorizado.
- Playbook NÃO concede permissões.
- Playbook NÃO aprova ações.
- Playbook NÃO ativa agentes.
- Playbook NÃO define nível de autonomia do agente.
- Playbook DEVE respeitar permissões, riscos, evidências e limites do KAF.
- Playbook PODE ser compartilhado por múltiplos agentes compatíveis.

```text
KAF
  define governança, autonomia e permissões
    ↓
Agente
  possui missão, owner e limites
    ↓
Playbook
  orienta fluxo operacional reutilizável
    ↓
Evidências
  sustentam revisão, aceite e melhoria
```

## 17. Relação com produtos

O mesmo Playbook PODE servir diferentes produtos consumidores, incluindo AutoBody ERP e produtos futuros, desde que:

- regras específicas do produto permaneçam no produto;
- código, dados, configurações e segredos do produto não sejam copiados para a KEP;
- owner do produto autorize atuação quando aplicável;
- baseline da KEP esteja identificado;
- exceções locais estejam documentadas;
- evidências de conformidade sejam registradas.

O Playbook NÃO substitui ADR local, política local, critério de aceite de produto ou decisão de owner do produto.

## 18. Diagramas ASCII

### Fluxo principal

```text
Missão
  ↓
Contexto
  ↓
Risco + permissões
  ↓
Plano
  ↓
Execução autorizada
  ↓
Evidências
  ↓
Validação
  ↓
Resultado
```

### Decisões

```text
              ┌─────────────────────┐
              │ Decisão necessária? │
              └──────────┬──────────┘
                         │
             ┌───────────┴───────────┐
             ▼                       ▼
      continuar              escalar ou parar
             │                       │
             ▼                       ▼
       registrar              registrar motivo,
       evidência              risco e responsável
```

### Exceções

```text
Exceção detectada
      ↓
Classificar impacto
      ↓
Pode tratar com segurança?
      ├─ SIM → tratar, evidenciar e continuar
      └─ NÃO → interromper, preservar evidências e escalar
```

### Encerramento

```text
Atividades encerradas
      ↓
Critérios de aceite avaliados
      ↓
Evidências reunidas
      ↓
Limitações e riscos declarados
      ↓
Pendências e recomendações registradas
      ↓
Resultado final emitido
```

## 19. Exemplos

Os exemplos abaixo são ilustrativos. Eles NÃO representam Playbooks oficiais, NÃO criam agentes, NÃO criam prompts e NÃO concedem permissões.

### Exemplo 1 - Revisão arquitetural

**EXEMPLO. NÃO NORMATIVO. NÃO APROVADO. SOMENTE REFERÊNCIA.**

| Campo | Exemplo |
| --- | --- |
| Missão operacional | Revisar coerência arquitetural de um documento. |
| Agentes compatíveis | Agente de arquitetura, agente de revisão, agente de auditoria. |
| Entradas | Documento alvo, critérios de revisão, KES aplicáveis, Policies e contexto. |
| Fluxo resumido | Ler contexto, avaliar compatibilidade, identificar riscos, registrar achados, emitir decisão sugerida. |
| Evidências | Arquivos analisados, pontos fortes, pontos fracos, riscos, nota e ajustes obrigatórios. |
| Interrupção | Documento ausente, escopo ambíguo, conflito com Policy ou falta de contexto crítico. |
| Saída | Relatório de revisão com decisão sugerida. |

### Exemplo 2 - Atualização documental

**EXEMPLO. NÃO NORMATIVO. NÃO APROVADO. SOMENTE REFERÊNCIA.**

| Campo | Exemplo |
| --- | --- |
| Missão operacional | Aplicar ajustes obrigatórios em documento existente. |
| Agentes compatíveis | Agente de documentação, agente de implementação supervisionada. |
| Entradas | Documento alvo, relatório de revisão, escopo autorizado, critérios de aceite. |
| Fluxo resumido | Validar escopo, localizar trechos, aplicar patch mínimo, validar Markdown, revisar diff, reportar resultado. |
| Evidências | Arquivos alterados, resumo dos ajustes, validações executadas e riscos residuais. |
| Interrupção | Ajuste fora do escopo, tentativa de reescrever documento inteiro, conflito com alteração preexistente. |
| Saída | Documento atualizado e relatório de validação. |

### Exemplo 3 - Preparação de commit

**EXEMPLO. NÃO NORMATIVO. NÃO APROVADO. SOMENTE REFERÊNCIA.**

| Campo | Exemplo |
| --- | --- |
| Missão operacional | Preparar um conjunto de alterações para commit sem executar o commit automaticamente. |
| Agentes compatíveis | Agente de implementação supervisionada, agente de revisão, agente de qualidade. |
| Entradas | Escopo do commit, arquivos esperados, critérios de aceite, status do Git. |
| Fluxo resumido | Verificar worktree, separar alterações próprias, validar diff, executar `git diff --check`, resumir staged proposto e aguardar aprovação. |
| Evidências | `git status`, lista de arquivos, validações, riscos e mensagem sugerida. |
| Interrupção | Alterações não relacionadas, segredo detectado, arquivo fora do escopo, autorização ausente. |
| Saída | Resumo do que pode ser commitado e mensagem sugerida. |

## 20. Histórico

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.1 | 2026-07-17 | Diferenciação entre documento e execução, identificação de execução, fortalecimento do Git/worktree, ampliação das evidências, lifecycle do documento, proteção de identificadores e marcação explícita dos exemplos. |
| 0.1.0 | 2026-07-16 | Criação inicial do template oficial de Playbooks de Agentes da KDEVY. |
