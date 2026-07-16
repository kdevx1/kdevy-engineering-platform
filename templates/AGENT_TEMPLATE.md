# Template Oficial de Agente da KDEVY

Use este template para documentar, revisar, aprovar e manter agentes da KDEVY Engineering Platform (KEP).

Preencher este template NÃO aprova o agente, NÃO ativa o agente e NÃO concede permissões. O documento preenchido é apenas um artefato de proposta, planejamento ou especificação até aprovação formal.

Instruções de uso:

1. Copie este template para o local oficial do agente.
2. Substitua todos os campos de orientação.
3. Remova exemplos que não se apliquem.
4. Não remova seções obrigatórias.
5. Marque itens não aplicáveis com justificativa.
6. Submeta o agente à revisão do KAF.
7. Não ative o agente antes da aprovação formal.
8. Registre o agente no catálogo.
9. Trate o documento preenchido como proposta até que haja owner operacional, revisão, aprovação formal e conformidade com o KAF.

Este template não implementa agentes, não contém prompts executáveis, não aprova agentes, não ativa agentes, não concede permissões e não substitui KES, Policies, ADRs ou owners humanos.

## 1. Controle documental

| Campo | Valor |
| --- | --- |
| Documento | Preencher com o nome deste documento de agente. |
| ID do agente | Usar `AGT-<DOMINIO>-<NUMERO>`. |
| Nome oficial | Preencher com o nome oficial do agente. |
| Versão | Preencher com a versão do documento do agente. |
| Status | Candidate, Planned, Approved, Active, Suspended, Deprecated ou Disabled. |
| Categoria | Preencher com a categoria funcional conforme KAF. |
| Classificação da informação | Público, Interno, Confidencial ou Restrito. |
| Owner operacional | Responsável humano pelo agente. Não inventar owner. |
| Owner do produto consumidor | Responsável pelo produto, quando aplicável. |
| Aprovador | Responsável por autorizar ativação, permissões, exceções e reativação após incidente. |
| Plataforma ou produto | KEP, produto consumidor ou ambos. |
| Ferramenta ou fornecedor | Ferramenta/modelo utilizado, se definido. Não define identidade do agente. |
| Data de criação | AAAA-MM-DD. |
| Última revisão | AAAA-MM-DD. |
| Próxima revisão | AAAA-MM-DD ou justificativa. |
| Documentos relacionados | Listar KAF, catálogo, KES, Policies, ADRs, Standards e Playbooks aplicáveis. |
| Histórico | Resumo curto ou referência ao histórico deste documento. |

## 2. Identificação do agente

- ID:
- Nome:
- Categoria:
- Status:
- Escopo de atuação: Plataforma / Produto / Ambos
- Agente do catálogo correspondente:
- Ferramenta ou modelo utilizado:
- Fornecedor, quando aplicável:

Ferramenta e modelo NÃO definem a identidade do agente. A identidade é definida por missão, responsabilidade, limites, permissões, owner e registro no catálogo.

## 3. Problema e justificativa

- Problema que o agente resolve:
- Evidência de demanda real:
- Frequência da necessidade:
- Impacto esperado:
- Justificativa para não reutilizar agente existente:
- Custo de manter o agente:
- Consequência de não criá-lo:

## 4. Missão

Escreva uma frase curta e objetiva.

A missão DEVE declarar o valor entregue, evitar linguagem genérica, não incluir autoridade inexistente e permanecer válida mesmo se a ferramenta de IA mudar.

Missão:

> Preencher.

## 5. Objetivos

- Objetivo principal:
- Objetivos secundários:
- Resultados esperados:
- Indicadores futuros, quando aplicável:

## 6. Escopo

- Tarefas permitidas:
- Domínios atendidos:
- Repositórios aplicáveis:
- Artefatos que pode consumir:
- Artefatos que pode produzir:
- Produtos consumidores:
- Ambientes autorizados:

## 7. Fora do escopo

Liste explicitamente:

- responsabilidades que não pertencem ao agente;
- decisões que exigem autoridade humana;
- tarefas proibidas;
- ambientes não autorizados;
- dados que não pode acessar;
- ações irreversíveis não permitidas.

## 8. Consumidores

| Consumidor | Contexto necessário | Observações |
| --- | --- | --- |
| Pessoas atendidas | Preencher | Preencher |
| Agentes atendidos | Preencher | Preencher |
| Produtos atendidos | Preencher | Preencher |
| Equipes atendidas | Preencher | Preencher |

## 9. Owners e responsabilidades humanas

### Owner operacional do agente

Responsável por:

- missão;
- permissões;
- risco;
- lifecycle;
- incidentes;
- revisão periódica;
- ativação;
- suspensão;
- desativação.

Owner operacional:

- Nome:
- Responsabilidade:
- Evidência de aceite:

### Owner do produto consumidor

Responsável por:

- regras locais;
- contexto do produto;
- critérios de aceite;
- baseline da KEP;
- autorização de atuação;
- exceções locais.

Owner do produto:

- Nome:
- Produto:
- Evidência de aceite:

### Aprovador

Responsável por:

- aprovar ativações;
- aprovar permissões;
- aprovar exceções;
- decidir reativação após incidente.

Aprovador:

- Nome:
- Escopo de aprovação:
- Evidência de aprovação:

Agente sem owner operacional NÃO DEVE permanecer ativo. Owner não pode ser inventado. `Owner a definir` só é permitido para agentes Candidate ou Planned.

## 10. Status e lifecycle

| Estado | Significado | Ações permitidas | Entrada | Saída |
| --- | --- | --- | --- | --- |
| Candidate | Capacidade identificada, ainda sem aprovação operacional. | Analisar, detalhar e rejeitar. | Problema e justificativa inicial. | Planned ou Disabled. |
| Planned | Entrada aceita para planejamento. | Detalhar owner, risco, permissões e evidências. | Demanda real e ausência de duplicidade. | Approved, Deprecated ou Disabled. |
| Approved | Conceito aprovado, ainda não ativo. | Preparar ativação controlada. | Owner, escopo, risco e permissões definidos. | Active ou Suspended. |
| Active | Agente autorizado para uso controlado. | Operar dentro de escopo e permissões. | Ativação formal. | Suspended, Deprecated ou Disabled. |
| Suspended | Agente temporariamente impedido de operar. | Investigar, conter e revisar. | Incidente, risco ou autorização inválida. | Active, Deprecated ou Disabled. |
| Deprecated | Agente não recomendado para novos usos. | Transição e preservação histórica. | Substituição ou baixa utilidade. | Disabled. |
| Disabled | Agente encerrado operacionalmente. | Consulta histórica e auditoria. | Decisão de desativação. | Histórico preservado. |

Lifecycle:

```text
Candidate -> Planned -> Approved -> Active -> Suspended/Deprecated -> Disabled
```

Critérios:

- Promoção:
- Suspensão:
- Reativação:
- Depreciação:
- Desativação:
- Arquivamento histórico:

Identificadores desativados NÃO DEVEM ser reutilizados.

## 11. Nível máximo de autonomia

Níveis permitidos:

- Nível 0 - Consulta;
- Nível 1 - Sugestão;
- Nível 2 - Preparação de artefatos;
- Nível 3 - Implementação supervisionada;
- Nível 4 - Automação autorizada e limitada.

Preenchimento obrigatório:

- Nível máximo:
- Justificativa:
- Ações permitidas:
- Ações proibidas:
- Supervisão obrigatória:
- Evidências:
- Possibilidade de reversão:

Autonomia irrestrita NÃO é permitida.

## 12. Classificação de risco

Classificação máxima permitida: Baixo / Médio / Alto / Crítico

Avaliar impacto em:

| Área | Impacto | Justificativa |
| --- | --- | --- |
| Código | Preencher | Preencher |
| Arquitetura | Preencher | Preencher |
| Documentação normativa | Preencher | Preencher |
| Banco de dados | Preencher | Preencher |
| Segurança | Preencher | Preencher |
| Infraestrutura | Preencher | Preencher |
| Produção | Preencher | Preencher |
| Propriedade intelectual | Preencher | Preencher |
| Dados pessoais | Preencher | Preencher |
| Dados financeiros | Preencher | Preencher |
| Git | Preencher | Preencher |
| Releases | Preencher | Preencher |
| Produto consumidor | Preencher | Preencher |

Justificativa para o risco máximo permitido:

> Preencher.

## 13. Permissões

Marque cada ação como Permitida, Com supervisão ou Proibida.

| Ação | Permitida | Com supervisão | Proibida | Observações |
| --- | --- | --- | --- | --- |
| Ler arquivos |  |  |  |  |
| Pesquisar documentação |  |  |  |  |
| Criar rascunhos |  |  |  |  |
| Editar arquivos |  |  |  |  |
| Executar testes |  |  |  |  |
| Executar builds |  |  |  |  |
| Executar análise estática |  |  |  |  |
| Alterar dependências |  |  |  |  |
| Criar migrations |  |  |  |  |
| Modificar segurança |  |  |  |  |
| Alterar banco |  | X |  | Permitida somente com supervisão e autorização explícita. Registrar escopo, ambiente, evidências e plano de reversão quando aplicável. |
| Excluir arquivos |  | X |  | Permitida somente com supervisão, autorização explícita e plano de reversão. Registrar arquivos afetados e justificativa. |
| Acessar segredos |  |  | X | Proibida por padrão. Exceções exigem autorização explícita, escopo mínimo e evidências. |
| Operar produção |  |  | X | Proibida por padrão. Exceções exigem autorização explícita, janela, evidências e plano de reversão. |
| Criar commit |  | X |  | Permitida somente com autorização explícita. Apresentar staged files e evidências antes do commit. |
| Fazer push |  | X |  | Permitida somente com autorização explícita. Registrar branch, destino e evidências. |
| Force push |  |  | X | Proibido. |
| Criar tag |  |  |  |  |
| Criar release |  |  |  |  |
| Aprovar ADR |  |  | X | Proibido para IA. |
| Aprovar KES |  |  | X | Proibido para IA. |
| Depreciar documentos |  |  |  | Exige autorização explícita. |
| Arquivar documentos |  |  |  | Exige autorização explícita. |

Regras mínimas:

- force push é proibido;
- acesso a segredos é proibido por padrão;
- produção é proibida por padrão;
- aprovação de ADR/KES é proibida para IA;
- commit e push exigem autorização explícita;
- ações destrutivas exigem autorização, evidência e plano de reversão.

## 14. Autorizações temporárias

Autorizações temporárias NÃO DEVEM se tornar permanentes por omissão.

| Campo | Valor |
| --- | --- |
| Autorização | Preencher |
| Escopo | Preencher |
| Justificativa | Preencher |
| Aprovador | Preencher |
| Início | AAAA-MM-DD |
| Expiração | AAAA-MM-DD |
| Ambientes | Preencher |
| Ações | Preencher |
| Evidências | Preencher |
| Revogação | Preencher |

## 15. Entradas obrigatórias

Defina os artefatos mínimos que o agente deve receber, quando aplicável:

- instrução da tarefa;
- contexto;
- critérios de aceite;
- documentos da KEP;
- políticas;
- ADRs;
- baseline;
- contexto do produto;
- limites do repositório;
- status do Git;
- permissões concedidas;
- classificação de risco.

## 16. Saídas obrigatórias

Defina:

- artefatos produzidos;
- relatório de execução;
- lista de arquivos alterados;
- decisões e justificativas;
- inferências;
- incertezas;
- riscos;
- validações executadas;
- validações não executadas;
- pendências;
- recomendação final.

## 17. Dependências

Registre:

- KES aplicáveis:
- Policies:
- ADRs:
- Standards:
- Playbooks:
- Templates:
- Agentes relacionados:
- Produtos:
- Ferramentas:
- Ambientes:

Dependências inexistentes ou futuras DEVEM ser indicadas claramente.

## 18. Regras para worktree e Git

O agente DEVE:

- executar ou solicitar `git status` antes de alterar;
- identificar mudanças preexistentes;
- diferenciar seu trabalho;
- não misturar tarefas não relacionadas;
- não reverter trabalho alheio;
- não alterar histórico;
- validar o diff;
- executar `git diff --check`;
- não fazer commit ou push sem autorização explícita;
- não usar `git add .` quando houver risco de misturar escopos;
- apresentar os arquivos staged antes do commit.

## 19. Critérios de aceite

Use o status Atendido, Não aplicável, Não executado ou Bloqueado. Justifique qualquer item não atendido.

Qualquer item marcado como Não aplicável, Não executado ou Bloqueado DEVE incluir justificativa com:

- motivo;
- impacto;
- risco;
- responsável;
- ação futura, quando aplicável.

| Critério | Status | Justificativa |
| --- | --- | --- |
| missão cumprida |  |  |
| escopo respeitado |  |  |
| nenhuma ação proibida executada |  |  |
| alterações preexistentes preservadas |  |  |
| referências validadas |  |  |
| testes executados |  |  |
| build executado |  |  |
| análise estática executada |  |  |
| diff revisado |  |  |
| `git diff --check` executado |  |  |
| evidências apresentadas |  |  |
| riscos declarados |  |  |
| inferências declaradas |  |  |
| pendências documentadas |  |  |
| revisão humana realizada quando obrigatória |  |  |

## 20. Evidências obrigatórias

| Evidência | Baixo | Médio | Alto | Crítico |
| --- | --- | --- | --- | --- |
| Lista de arquivos | Recomendada | Obrigatória | Obrigatória | Obrigatória |
| Diff | Quando houver alteração | Obrigatório quando houver alteração | Obrigatório | Obrigatório |
| `git diff --check` | Quando houver alteração | Obrigatório quando houver alteração | Obrigatório | Obrigatório |
| Testes | Quando aplicável | Quando aplicável | Obrigatórios quando aplicável | Obrigatórios quando aplicável |
| Build | Quando aplicável | Quando aplicável | Obrigatório quando aplicável | Obrigatório quando aplicável |
| Análise estática | Opcional | Quando aplicável | Quando aplicável | Recomendada ou obrigatória conforme risco |
| Logs | Quando aplicável | Quando aplicável | Obrigatórios quando aplicável | Obrigatórios |
| Screenshots | Quando aplicável | Quando aplicável | Quando útil | Quando útil |
| Hashes | Opcional | Quando aplicável | Quando aplicável | Recomendados |
| Plano de rollback | Não aplicável | Quando aplicável | Obrigatório quando aplicável | Obrigatório |
| Aprovação explícita | Não aplicável | Quando aplicável | Obrigatória | Obrigatória |
| Revisão humana | Recomendada | Quando aplicável | Obrigatória | Obrigatória |
| Auditoria independente | Não aplicável | Não aplicável | Quando possível | Obrigatória quando possível |
| Validação em ambiente seguro | Quando aplicável | Quando aplicável | Obrigatória quando aplicável | Obrigatória |

## 21. Transparência

O agente DEVE diferenciar:

- fato observado;
- inferência;
- hipótese;
- recomendação;
- limitação;
- resultado executado;
- resultado esperado;
- validação não realizada.

O agente NÃO DEVE inventar:

- arquivos;
- comandos;
- resultados;
- testes;
- builds;
- validações;
- links;
- permissões;
- contexto.

## 22. Segregação de funções

Para tarefas de risco alto ou crítico:

- quem planeja não deve ser o único aprovador;
- quem implementa não deve ser o único revisor;
- quem executa não deve ser o único auditor;
- aprovação humana é obrigatória;
- auditoria deve ser independente quando possível.

| Função | Responsável |
| --- | --- |
| Planejamento |  |
| Implementação |  |
| Revisão |  |
| Aprovação |  |
| Auditoria |  |

## 23. Segurança e propriedade intelectual

Defina regras para:

- segredos;
- tokens;
- senhas;
- chaves;
- `.env`;
- logs;
- dados pessoais;
- dados financeiros;
- arquivos de clientes;
- código proprietário;
- documentação interna;
- conteúdo externo;
- licenças.

Conteúdo externo só pode ser incorporado após verificação de licença. Informação interna não pode ser enviada a serviço não autorizado. Conteúdo confidencial não pode ser transformado em exemplo público.

## 24. Processo de suspensão

Gatilhos:

- violação de permissão;
- incidente;
- comportamento inesperado;
- evidência inventada;
- ausência de owner;
- mudança de risco;
- falha de segurança;
- acesso indevido;
- autorização expirada;
- resultado destrutivo.

Fluxo:

```text
Detecção -> Contenção -> Suspensão -> Preservação de evidências -> Investigação -> Decisão
```

## 25. Gestão de incidentes

| Campo | Valor |
| --- | --- |
| Agente |  |
| Data |  |
| Tarefa |  |
| Ação |  |
| Ambiente |  |
| Impacto |  |
| Dados ou arquivos afetados |  |
| Autorização |  |
| Evidências |  |
| Causa |  |
| Contenção |  |
| Correção |  |
| Owner |  |
| Decisão |  |
| Aprendizado |  |
| Reativação ou desativação |  |

## 26. Processo de reativação

Exigir:

- causa identificada;
- correção validada;
- permissões revisadas;
- owner confirmado;
- riscos reclassificados;
- testes;
- revisão humana;
- autorização explícita.

## 27. Processo de depreciação e desativação

Definir:

- motivo;
- agente substituto;
- consumidores afetados;
- plano de migração;
- data;
- owner;
- preservação histórica;
- revogação de acessos;
- encerramento de autorizações;
- atualização do catálogo.

## 28. Onboarding mínimo

O agente DEVE ler, conforme aplicabilidade:

1. `README.md`
2. `architecture/PLATFORM_MODEL.md`
3. `architecture/KNOWLEDGE_SYSTEM_MODEL.md`
4. `architecture/AGENT_FRAMEWORK_MODEL.md`
5. `architecture/AGENT_CATALOG.md`
6. `specifications/KES-0000_MASTER_SPECIFICATION.md`
7. `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md`
8. Policies aplicáveis
9. ADRs aplicáveis
10. contexto do produto
11. instruções da tarefa

## 29. Contrato com produtos

| Campo | Valor |
| --- | --- |
| Produto |  |
| Repositório |  |
| Baseline da KEP |  |
| ADRs locais |  |
| Políticas locais |  |
| Owner do produto |  |
| Ambiente |  |
| Permissões |  |
| Critérios de aceite |  |
| Dados acessíveis |  |
| Dados proibidos |  |
| Evidências |  |
| Exceções |  |
| Duração da autorização |  |

Este template não concede acesso automático ao produto.

## 30. Métricas futuras

Métricas opcionais futuras:

- tarefas concluídas;
- retrabalho;
- incidentes;
- violações;
- qualidade de evidências;
- permissões não utilizadas;
- suspensões;
- reativações;
- tempo de revisão;
- satisfação dos consumidores;
- sobreposição de capacidade.

Não implementar métricas neste template.

## 31. Registro de revisões

| Data | Versão | Revisor | Resultado | Alterações | Próxima revisão |
| --- | --- | --- | --- | --- | --- |
| AAAA-MM-DD | 0.1.0 | Preencher | Preencher | Preencher | AAAA-MM-DD |

## 32. Histórico de alterações

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.1 | AAAA-MM-DD | Pré-classificação de permissões críticas, inclusão de aprovador no controle documental, justificativas obrigatórias para itens não atendidos e reforço de que o template não aprova, ativa ou concede permissões. |
| 0.1.0 | AAAA-MM-DD | Criação inicial do documento de agente a partir do template oficial da KDEVY. |
