# Revisão Arquitetural do AGENT_REGISTRY

## Controle da revisão

| Campo | Valor |
| --- | --- |
| Documento revisado | `architecture/AGENT_REGISTRY.md` |
| Tipo | Revisão arquitetural completa |
| Classificação | Interno |
| Data | 2026-07-17 |
| Revisor | Chief AI Governance Architect |
| Escopo | Registro oficial de agentes, governança, lifecycle, rastreabilidade, playbooks, produtos, ambientes, auditoria e automação futura |
| Decisão sugerida | Aprovar com ajustes |
| Nota geral | 8,5 / 10 |

## 1. Resumo executivo

O `AGENT_REGISTRY.md` cumpre bem a função de Registro Oficial de Agentes da KDEVY Engineering Platform. Ele diferencia catálogo, registro, documento individual, template de agente e template de playbook; define lifecycle coerente; impede ativação prematura; preserva IDs históricos; mantém a matriz oficial vazia; e posiciona o registro como fonte de verdade sobre agentes formalmente reconhecidos.

A decisão sugerida é **Aprovar com ajustes**. O documento está maduro como fundação, mas antes do commit deve incluir campos e regras adicionais para arquivamento, sucessão, criticidade operacional, compatibilidade com automação e sustentabilidade em escala.

## 2. Distinção entre artefatos

| Artefato | Papel definido | Avaliação |
| --- | --- | --- |
| AGENT_CATALOG | Define categorias, famílias, capacidades possíveis e tipos de agentes | Claro |
| AGENT_REGISTRY | Define agentes formalmente reconhecidos, IDs, versões, estados, responsáveis e governança | Claro |
| Documento do Agente | Define missão, responsabilidades, limites, capacidades, restrições e critérios operacionais | Claro |
| AGENT_TEMPLATE | Estrutura o documento individual do agente | Claro |
| AGENT_PLAYBOOK_TEMPLATE | Estrutura fluxos operacionais reutilizáveis que agentes podem executar | Claro |

O documento declara corretamente que uma entrada no catálogo não significa que o agente exista oficialmente. Essa distinção é essencial e está bem posicionada.

## 3. Compatibilidade

### AGENT_FRAMEWORK_MODEL

Compatível. O registro reforça menor privilégio, supervisão, owner, status, suspensão, ativação, evidências e governança humana.

### AGENT_CATALOG

Compatível. O registro não duplica o catálogo; ele usa o catálogo como fonte conceitual e adiciona reconhecimento formal.

### AGENT_TEMPLATE

Compatível. O registro exige documento individual, owner, aprovador, escopo, limitações e risco antes de aprovação.

### AGENT_PLAYBOOK_TEMPLATE

Compatível. O registro exige Playbook aprovado para agente `Active` e deixa claro que execuções específicas não pertencem ao registro.

### PLATFORM_MODEL

Compatível. O registro mantém separação entre KEP, produtos, governança, AI e documentação.

### KNOWLEDGE_SYSTEM_MODEL

Compatível. O registro funciona como conhecimento referencial e governança operacional, sem substituir Playbooks, templates ou documentos individuais.

### KEP_MASTER_ROADMAP

Compatível. O registro materializa componente futuro previsto no AI Framework e permanece independente de fornecedor.

### KES-0000

Compatível. A KEP permanece proprietária, interna e separada dos produtos consumidores.

### KES-0001

Compatível. O registro respeita rastreabilidade, IA supervisionada, propriedade intelectual, separação entre plataforma e produto, validação e governança proporcional.

### Policies aplicáveis

Compatível. O documento referencia classificação, segurança, propriedade intelectual, ambientes e restrições sem relativizar Policies.

## 4. Single Source of Truth

O registro funciona como fonte única de verdade para confirmar existência formal, status, versão, owner, aprovador, documentos e governança de um agente.

Ponto forte: a matriz oficial é explicitamente o local onde agentes reais serão registrados.

Lacuna: para escala futura, a fonte única de verdade em Markdown pode ficar frágil. O próprio documento prevê YAML/JSON e validação automática, mas ainda não define um identificador ou regra de sincronização futura entre Markdown e formato estruturado.

## 5. Lifecycle do agente

O lifecycle está claro:

```text
Proposed → Draft → Review → Approved → Active → Suspended → Deprecated → Archived
```

Cada estado possui definição compreensível. A separação entre `Approved` e `Active` está especialmente bem feita e evita ativação prematura.

## 6. Transições de status

A matriz de transições é boa.

Pontos fortes:

- ativação exige critérios claros;
- suspensão registra motivo e evidência;
- reativação exige nova avaliação;
- arquivamento é definitivo salvo exceção formal;
- `Deprecated` não recebe novas funcionalidades;
- `Archived` não executa.

Transições potencialmente ambíguas:

- `Deprecated → Archived` está clara, mas falta campo obrigatório para data de arquivamento.
- `Active → Deprecated` cobre substituição/transição, mas falta campo de motivo da substituição.
- `Archived` não possui transição de retorno, o que é bom, mas a exceção formal poderia exigir ADR ou decisão governada.

Não há transição perigosamente permissiva.

## 7. Critérios de aprovação

Os critérios para `Approved` são suficientes para aprovação documental.

Incluem:

- ID oficial;
- documento individual;
- owner;
- aprovador;
- escopo;
- limitações;
- classificação;
- risco;
- produtos compatíveis;
- revisão arquitetural;
- validações documentais;
- histórico inicial.

Melhoria: exigir referência ao catálogo de origem ou justificativa para agente fora de catálogo.

## 8. Critérios de ativação

Os critérios de ativação impedem ativação prematura.

Um agente `Active` necessariamente exige:

- status `Approved`;
- owner ativo;
- versão definida;
- Playbook aprovado;
- permissões explícitas;
- ambientes permitidos;
- limites operacionais;
- evidências de validação;
- supervisão;
- critérios de suspensão;
- aceite humano responsável.

Isso cobre owner, documento, playbook aprovado, aprovação e risco classificado.

Lacuna: a lista não repete explicitamente "documento do agente aprovado", embora isso esteja implícito no status `Approved`.

## 9. Governança

A governança está clara e separa bem:

- Arquitetura;
- Engenharia;
- Segurança;
- Governança;
- Produto;
- Operações;
- Auditoria.

Ponto forte: o documento diferencia responsabilidade documental, operacional, aprovação e uso em produto.

Lacuna: não há regra de segregação para agente de alto ou crítico risco, como exigir que aprovador não seja o único executor ou owner quando houver conflito de interesse.

## 10. Identificação e imutabilidade

O padrão `AGT-<DOMINIO>-<NUMERO>` é claro.

O documento protege:

- unicidade de ID;
- não reutilização;
- preservação em agentes arquivados;
- mudança de nome sem alteração de ID;
- substituto com novo ID;
- aliases sem substituir nome oficial.

Essa parte está forte.

## 11. Substituição e arquivamento

Substituições estão tratadas, mas podem ser mais completas.

Pontos presentes:

- agentes substitutos devem receber novo ID;
- substituições devem apontar para novo agente;
- dependências devem ser identificadas;
- produtos consumidores devem receber plano de transição;
- agentes arquivados permanecem rastreáveis.

Campos faltantes:

- data de arquivamento;
- motivo da substituição;
- referência ao agente sucessor;
- data de descontinuação;
- plano de transição;
- impacto em produtos consumidores.

## 12. Matriz oficial do registro

A matriz oficial está correta como versão inicial vazia.

Ela contém campos essenciais:

- Agent ID;
- Nome;
- Categoria;
- Status;
- Versão;
- Classificação;
- Risco;
- Owner;
- Documento;
- Playbooks;
- Produtos;
- Última revisão.

A ausência de agentes concretos está claramente justificada e é arquiteturalmente correta nesta fase.

Lacunas para uso real:

- falta Aprovador;
- falta Próxima revisão;
- falta Ambientes;
- falta Data de ativação;
- falta Agente substituto;
- falta Evidência da alteração mais recente;
- falta Criticidade operacional.

Esses campos estão listados na seção 6, mas não aparecem na matriz oficial. Isso cria desalinhamento entre "campos obrigatórios" e "matriz pronta para uso".

## 13. Duplicação de templates

O documento evita duplicação excessiva.

Ele não reescreve missão, permissões detalhadas, critérios operacionais ou Playbooks. Apenas referencia esses artefatos e define relação com eles.

Há alguma repetição saudável de regras críticas, como não ativar sem owner ou Playbook aprovado.

## 14. Relação com Playbooks

Clara e adequada.

O registro declara:

- agentes executam Playbooks;
- Playbooks não criam agentes;
- Playbooks não concedem permissões;
- somente Playbooks aprovados podem ser associados a agentes `Active`;
- execuções específicas não pertencem ao registro.

Isso está alinhado ao template de Playbook.

## 15. Relação com produtos

Clara e adequada.

O documento preserva:

- compatibilidade sem autorização automática;
- regras locais do produto;
- permissões por contexto;
- identidade do agente controlada pela KEP;
- especializações rastreáveis;
- separação de código, dados, configurações e segredos de produto.

AutoBody ERP fica corretamente como produto consumidor.

## 16. Relação com ambientes

Boa.

Ambientes modelados:

- local;
- desenvolvimento;
- teste;
- homologação;
- staging;
- produção;
- ambiente restrito;
- ambiente externo.

O documento reforça que autorização é específica por ambiente e que produção exige controles adicionais.

Lacuna: ambientes permitidos aparecem como campo obrigatório, mas não há matriz por ambiente na entrada oficial.

## 17. Matriz de riscos

A matriz de riscos é adequada para primeira versão.

Pontos fortes:

- quatro níveis claros;
- relaciona risco a permissões, dados, ambientes, reversibilidade, impacto, supervisão e evidências;
- bloqueia operação de alto/crítico risco sem owner, Playbook, validação e autorização.

Lacuna: falta campo separado de criticidade operacional, que pode ser diferente do risco. Exemplo: um agente de baixo risco funcional pode ser operacionalmente crítico para uma rotina repetitiva.

## 18. Auditoria e integridade

As regras de auditoria cobrem:

- revisões vencidas;
- owners ausentes;
- documentos inexistentes;
- Playbooks inválidos;
- agentes ativos sem evidência operacional;
- permissões expiradas;
- produtos incompatíveis;
- agentes suspensos ainda em uso;
- agentes `Deprecated` recebendo funcionalidades;
- agentes `Archived` referenciados operacionalmente.

Os controles de integridade cobrem:

- IDs duplicados;
- agentes ativos sem owner;
- documentos inexistentes;
- Playbooks não aprovados;
- versões inconsistentes;
- status incompatíveis;
- ambientes não autorizados;
- produtos inexistentes;
- remoção de histórico;
- alterações sem evidência.

Boa cobertura.

## 19. Versionamento

O versionamento está claro em conceito:

- versão do documento do agente;
- versão da implementação;
- versão do registro;
- compatibilidade entre versões;
- mudanças maiores, menores e corretivas;
- quando nova revisão é exigida;
- quando novo ID é necessário.

Lacuna: não define formato de versão recomendado nem como representar múltiplas versões no registro quando documento, implementação e registro divergem.

## 20. Preparação para automação

O documento está preparado conceitualmente para automação futura:

- prevê YAML/JSON;
- validação automática;
- dashboards;
- CI;
- alertas;
- incidentes;
- métricas;
- compatibilidade;
- auditoria;
- assinatura ou hash.

Lacuna: para centenas de agentes, a matriz Markdown será difícil de manter manualmente. O documento deveria declarar que Markdown é representação inicial e que formato estruturado poderá se tornar fonte operacional validável.

## 21. Sustentabilidade para centenas de agentes

Sustentabilidade conceitual: boa.

Sustentabilidade operacional em Markdown: moderada.

Riscos em escala:

- matriz muito larga;
- revisão manual de IDs;
- referências quebradas;
- dificuldade de auditar status e datas;
- divergência entre documentos e registro;
- difícil geração de dashboards.

Mitigação futura: formato estruturado, validação automática e checks de CI.

## 22. Burocracias desnecessárias

Não há burocracia excessiva para agentes reais que possam executar tarefas com risco.

Possível excesso: exigir muitos campos para agentes `Proposed` pode ser pesado, mas o documento permite `A definir`, `Não aplicável` e `Pendente` com justificativa. Isso reduz o problema.

## 23. Lacunas de governança

- Falta regra explícita de segregação de funções para agentes de alto ou crítico risco.
- Falta indicar autoridade exigida para exceção formal de arquivamento.
- Falta campo de criticidade operacional.
- Falta regra para revisão extraordinária após incidente grave ou mudança de Policy.
- Falta regra explícita para congelar capacidades durante `Suspended` e `Deprecated`, além de não receber novas funcionalidades.

## 24. Riscos arquiteturais

### Matriz oficial desalinhada

A seção 6 lista campos obrigatórios que não aparecem na matriz oficial pronta para uso.

### Escala manual

Markdown pode virar gargalo para dezenas ou centenas de agentes.

### Arquivamento incompleto

Sem data de arquivamento e sucessor explícito na matriz, histórico pode ficar menos auditável.

### Confusão entre risco e criticidade

Risco e criticidade operacional são relacionados, mas não equivalentes.

## 25. Aderência aos princípios da KEP

| Princípio | Avaliação |
| --- | --- |
| Rastreabilidade | Forte |
| Separação de responsabilidades | Forte |
| Independência de fornecedor | Forte |
| Auditabilidade | Forte |
| Evolução incremental | Forte |

O documento respeita a arquitetura da KEP e não cria dependência de tecnologia específica.

## 26. Diagramas ASCII

Os diagramas são claros.

Cobrem:

- relação entre artefatos;
- lifecycle do agente;
- ativação;
- suspensão;
- arquivamento.

Ponto de melhoria: o diagrama de relação poderia deixar claro que catálogo não cria agente oficial por si só, mas o texto já cobre isso.

## 27. Exemplo ilustrativo

O exemplo está claramente marcado como:

- EXEMPLO;
- NÃO NORMATIVO;
- NÃO APROVADO;
- SOMENTE REFERÊNCIA.

Ele não usa nomes reais de agentes planejados e não registra agente concreto na matriz oficial.

## 28. Pontos fortes

- Boa distinção entre catálogo, registro, documento individual e templates.
- Registro funciona como fonte oficial de verdade.
- Lifecycle claro e compatível com governança.
- Critérios de ativação evitam operação prematura.
- IDs protegidos contra reutilização.
- Agentes arquivados permanecem rastreáveis.
- Playbooks e produtos bem delimitados.
- Auditoria e integridade bem cobertas.
- Matriz oficial vazia justificada corretamente.
- Exemplo ilustrativo bem identificado.
- Documento independente de fornecedor.

## 29. Pontos fracos

- Matriz oficial não inclui todos os campos obrigatórios.
- Falta data de arquivamento.
- Falta motivo da substituição.
- Falta referência explícita ao agente sucessor.
- Falta criticidade operacional.
- Falta regra explícita de segregação de funções para alto/crítico risco.
- Sustentabilidade em Markdown é limitada para muitos agentes.
- Versionamento poderia ter formato recomendado.

## 30. Inconsistências

Inconsistência principal:

- a seção 6 define campos obrigatórios que a matriz oficial da seção 22 não contém.

Inconsistências leves:

- `Agente substituto` aparece como campo obrigatório, mas na seção de descontinuação o termo usado é substituição para novo agente; recomenda-se padronizar como `Agente sucessor`.
- `Classificação` pode ser confundida com classificação da informação; o documento explica a diferença, mas a matriz poderia usar `Classificação operacional`.

## 31. Ajustes obrigatórios antes do commit

1. Alinhar a matriz oficial aos campos obrigatórios mínimos, adicionando:
   - Aprovador;
   - Próxima revisão;
   - Ambientes;
   - Data de ativação;
   - Data de arquivamento;
   - Agente sucessor;
   - Motivo da substituição ou arquivamento;
   - Evidência da alteração mais recente;
   - Criticidade operacional.
2. Adicionar campo ou regra para `Criticidade operacional`, separado de `Nível de risco`.
3. Adicionar regra explícita de segregação de funções para agentes de risco alto ou crítico.
4. Definir que exceção formal para reabrir agente `Archived` exige decisão governada, registro explícito e justificativa forte.
5. Padronizar o termo `Agente substituto` ou `Agente sucessor` em todo o documento.
6. Declarar que Markdown é a representação inicial do registro e que formato estruturado futuro poderá se tornar fonte operacional validável, sem mudar a governança.

## 32. Melhorias recomendadas para versões futuras

- Criar schema YAML/JSON do registro.
- Criar validação automática de IDs únicos.
- Criar check para documentos e Playbooks existentes.
- Criar dashboard de status, revisão e risco.
- Criar alertas para revisão vencida.
- Criar integração com incidentes.
- Criar trilha de auditoria automatizada.
- Criar relatório de agentes por produto e ambiente.
- Criar matriz separada de compatibilidade agente-produto-ambiente.
- Criar política de segregação detalhada para agentes críticos.

## 33. Decisão

**Aprovar com ajustes.**

Justificativa: o registro está arquiteturalmente correto e compatível com a KEP, mas precisa corrigir lacunas de matriz, arquivamento, sucessão, criticidade operacional e governança para escala antes do commit.

## 34. Nota geral

**8,5 / 10**

A nota reflete alta maturidade conceitual e boa governança inicial, com lacunas operacionais relevantes mas bem delimitadas.

## 35. Conclusão

O `AGENT_REGISTRY.md` é uma boa fundação para o registro oficial de agentes da KDEVY.

Após os ajustes obrigatórios, deve ficar adequado para servir como fonte oficial de verdade em fase inicial, preservando caminho claro para automação futura e escala para múltiplos agentes, produtos e ambientes.
