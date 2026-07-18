# Framework Oficial de Validação da KDEVY Engineering Platform

## 1. Controle documental

| Campo | Valor |
| --- | --- |
| Documento | VALIDATION_FRAMEWORK |
| Versão | 0.1.1 |
| Status | Draft |
| Classificação | Interno |
| Domínio | Governance, Engineering, Architecture e Quality |
| Owner | Governança da KEP |
| Aprovador | A definir pela governança da KEP |
| Última revisão | 2026-07-18 |
| Próxima revisão | A definir pela governança da KEP |
| Referências normativas | `architecture/REVIEW_FRAMEWORK.md`, `architecture/AGENT_FRAMEWORK_MODEL.md`, `architecture/AGENT_REGISTRY.md`, `architecture/AGENT_INCIDENT_REGISTER.md`, `architecture/AGENT_METRICS_MODEL.md`, `templates/AGENT_TEMPLATE.md`, `templates/AGENT_PLAYBOOK_TEMPLATE.md`, `architecture/PLATFORM_MODEL.md`, `architecture/KNOWLEDGE_SYSTEM_MODEL.md`, `architecture/KEP_MASTER_ROADMAP.md`, `specifications/KES-0000_MASTER_SPECIFICATION.md`, `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md`, `governance/`, `policies/`, `roadmap/` |
| Histórico | Versão 0.1.1 com ajustes pós-revisão arquitetural aplicados ao Framework Oficial de Validação da KEP. |

## 2. Objetivo

Este documento define o Framework Oficial de Validação da KDEVY Engineering Platform (KEP).

O framework estabelece como verificar, de forma objetiva e baseada em evidências, se um artefato atende aos requisitos obrigatórios para avançar no ciclo de governança.

O `VALIDATION_FRAMEWORK` responde:

> O artefato atende, com evidências verificáveis, aos critérios obrigatórios para prosseguir?

O framework:

- valida conformidade objetiva;
- verifica evidências;
- confirma requisitos obrigatórios;
- registra resultados verificáveis;
- NÃO substitui revisão técnica;
- NÃO substitui decisão de entrega.

## 3. Fronteiras

O `REVIEW_FRAMEWORK` avalia se o artefato possui qualidade suficiente para prosseguir.

O `VALIDATION_FRAMEWORK` verifica se requisitos obrigatórios foram atendidos com evidências rastreáveis.

O `DELIVERY_FRAMEWORK` futuro deverá definir se um artefato pode ser publicado, entregue, ativado ou liberado.

```text
REVIEW_FRAMEWORK
   responde: qualidade suficiente?
        ↓
VALIDATION_FRAMEWORK
   responde: requisitos obrigatórios atendidos?
        ↓
DELIVERY_FRAMEWORK futuro
   responde: pode entregar, publicar ou ativar?
```

Validação NÃO é revisão técnica. Validação também NÃO é entrega.

## 4. Escopo

Este framework se aplica, no mínimo, à validação de:

- documentos;
- especificações;
- Policies;
- templates;
- modelos arquiteturais;
- agentes;
- Playbooks;
- registros;
- frameworks;
- arquitetura;
- documentação técnica;
- evidências associadas.

Fora do escopo:

- revisar qualidade subjetiva ou técnica em profundidade;
- autorizar publicação, entrega, ativação ou release;
- criar código;
- criar automações;
- criar dashboards;
- definir processo de entrega;
- substituir owners humanos;
- substituir auditoria formal quando exigida por governança específica.

## 5. Princípios

### 5.1 Objetividade

Validação DEVE verificar critérios definidos e evidências observáveis.

### 5.2 Reprodutibilidade

Uma validação DEVE poder ser repetida por outro validador com resultado compatível quando as mesmas evidências e critérios forem usados.

### 5.3 Evidência antes de aceite

Todo resultado DEVE ser suportado por evidência rastreável. Confiança pessoal NÃO substitui evidência.

### 5.4 Auditabilidade

Validações DEVEM registrar escopo, critérios, evidências, exceções, não conformidades, responsáveis e decisão.

### 5.5 Rastreabilidade

Critérios, evidências, exceções e não conformidades DEVEM apontar para suas fontes.

### 5.6 Proporcionalidade ao risco

O esforço de validação DEVE ser proporcional ao risco, impacto, criticidade, classificação da informação e permanência do artefato.

### 5.7 Independência de fornecedor

O framework NÃO DEVE depender de ferramenta, linguagem, provedor, plataforma, dashboard ou pipeline específico.

### 5.8 Conformidade governada

Validação DEVE confirmar requisitos obrigatórios sem alterar esses requisitos por conveniência.

## 5.9 Tipos de validação

Uma validação PODE combinar múltiplos tipos. Os tipos escolhidos DEVEM ser proporcionais ao risco, impacto, contexto e natureza do artefato. Tipos omitidos quando razoavelmente aplicáveis DEVEM possuir justificativa.

| Tipo | Avalia |
| --- | --- |
| Validação documental | Estrutura, campos obrigatórios, referências, versionamento, histórico e completude documental verificável. |
| Validação técnica | Evidências técnicas, testes, comandos, logs, critérios técnicos obrigatórios e viabilidade verificável. |
| Validação arquitetural | Aderência objetiva a modelos, fronteiras, dependências e decisões arquiteturais aceitas. |
| Validação de segurança | Controles, classificação, permissões, exposição de dados, segredos, superfícies de ataque e segregação de funções. |
| Validação de governança | Ownership, aprovações, auditoria, rastreabilidade, exceções, status e aderência a Policies e KES aplicáveis. |
| Validação de IA/agente | Limites de autonomia, evidências, registro, permissões, Playbooks, riscos e integração com governança de agentes. |
| Validação de produto | Baseline, impacto, dependências, regras locais, evidências e separação entre KEP e produto consumidor. |
| Validação operacional | Execução, continuidade, ambiente, procedimentos, evidências operacionais e critérios de aceite executáveis. |

## 5.10 Níveis de profundidade

A profundidade da validação DEVE ser definida durante a preparação e ser compatível conceitualmente com o `REVIEW_FRAMEWORK`.

| Profundidade | Uso esperado | Características |
| --- | --- | --- |
| Leve | Artefatos simples, baixo risco e escopo limitado | Poucos requisitos, evidências proporcionais e validação direta. |
| Padrão | Maioria das validações regulares | Requisitos aplicáveis, evidências formais, checklist completo aplicável e decisão documentada. |
| Completa | Artefatos normativos, estruturais, críticos ou de impacto relevante | Múltiplos tipos, evidências reforçadas, análise de dependências, risco e rastreabilidade ampliada. |
| Extraordinária | Incidente relevante, mudança sistêmica, exceção crítica, conflito normativo, segurança ou alta criticidade | Escopo formal, múltiplos validadores, arbitragem possível, evidências reforçadas e governança ampliada. |

É proibido reduzir a profundidade apenas para acelerar avanço.

## 6. Processo de validação

O fluxo mínimo de validação é:

```text
Artefato
    │
    ▼
Preparação
    │
    ▼
Coleta de Evidências
    │
    ▼
Validação
    │
    ▼
Consolidação
    │
    ▼
Decisão
```

### 6.1 Artefato

O artefato DEVE estar identificado, versionado ou referenciado de forma verificável.

### 6.2 Preparação

A preparação DEVE identificar:

- artefato;
- versão ou referência verificável;
- escopo da validação;
- requisitos obrigatórios;
- requisitos condicionais;
- critérios de não aplicabilidade;
- tipo ou tipos de validação;
- profundidade;
- documentos normativos relacionados;
- responsáveis;
- risco preliminar;
- evidências esperadas.

### 6.3 Coleta de evidências

A coleta DEVE reunir evidências suficientes para confirmar ou negar atendimento aos critérios aplicáveis.

Evidências ausentes DEVEM ser registradas. Evidência sensível DEVE respeitar classificação da informação, propriedade intelectual e controles de acesso.

### 6.4 Validação

A validação DEVE comparar cada requisito aplicável contra evidências verificáveis.

O validador DEVE separar:

- requisito atendido;
- requisito não atendido;
- requisito condicional;
- requisito não aplicável;
- requisito com exceção formal;
- evidência insuficiente.

### 6.5 Consolidação

A consolidação DEVE organizar resultados, exceções, não conformidades, riscos residuais e condição para avanço.

### 6.6 Decisão

A decisão DEVE usar somente os resultados permitidos neste framework.

Decisão de validação NÃO autoriza entrega por si só.

## 6.7 Cadeia formal da validação

Validação DEVE diferenciar explicitamente os elementos abaixo:

```text
Requisito
    ↓
Critério de aceitação
    ↓
Método de verificação
    ↓
Evidência
    ↓
Resultado
```

| Elemento | Definição |
| --- | --- |
| Requisito | Obrigação, regra ou condição que deve ser atendida. |
| Critério de aceitação | Condição objetiva que demonstra atendimento ao requisito. |
| Método de verificação | Forma usada para avaliar o critério, como inspeção, teste, conferência documental, comparação, execução ou auditoria. |
| Evidência | Registro, artefato ou resultado rastreável obtido pelo método de verificação. |
| Resultado | Conclusão da validação após avaliar requisito, critério, método e suficiência das evidências. |

Evidência NÃO substitui critério. Requisito NÃO é método. Resultado depende da suficiência das evidências.

## 7. Critérios de validação

| Tipo | Definição | Regra |
| --- | --- | --- |
| Obrigatório | Requisito que deve ser atendido integralmente | DEVE possuir evidência de atendimento ou resultar em não conformidade |
| Condicional | Requisito aplicável apenas quando determinada condição existir | DEVE registrar condição, aplicabilidade e evidência |
| Não aplicável (N/A) | Requisito que não se aplica ao artefato validado | DEVE possuir justificativa documentada |

N/A sem justificativa é inválido. Requisito obrigatório não atendido NÃO DEVE ser reclassificado como N/A para permitir avanço.

Todo N/A DEVE possuir:

- justificativa;
- responsável;
- evidência;
- motivo objetivo;
- possibilidade de auditoria.

N/A NÃO DEVE ser usado para eliminar requisito obrigatório, encobrir evidência ausente ou acelerar avanço.

## 8. Evidências aceitas

Evidências aceitas PODEM incluir:

- documentos;
- especificações;
- registros;
- métricas;
- relatórios;
- testes;
- logs;
- artefatos produzidos;
- registros de auditoria;
- referências normativas;
- diffs;
- comandos executados;
- resultados de validação automatizada futura;
- aprovações formais;
- exceções formais.

Toda decisão DEVE ser suportada por evidências rastreáveis.

Evidências DEVEM registrar, quando aplicável:

- origem;
- autoria;
- versão;
- data;
- responsável;
- local;
- método de obtenção;
- limitação;
- integridade;
- validade;
- retenção;
- acessibilidade;
- confiabilidade;
- classificação da informação;
- relação com o requisito validado.

### 8.1 Classificação das evidências

Evidências DEVEM ser classificadas quando a distinção afetar confiança, suficiência ou auditabilidade.

| Classe | Definição |
| --- | --- |
| Direta | Demonstra o requisito sem depender de inferência relevante. |
| Indireta | Apoia a conclusão, mas depende de interpretação ou evidência complementar. |
| Primária | Fonte original ou mais próxima do evento, artefato ou resultado validado. |
| Secundária | Derivação, resumo, relatório ou cópia de evidência primária. |
| Manual | Obtida por inspeção, conferência ou registro humano. |
| Automatizada | Produzida por ferramenta, teste, pipeline, script ou sistema autorizado. |
| Interna | Produzida dentro da KEP, produto consumidor ou ambiente controlado. |
| Externa | Produzida por fonte externa, fornecedor, integração ou sistema fora da governança direta da KEP. |

Diferentes classes possuem níveis diferentes de confiança. Evidência indireta, secundária, manual ou externa PODE exigir evidência complementar conforme risco.

### 8.2 Suficiência das evidências

Validação DEVE diferenciar:

| Situação | Definição | Uso |
| --- | --- | --- |
| Evidência existente | Há algum artefato ou registro disponível | Não comprova conformidade sozinha |
| Evidência válida | A evidência é íntegra, atual, acessível e relacionada ao escopo | Pode apoiar validação |
| Evidência relevante | A evidência se relaciona diretamente ao requisito ou critério avaliado | Pode compor conclusão |
| Evidência suficiente | A evidência cobre o requisito com qualidade, atualidade e confiabilidade proporcionais ao risco | Pode sustentar resultado |

Documentos existentes NÃO comprovam automaticamente conformidade. Suficiência DEVE considerar cobertura, qualidade, atualidade e confiabilidade.

## 9. Resultado da validação

São permitidos apenas três resultados:

| Resultado | Critério objetivo | Condição para avanço |
| --- | --- | --- |
| Conforme | Todos os requisitos obrigatórios aplicáveis foram atendidos com evidências suficientes e não há exceções abertas que bloqueiem avanço | Pode avançar para a próxima etapa aplicável |
| Conforme com exceções formais | Há requisitos não atendidos ou parcialmente atendidos cobertos por exceções formais aprovadas, rastreáveis, vigentes e com risco residual registrado | Pode avançar apenas dentro das condições e prazos da exceção |
| Não conforme | Um ou mais requisitos obrigatórios aplicáveis não foram atendidos, evidências são insuficientes ou exceções estão ausentes, vencidas ou inválidas | Não pode avançar até correção, revalidação ou exceção formal aprovada |

Exceções:

- DEVEM ser aprovadas formalmente;
- DEVEM possuir prazo;
- DEVEM registrar risco residual;
- DEVEM ser rastreáveis;
- NÃO alteram os requisitos obrigatórios.

### 9.1 Matriz de avanço

| Cenário | Pode avançar? | Condição | Autoridade | Risco residual |
| --- | --- | --- | --- | --- |
| Conforme | Sim, para a próxima etapa aplicável | Evidências suficientes e requisitos aplicáveis atendidos | Autoridade da etapa seguinte | Registrado quando existir |
| Conforme com exceções formais | Sim, condicionado | Exceção formal aprovada, vigente, rastreável e com prazo | Aprovador compatível com o risco e autoridade da etapa seguinte | Obrigatório |
| Não conforme | Não | Correção, revalidação ou exceção formal aprovada | Governança ou autoridade aplicável | Deve ser registrado se houver |
| Evidência insuficiente | Não | Complementação de evidências e nova avaliação | Validador e governança quando aplicável | Indeterminado até nova evidência |
| Exceção pendente | Não | Aprovação formal da exceção ou correção do requisito | Aprovador da exceção | Deve ser analisado antes de avanço |
| N/A contestado | Não | Resolução da contestação, evidência e decisão registrada | Validador, governança ou autoridade proporcional ao risco | Deve ser registrado se houver |

Validação NÃO autoriza automaticamente entrega, publicação, ativação ou release.

## 10. Papéis e responsabilidades

| Papel | Responsabilidades | Limites |
| --- | --- | --- |
| Autor | Produzir o artefato, disponibilizar contexto e fornecer evidências iniciais | Não deve validar sozinho o próprio artefato quando houver risco relevante |
| Validador | Verificar critérios, evidências, exceções, N/A e não conformidades | Não substitui revisor técnico nem autoridade de entrega |
| Arquitetura | Confirmar requisitos arquiteturais objetivos quando aplicáveis | Não substitui validação completa de segurança, produto ou entrega |
| Engenharia | Confirmar evidências técnicas, testes, logs, comandos ou critérios técnicos obrigatórios | Não deve aceitar evidência ausente por conveniência |
| Governança | Garantir processo, rastreabilidade, exceções, responsáveis, versionamento e status | Não deve transformar exceção em regra permanente |
| Auditoria | Verificar integridade da validação, evidências, exceções, N/A e reuso de validações | Não substitui o validador durante execução normal |

Quem produz evidências NÃO deve ser a única pessoa ou função a validá-las quando o artefato tiver risco alto, crítico, normativo ou impacto relevante.

### 10.1 Independência

A validação DEVE preservar segregação entre:

- quem produz evidência;
- quem valida;
- quem aprova exceção.

Regras:

- autor não deve ser o único validador do próprio artefato;
- conflitos de interesse DEVEM ser registrados;
- casos críticos exigem independência reforçada;
- evidências produzidas por agente de IA, automação ou autor do artefato DEVEM ser avaliadas por validador autorizado quando houver risco relevante;
- em equipes pequenas, limitações de independência DEVEM ser registradas e compensadas por controles proporcionais.

### 10.2 Múltiplos validadores e arbitragem

Múltiplos validadores são obrigatórios ou recomendados quando houver:

- segurança;
- IA;
- arquitetura;
- governança;
- mudanças sistêmicas;
- alto risco;
- conflitos de interesse;
- validação extraordinária.

Processo de arbitragem:

1. registrar pareceres separadamente;
2. comparar requisitos, critérios, métodos e evidências;
3. identificar divergências;
4. buscar consenso técnico fundamentado;
5. acionar autoridade de arbitragem quando necessário;
6. registrar decisão, justificativa, autoridade e riscos residuais;
7. preservar divergências relevantes.

Votação simples NÃO substitui análise técnica.

## 11. Exceções formais

Exceção formal permite avanço condicionado quando um requisito obrigatório não está integralmente atendido, sem alterar o requisito original.

### 11.1 Solicitação

A solicitação DEVE registrar:

- requisito afetado;
- motivo;
- escopo;
- impacto;
- risco residual;
- evidências disponíveis;
- prazo solicitado;
- responsável;
- plano de correção ou encerramento.

### 11.2 Análise

A análise DEVE avaliar:

- risco;
- impacto;
- alternativa;
- prazo;
- compensações;
- dependências;
- relação com Policies, KES e governança aplicável.

### 11.3 Aprovação

A aprovação DEVE ser formal, rastreável e realizada por autoridade compatível com o risco.

### 11.4 Vigência

Toda exceção DEVE possuir início, prazo, escopo e condição de expiração.

### 11.5 Renovação

Renovação exige nova análise, justificativa, risco residual atualizado e aprovação formal.

### 11.6 Encerramento

Exceção deve ser encerrada quando:

- requisito for atendido;
- artefato deixar de existir;
- risco se tornar inaceitável;
- prazo expirar sem renovação aprovada;
- decisão de governança revogar a exceção.

Exceção vencida ou sem rastreabilidade torna o resultado `Não conforme`.

## 12. Não conformidades

Não conformidade é falha em atender requisito obrigatório aplicável, ausência de evidência suficiente ou uso inválido de exceção ou N/A.

Níveis formais:

| Nível | Definição |
| --- | --- |
| Crítica | Bloqueia avanço por impacto alto, risco sistêmico, violação relevante, segurança, governança normativa ou risco residual inaceitável. |
| Alta | Bloqueia avanço até correção, exceção formal ou decisão proporcional ao risco. |
| Moderada | Pode bloquear avanço conforme contexto, recorrência, abrangência ou dependência. |
| Baixa | Deve ser registrada e tratada, mas normalmente não bloqueia avanço sozinha. |

A classificação DEVE considerar impacto, risco, abrangência, recorrência e risco residual.

Tratamento mínimo:

| Etapa | Regra |
| --- | --- |
| Identificação | Registrar requisito, evidência ausente ou falha observada |
| Classificação | Classificar impacto, risco, criticidade e bloqueio |
| Registro | Registrar responsável, data, fonte e evidências |
| Correção | Definir ação corretiva ou exceção formal quando aceitável |
| Revalidação | Verificar evidência da correção |
| Encerramento | Encerrar somente com evidência suficiente ou decisão formal |

Quando a não conformidade indicar falha real, risco material, near miss, incidente, violação de Policy ou problema recorrente, ela DEVE ser relacionada ao `architecture/AGENT_INCIDENT_REGISTER.md` conforme aplicabilidade.

Não conformidade NÃO DEVE ser ignorada para permitir avanço.

## 13. Revalidação

Revalidação DEVE ocorrer:

- após correções;
- após mudanças relevantes no artefato;
- após atualização normativa;
- após expiração de exceções;
- após incidentes relacionados;
- após nova evidência relevante;
- após alteração de risco;
- após mudança de dependência;
- após mudança de contexto operacional;
- após mudança de evidência, versão, escopo ou requisito obrigatório;
- quando a validação anterior for considerada inválida ou insuficiente.

Tipos de revalidação:

| Tipo | Uso |
| --- | --- |
| Completa | Quando escopo, requisitos, evidências, risco ou contexto mudaram de forma ampla ou quando a validação anterior não é mais confiável. |
| Por delta | Quando há mudança delimitada e as partes não alteradas continuam verificáveis e válidas. |
| Extraordinária | Quando houver incidente relevante, risco crítico, exceção crítica, conflito normativo, suspeita de erro material ou determinação de governança. |

Revalidação por delta PODE ocorrer quando:

- a validação anterior permanece rastreável;
- o escopo alterado está claro;
- evidências anteriores continuam válidas;
- não houve mudança normativa incompatível;
- o validador registra limitações.

É proibido reutilizar validação anterior sem confirmar que suas premissas continuam válidas.

## 13.1 Invalidação da validação

Uma validação deixa de ser válida quando ocorrer:

- alteração material;
- mudança arquitetural;
- nova versão incompatível;
- atualização normativa;
- evidência vencida;
- exceção vencida;
- incidente relevante;
- descoberta de erro material.

Também PODE ser invalidada por mudança relevante de ambiente, dependência, risco, escopo, método de verificação ou evidência incorreta.

Invalidação DEVE preservar histórico, motivo, responsável, data, impacto e condição para nova validação.

## 13.2 Validade temporal

Toda validação DEVE registrar:

- data;
- versão do artefato;
- versão dos requisitos quando aplicável;
- versão ou referência das evidências;
- validade;
- gatilhos de expiração;
- gatilhos de revalidação.

A validade depende do risco e do contexto. Validações de maior risco, artefatos críticos, exceções formais, evidências externas ou ambientes mutáveis DEVEM possuir validade mais restrita ou gatilhos de revalidação mais fortes.

## 14. Checklist normativo

Checklist mínimo:

- [ ] Artefato identificado.
- [ ] Versão ou referência verificável registrada.
- [ ] Escopo definido.
- [ ] Requisitos obrigatórios identificados.
- [ ] Requisitos condicionais avaliados.
- [ ] Requisitos N/A justificados.
- [ ] N/A possui responsável, evidência e motivo objetivo.
- [ ] Evidências rastreáveis registradas.
- [ ] Qualidade e suficiência das evidências avaliadas.
- [ ] Evidências suficientes para requisitos obrigatórios.
- [ ] Documentos relacionados identificados.
- [ ] Consistência entre requisito e evidência.
- [ ] Exceções formais registradas quando aplicável.
- [ ] Exceções vigentes e aprovadas quando aplicável.
- [ ] Não conformidades registradas.
- [ ] Riscos residuais registrados.
- [ ] Responsáveis identificados.
- [ ] Registros e versionamento preservados.
- [ ] Condição para avanço definida.

Itens não executados DEVEM possuir justificativa e impacto.

## 15. Modelo normativo de relatório

Todo relatório formal de validação DEVE conter, no mínimo:

| Campo | Descrição |
| --- | --- |
| Validation ID | Identificador único da validação |
| Artefato | Nome, caminho ou ID do artefato validado |
| Versão | Versão, status, hash ou referência verificável |
| Hash quando aplicável | Hash, commit, checksum, snapshot ou referência verificável equivalente |
| Tipo | Tipo ou tipos de validação aplicados |
| Profundidade | Leve, padrão, completa ou extraordinária |
| Risco | Classificação de risco da validação ou artefato |
| Escopo | Escopo incluído e excluído |
| Critérios | Critérios de aceitação avaliados |
| Método | Método de verificação utilizado |
| Requisitos avaliados | Lista de requisitos obrigatórios e condicionais |
| Evidências | Evidências usadas e localização |
| Qualidade das evidências | Cobertura, validade, relevância, atualidade e confiabilidade |
| Requisitos N/A | Itens não aplicáveis com justificativa |
| Justificativas | Justificativas de N/A, ausência de evidência, exceções ou limitações |
| Limitações | Limitações da validação ou das evidências |
| Exceções | Exceções formais, vigência, aprovador e risco residual |
| Não conformidades | Não conformidades identificadas e status |
| Riscos residuais | Riscos aceitos ou pendentes |
| Resultado | Conforme, Conforme com exceções formais ou Não conforme |
| Validade temporal | Data, validade, expiração e gatilhos de revalidação |
| Condição para avanço | Condição objetiva para próxima etapa |
| Independência | Declaração de segregação entre autor, produtor de evidência, validador e aprovador |
| Conflitos | Conflitos de interesse declarados ou ausência deles |
| Responsáveis | Autor, validador, governança e demais responsáveis |
| Data | Data da validação |

Relatórios de validação NÃO DEVEM registrar resultados sem evidências verificáveis.

## 16. Auditoria da validação

Auditoria DEVE permitir identificar:

- validações sem evidências;
- validações incompletas;
- validação sem método;
- validação sem critério;
- evidência insuficiente;
- uso indevido de N/A;
- N/A abusivo;
- exceções vencidas;
- exceções sem aprovador;
- exceções sem prazo;
- validade expirada;
- resultados inconsistentes;
- conflitos de interesse;
- conflitos não declarados;
- validações reutilizadas indevidamente;
- reutilização inválida;
- requisitos obrigatórios ignorados;
- não conformidades sem registro;
- não conformidades encerradas sem revalidação;
- revalidações ausentes após mudança relevante;
- decisões de avanço incompatíveis com resultado.

Auditoria PODE alimentar métricas futuras conforme `architecture/AGENT_METRICS_MODEL.md`.

## 17. Integrações

### 17.1 REVIEW_FRAMEWORK

O `REVIEW_FRAMEWORK` prepara artefatos para validação ao avaliar qualidade, riscos e ajustes necessários.

Validação PODE usar revisão como evidência contextual, mas NÃO deve tratá-la como prova completa de conformidade.

### 17.2 DELIVERY_FRAMEWORK futuro

O `DELIVERY_FRAMEWORK` futuro deverá decidir entrega, publicação, ativação ou release.

Validação conforme NÃO autoriza entrega automaticamente.

### 17.3 AGENT_METRICS_MODEL

Validações PODEM gerar métricas futuras sobre conformidade, exceções, não conformidades, revalidação e qualidade das evidências.

Essas métricas NÃO DEVEM substituir julgamento técnico ou governança.

Métricas futuras PODEM incluir, sem metas numéricas nesta versão:

- tempo médio;
- taxa de não conformidade;
- taxa de exceções;
- taxa de N/A;
- revalidações;
- invalidações;
- divergência entre validadores;
- validações por delta.

Métricas de validação NÃO substituem análise técnica, análise de risco ou decisão governada.

### 17.4 AGENT_INCIDENT_REGISTER

Não conformidades materiais, near misses, violações de Policy, falhas de evidência, incidentes de agente ou riscos relevantes DEVEM ser relacionados ao `AGENT_INCIDENT_REGISTER` quando aplicável.

## 18. Anti-patterns

São proibidos:

- validar sem evidências;
- aprovar por confiança;
- aprovar sem método;
- tratar N/A sem justificativa;
- usar N/A como atalho;
- transformar exceção em permanente;
- reutilizar validação inválida;
- ignorar não conformidades;
- substituir revisão por validação;
- substituir validação por entrega;
- tratar `Conforme` como autorização de entrega;
- registrar resultado conforme com exceção vencida;
- validar escopo diferente do declarado;
- validar versão diferente da declarada;
- aceitar evidência sem fonte;
- confundir documento com prova;
- ignorar validade temporal;
- encerrar não conformidade sem revalidação;
- omitir risco residual;
- avançar artefato `Não conforme` sem correção ou exceção formal.

## 19. Evolução futura

Possibilidades futuras, sem implementação nesta versão:

- automação de validações;
- integração com CI/CD;
- APIs;
- YAML;
- JSON;
- dashboards;
- validações automatizadas;
- policy-as-code;
- evidence-as-code;
- schemas de requisitos;
- trilhas de auditoria estruturadas;
- integração com métricas e incidentes.

Essas evoluções NÃO substituem evidência, governança humana, revisão técnica ou decisão de entrega.

## 20. Diagramas ASCII

### Fluxo de validação

```text
Artefato
    │
    ▼
Preparação
    │
    ▼
Coleta de Evidências
    │
    ▼
Validação
    │
    ▼
Consolidação
    │
    ▼
Decisão
```

### Resultados possíveis

```text
Validação
   │
   ├─ Conforme
   ├─ Conforme com exceções formais
   └─ Não conforme
```

### Exceção formal

```text
Solicitação
    ↓
Análise
    ↓
Aprovação
    ↓
Vigência
    ↓
Renovação ou Encerramento
```

## 21. Histórico

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.1 | 2026-07-18 | Ajustes pós-revisão arquitetural: tipos de validação, níveis de profundidade, cadeia requisito-critério-método-evidência-resultado, controle de N/A, classificação e suficiência das evidências, níveis de não conformidade, invalidação, revalidação completa, por delta e extraordinária, independência, múltiplos validadores, matriz de avanço, validade temporal, relatório expandido, auditoria ampliada, métricas futuras e anti-patterns adicionais. |
| 0.1.0 | 2026-07-18 | Criação inicial do Framework Oficial de Validação da KEP, com processo, critérios, evidências, resultados, papéis, exceções, não conformidades, revalidação, relatório, auditoria, integrações e evolução futura. |
