# Framework Oficial de Entrega da KDEVY Engineering Platform

## 1. Controle documental

| Campo | Valor |
| --- | --- |
| Documento | DELIVERY_FRAMEWORK |
| Versão | 0.1.1 |
| Status | Draft |
| Classificação | Interno |
| Domínio | Governance, Delivery, Architecture e Operations |
| Owner | Governança da KEP |
| Aprovador | A definir pela governança da KEP |
| Última revisão | 2026-07-19 |
| Próxima revisão | A definir pela governança da KEP |
| Referências normativas | `architecture/REVIEW_FRAMEWORK.md`, `architecture/VALIDATION_FRAMEWORK.md`, `architecture/AGENT_FRAMEWORK_MODEL.md`, `architecture/AGENT_REGISTRY.md`, `architecture/AGENT_INCIDENT_REGISTER.md`, `architecture/AGENT_METRICS_MODEL.md`, `templates/AGENT_TEMPLATE.md`, `templates/AGENT_PLAYBOOK_TEMPLATE.md`, `architecture/PLATFORM_MODEL.md`, `architecture/KNOWLEDGE_SYSTEM_MODEL.md`, `architecture/KEP_MASTER_ROADMAP.md`, `specifications/KES-0000_MASTER_SPECIFICATION.md`, `specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md`, `governance/`, `policies/`, `roadmap/` |
| Histórico | Versão 0.1.1 com fechamento corretivo da Wave 6 e aplicação dos ajustes obrigatórios identificados na revisão arquitetural do Delivery Framework. |

## 2. Objetivo

Este documento define o Framework Oficial de Entrega da KDEVY Engineering Platform (KEP).

O framework estabelece o processo normativo para autorização, publicação, disponibilização, ativação operacional governada, registro, rollback e encerramento de um artefato elegível para entrega.

O `DELIVERY_FRAMEWORK` responde:

> O artefato revisado e validado pode ser entregue de forma segura, rastreável e governada?

O framework:

- controla entrega;
- controla entrega operacional;
- controla publicação;
- controla disponibilização;
- controla autorização final;
- controla versionamento;
- controla aprovações finais;
- registra entrega;
- governa suspensão, rollback, reentrega, substituição, invalidação e encerramento;
- preserva rastreabilidade.

O framework NÃO executa revisão e NÃO executa validação.

## 3. Fronteiras

O `REVIEW_FRAMEWORK` avalia qualidade.

O `VALIDATION_FRAMEWORK` verifica conformidade objetiva com evidências.

O `DELIVERY_FRAMEWORK` controla a autorização final, publicação, disponibilização, ativação operacional governada, registro, rollback e encerramento da entrega.

```text
REVIEW_FRAMEWORK
   responde: qualidade suficiente?
        ↓
VALIDATION_FRAMEWORK
   responde: requisitos obrigatórios atendidos?
        ↓
DELIVERY_FRAMEWORK
   responde: pode entregar de forma governada?
```

Entrega NÃO substitui revisão. Entrega NÃO substitui validação.

Review aprovado NÃO autoriza entrega sozinho.

Validation conforme NÃO autoriza entrega sozinho.

## 4. Escopo

Este framework se aplica, no mínimo, à entrega de:

- documentos;
- especificações;
- Policies;
- templates;
- modelos arquiteturais;
- agentes;
- Playbooks;
- registros;
- frameworks;
- artefatos de arquitetura;
- documentação técnica;
- procedimentos, rotinas e ativações operacionais governadas.

Fora do escopo:

- criar código;
- implementar CI/CD;
- definir política específica de versionamento;
- executar revisão;
- executar validação;
- substituir owners humanos;
- definir processo de produto fora da KEP.

### 4.1 Delimitação arquitetural do domínio Delivery

As entidades, campos, estados, transições e fluxos definidos neste documento pertencem ao domínio local de Delivery.

Essas definições existem para tornar o processo de entrega executável, auditável e governável dentro do escopo deste framework.

Elas NÃO constituem modelos globais da KEP para entidades de engenharia, lifecycle, rastreabilidade ou workflow.

Outros domínios NÃO DEVEM reutilizar automaticamente essas definições como padrões universais sem decisão arquitetural própria.

### 4.2 Restrição ao primeiro piloto

O primeiro piloto controlado que usar este framework DEVE operar somente com o subconjunto mínimo necessário:

- artefato;
- versão validada;
- revisão;
- validação;
- aprovação;
- entrega;
- evidência;
- resultado.

Estados, relações, registros e capacidades avançadas previstos neste documento DEVEM permanecer disponíveis para governança, mas DEVEM ser usados no piloto somente quando um caso real demonstrar necessidade concreta.

Esta restrição NÃO reduz os controles obrigatórios aplicáveis ao piloto, como revisão, validação, aprovação, evidência, rastreabilidade e registro de resultado.

A definição deste subconjunto NÃO autoriza por si só abertura de Wave, execução de piloto ou adoção ampla; essas decisões dependem de autorização específica.

### 4.3 Proibição de generalização prematura

Para evitar captura indevida de modelo global:

- estados de Delivery NÃO são automaticamente estados globais de artefatos;
- Delivery ID NÃO é automaticamente um identificador universal de entidade;
- fluxo de Delivery NÃO é automaticamente workflow global da KEP;
- campos de rastreabilidade do Delivery NÃO substituem um futuro modelo de rastreabilidade;
- nenhuma nova abstração global DEVE ser derivada deste framework sem decisão arquitetural própria.

## 5. Princípios

### 5.1 Rastreabilidade

Toda entrega DEVE registrar origem, versão, revisão, validação, aprovação, destino, responsáveis e status.

### 5.2 Auditabilidade

Entrega DEVE preservar evidências suficientes para auditoria futura.

### 5.3 Reprodutibilidade

O processo de entrega DEVE permitir entender o que foi entregue, por quem, com qual versão, a partir de qual revisão e validação.

### 5.4 Segurança

Entrega NÃO DEVE expor segredos, credenciais, dados pessoais, dados financeiros, informação classificada ou código de produto fora do escopo autorizado.

### 5.5 Proporcionalidade ao risco

Quanto maior o risco, impacto, criticidade ou alcance da entrega, maior DEVE ser a exigência de aprovação, evidência, comunicação e plano de rollback.

### 5.6 Governança

Entrega DEVE respeitar Policies, KES, owners, aprovações, exceções formais e limites entre KEP e produtos consumidores.

### 5.7 Independência de fornecedor

O framework NÃO DEVE depender de ferramenta, linguagem, provedor, plataforma de CI/CD ou mecanismo específico de publicação.

## 6. Fluxo de entrega

O fluxo mínimo é:

```text
Artefato elegível
        │
        ▼
Preparação da entrega
        │
        ▼
Delivery Readiness
        │
        ▼
Autorização
        │
        ▼
Execução da entrega
        │
        ▼
Registro e comunicação
        │
        ▼
Encerramento
```

### 6.1 Artefato elegível

Artefato elegível é o artefato que possui revisão concluída, validação aplicável e condição de avanço atendida.

Elegibilidade NÃO equivale a autorização de entrega. A autorização final pertence ao `DELIVERY_FRAMEWORK`.

### 6.2 Preparação da entrega

A preparação DEVE identificar:

- artefato;
- versão entregue pretendida;
- versão validada;
- hash, commit, checksum, snapshot ou referência verificável quando aplicável;
- tipo ou tipos de entrega;
- nível de entrega;
- origem;
- destino;
- revisão utilizada;
- validação utilizada;
- validade da validação;
- exceções formais vigentes;
- alterações materiais ocorridas após validação;
- riscos residuais;
- aceite formal dos riscos residuais;
- responsáveis;
- evidências preservadas;
- comunicação necessária;
- plano de rollback ou justificativa de não aplicabilidade;
- relação com entrega anterior, sucessora ou substituta quando aplicável.

### 6.3 Delivery Readiness

Delivery Readiness é a checagem de prontidão para submissão à autorização final.

Delivery Readiness DEVE confirmar que os pré-requisitos de entrega estão atendidos e que nenhum bloqueio conhecido permanece ativo.

Delivery Readiness NÃO substitui revisão, NÃO substitui validação e NÃO autoriza entrega por si só.

### 6.4 Autorização

A autorização DEVE ser concedida por autoridade compatível com tipo, nível, risco, criticidade, escopo e impacto da entrega.

Autorização DEVE referenciar uma versão específica e verificável do artefato.

### 6.5 Execução da entrega

Entrega é a publicação, disponibilização, ativação documental, ativação operacional governada ou transferência governada do artefato para o destino aprovado.

A execução NÃO DEVE entregar artefato, versão, destino, escopo ou condição diferente do que foi autorizado.

### 6.6 Registro e comunicação

Toda entrega DEVE possuir registro rastreável.

Comunicação obrigatória, quando aplicável, DEVE estar preparada antes da autorização e registrada até o encerramento.

### 6.7 Encerramento

Encerramento confirma que a entrega foi executada ou bloqueada conforme decisão, registrada, comunicada quando aplicável, evidenciada e preservada para auditoria.

Encerramento NÃO apaga estados intermediários, bloqueios, suspensões, substituições, invalidações ou rollback.

## 7. Pré-requisitos e Delivery Readiness

Entrega somente PODE ocorrer quando todos os itens obrigatórios aplicáveis estiverem atendidos:

- revisão concluída;
- validação `Conforme` ou `Conforme com exceções formais`;
- exceções formais aprovadas, vigentes e dentro do escopo, quando existirem;
- evidências preservadas;
- artefato identificado;
- versão entregue definida;
- versão validada definida;
- correspondência entre versão validada e versão entregue confirmada;
- hash, commit, checksum, snapshot ou referência verificável registrado quando aplicável;
- validade da validação confirmada no momento da entrega;
- inexistência de alteração material após validação ou revalidação proporcional concluída;
- responsáveis definidos;
- destino definido;
- tipo ou tipos de entrega definidos;
- nível de entrega definido por critérios objetivos;
- aprovação final compatível com o nível e o risco;
- Communication Readiness atendida quando comunicação for obrigatória;
- Rollback Readiness atendida ou justificativa de não aplicabilidade aprovada;
- riscos residuais registrados e formalmente aceitos por autoridade adequada;
- ausência de bloqueio ativo.

A falta de qualquer item obrigatório aplicável DEVE resultar em entrega bloqueada até correção, revalidação, exceção formal ou decisão governada compatível com o risco.

### 7.1 Delivery Readiness

O registro de Delivery Readiness DEVE declarar, para cada item aplicável:

- status atendido, não atendido ou não aplicável;
- evidência usada;
- responsável;
- data ou timestamp da verificação;
- limitação conhecida;
- condição de desbloqueio quando houver pendência.

Itens não aplicáveis DEVEM possuir justificativa. N/A sem justificativa NÃO é válido.

### 7.2 Communication Readiness

Communication Readiness DEVE confirmar que a comunicação obrigatória está preparada quando a entrega afetar consumidores, owners, agentes, Playbooks, operação, produto, segurança, risco residual, substituição, rollback, vigência normativa ou ação esperada de destinatários.

Communication Readiness DEVE identificar, quando aplicável:

- destinatários;
- canal ou local de comunicação;
- mensagem ou referência comunicável;
- versão entregue;
- versão substituída;
- impacto;
- limitações conhecidas;
- ação esperada;
- data de vigência;
- ponto de contato;
- evidência de preparação.

### 7.3 Rollback Readiness

Rollback Readiness DEVE confirmar que existe caminho de reversão, suspensão, contenção, substituição ou correção compatível com o risco.

Quando rollback não for aplicável, a entrega DEVE registrar justificativa, autoridade que aceitou a não aplicabilidade, riscos residuais e alternativa de contenção quando necessário.

Rollback Readiness obrigatório ausente, não demonstrado ou tratado como N/A sem justificativa DEVE bloquear a entrega.

## 8. Tipos de entrega

| Tipo | Definição |
| --- | --- |
| Publicação documental | Disponibilização de documentação informativa, técnica ou operacional. |
| Publicação arquitetural | Disponibilização de modelos, revisões ou decisões arquiteturais. |
| Publicação normativa | Disponibilização de Policies, KES ou artefatos que criem obrigação. |
| Publicação de templates | Disponibilização de modelos reutilizáveis para documentos, tarefas, agentes ou Playbooks. |
| Publicação de Playbooks | Disponibilização de Playbooks aprovados para uso operacional autorizado. |
| Publicação de agentes | Disponibilização documental ou operacional de agente governado. |
| Publicação de especificações | Disponibilização de especificações da KEP ou de domínio. |
| Entrega operacional | Disponibilização, ativação, alteração ou transferência governada de rotina, procedimento, processo, registro operacional, framework operacional ou capacidade de operação recorrente. |

Uma entrega PODE combinar múltiplos tipos.

Regras para entregas com múltiplos tipos:

- todos os tipos aplicáveis DEVEM ser declarados;
- tipos razoavelmente aplicáveis omitidos DEVEM possuir justificativa;
- o nível da entrega DEVE considerar o maior risco entre os tipos aplicáveis;
- requisitos de comunicação, validação, aprovação e rollback mais restritivos DEVEM prevalecer;
- artefatos híbridos NÃO DEVEM ser classificados de forma mais leve para reduzir governança.

Tipos adicionais PODEM ser criados futuramente quando houver necessidade, owner e governança.

## 9. Níveis de entrega

| Nível | Critérios objetivos de enquadramento | Exigência mínima |
| --- | --- | --- |
| Interna | Escopo restrito à KEP ou grupo controlado; baixo risco; sem obrigação normativa nova; sem impacto direto em produto consumidor; sem ativação de agente; sem dado sensível ou segurança material; rollback simples ou N/A justificado | Registro, versão, referência verificável quando aplicável, responsável, evidência mínima e aprovação do owner ou responsável técnico |
| Controlada | Impacto limitado em domínio, agente, Playbook, produto consumidor, piloto ou operação restrita; risco baixo a médio; adoção por grupo conhecido; comunicação dirigida; rollback viável ou contenção definida | Aprovação final proporcional, Communication Readiness quando aplicável, riscos residuais aceitos, rollback ou N/A justificado e registro completo |
| Geral | Uso amplo na KEP ou por produtos consumidores; mudança de baseline documental; dependência por múltiplos times, domínios ou consumidores; efeito duradouro; risco médio ou impacto operacional relevante | Revisão, validação, aprovação formal, comunicação obrigatória, registro completo, rastreabilidade de versão e rollback ou substituição documentada |
| Crítica | Qualquer entrega normativa obrigatória de alto impacto, estrutural, segurança, propriedade intelectual relevante, agente de risco alto ou crítico, produção, alteração difícil de reverter, risco residual alto, impacto amplo em produto consumidor ou operação essencial | Múltiplas aprovações, evidências reforçadas, segregação de funções, aceite formal de riscos residuais, plano de rollback, contenção ou substituição e auditoria reforçada |

O nível DEVE ser proporcional ao risco, impacto, criticidade, alcance, tipo de artefato, classificação da informação, caráter normativo, impacto em produto, impacto operacional, presença de agente, segurança e reversibilidade.

Quando uma entrega atender critérios de mais de um nível, o nível mais restritivo DEVE prevalecer.

É proibido dividir artificialmente uma entrega para reduzir o nível de governança.

## 10. Versionamento e referência verificável

Versionamento DEVE preservar rastreabilidade histórica.

Princípios:

- versão inicial DEVE ser identificável;
- versões incrementais DEVEM registrar mudança, data e responsável;
- mudanças incompatíveis DEVEM ser destacadas;
- histórico NÃO DEVE ser apagado;
- versão entregue DEVE apontar para artefato, revisão e validação usados;
- versões substituídas DEVEM permanecer rastreáveis;
- entrega DEVE referenciar versão específica e verificável do artefato;
- hash, commit, checksum, snapshot ou referência verificável equivalente DEVE ser registrado quando aplicável.

A versão entregue DEVE corresponder à versão validada. Quando houver diferença de versão, referência, hash, snapshot, conteúdo material ou escopo, a entrega DEVE ser bloqueada até revalidação proporcional e nova autorização quando aplicável.

Quando o artefato não possuir mecanismo técnico de hash ou checksum, a entrega DEVE usar referência verificável proporcional, como caminho versionado, commit, tag existente, snapshot preservado, relatório assinado, identificador documental ou registro equivalente.

Este framework NÃO define política específica de versionamento, como SemVer ou equivalente. A política concreta PODE ser definida em documento próprio quando necessário.

## 11. Aprovação final

A entrega DEVE separar:

| Papel | Responsabilidade |
| --- | --- |
| Responsável técnico | Confirma prontidão técnica, documental ou operacional do artefato para entrega. |
| Governança | Confirma processo, revisão, validação, exceções, versão, registro, riscos residuais e rastreabilidade. |
| Autoridade final | Autoriza a entrega conforme risco, nível, escopo e impacto. |
| Aprovador de exceção | Aprova exceção formal, prazo, compensações e risco residual de requisito não atendido. |
| Owner de rollback | Responde por reversão, suspensão, contenção, substituição ou justificativa de não aplicabilidade. |

### 11.1 Autoridade de aprovação por nível

| Nível | Autoridade mínima de aprovação |
| --- | --- |
| Interna | Owner do artefato, responsável técnico ou autoridade delegada do domínio, com registro rastreável. |
| Controlada | Responsável técnico ou owner do domínio afetado, Governança da KEP e owner do produto, agente ou operação impactada quando aplicável. |
| Geral | Governança da KEP, owner técnico ou arquitetural e owner dos domínios ou produtos consumidores impactados quando aplicável. |
| Crítica | Governança da KEP, Arquitetura e autoridade independente compatível com o risco, incluindo Segurança, Produto, Operações ou Auditoria quando aplicável. |

Entregas críticas DEVEM possuir múltiplas aprovações quando houver impacto normativo, segurança, agente relevante, produto consumidor, operação essencial ou risco residual alto.

### 11.2 Conflitos de interesse

Aprovações DEVEM registrar conflitos de interesse conhecidos ou declarar ausência deles quando a entrega for controlada, geral ou crítica.

O autor do artefato NÃO deve ser a única autoridade final em entrega crítica, normativa ou de alto impacto.

Quando houver conflito material, a entrega DEVE exigir aprovador independente, segundo parecer ou compensação formal proporcional ao risco.

### 11.3 Divergência entre aprovadores

Divergência relevante entre aprovadores DEVE bloquear ou suspender a entrega até resolução.

A resolução DEVE registrar:

- posições divergentes;
- impacto;
- decisão de arbitragem;
- autoridade responsável;
- justificativa;
- riscos residuais aceitos;
- condição de avanço.

Votação simples NÃO substitui análise de risco, evidência e autoridade governada.

### 11.4 Separação entre exceção e entrega

O aprovador de exceção NÃO deve ser a única autoridade final da entrega que depende dessa exceção.

Quando a separação absoluta não for possível, a limitação DEVE ser registrada, justificada e compensada por controle proporcional ao risco.

Exceção formal vigente NÃO autoriza entrega por si só.

### 11.5 Aceite de riscos residuais

Riscos residuais DEVEM ser formalmente aceitos por autoridade compatível com nível, impacto e domínio afetado.

Aceite de risco residual DEVE registrar risco, motivo, prazo quando aplicável, responsável, aprovador, impacto, compensações e condição de revisão.

Risco residual omitido ou aceito por autoridade inadequada DEVE bloquear a entrega.

## 12. Registro da entrega

Toda entrega DEVE possuir registro mínimo:

| Campo | Descrição |
| --- | --- |
| Delivery ID | Identificador único da entrega |
| Artefato | Nome, caminho ou ID do artefato entregue |
| Tipo ou tipos | Tipo ou tipos de entrega aplicáveis |
| Nível | Interna, controlada, geral ou crítica |
| Versão entregue | Versão efetivamente entregue |
| Versão validada | Versão coberta pela validação usada |
| Hash ou referência verificável | Hash, commit, checksum, snapshot, tag existente, caminho versionado ou referência equivalente quando aplicável |
| Data e hora | Data ou timestamp da entrega, bloqueio, suspensão ou decisão |
| Responsáveis | Responsável técnico, governança, autoridade final e owner de rollback quando aplicável |
| Origem | Local, branch, documento, versão, hash ou referência de origem |
| Destino | Local, público interno, repositório, área, produto, agente, ambiente ou canal de disponibilização |
| Revisão utilizada | Review ID, relatório ou referência rastreável |
| Validação utilizada | Validation ID, relatório ou referência rastreável |
| Validade da validação | Data, validade, expiração ou gatilhos relevantes no momento da entrega |
| Alteração material pós-validação | Ausência, descrição, revalidação ou justificativa |
| Exceções | Exceções formais vigentes, quando aplicável |
| Riscos residuais | Riscos aceitos, aprovador e condição de revisão |
| Communication Readiness | Evidência de comunicação preparada ou justificativa de não aplicabilidade |
| Registro de comunicação | Evidência da comunicação realizada quando obrigatória |
| Rollback Readiness | Plano, owner, gatilhos, evidência ou justificativa de não aplicabilidade |
| Relação histórica | Entrega anterior, sucessora, substituta, substituída ou invalidada quando aplicável |
| Status | Planejada, em readiness, bloqueada, autorizada, entregue, entregue parcialmente, suspensa, revertida, substituída, republicada, invalidada, cancelada ou encerrada |

Nenhuma entrega real é registrada neste documento.

## 13. Critérios de bloqueio

Entrega DEVE ser bloqueada quando houver:

- validação `Não conforme`;
- validação ausente;
- validação expirada no momento da entrega;
- revisão obrigatória pendente;
- exceção vencida, inválida ou fora do escopo;
- evidência insuficiente;
- aprovação ausente;
- autoridade de aprovação incompatível com o nível;
- conflito de interesse material sem compensação;
- divergência relevante entre aprovadores sem resolução;
- versão indefinida;
- versão entregue diferente da versão validada;
- hash, commit, checksum, snapshot ou referência verificável ausente quando aplicável;
- alteração material após validação sem revalidação proporcional;
- alteração material após autorização sem nova análise de Delivery Readiness;
- destino indefinido;
- responsável ausente;
- risco residual não registrado;
- risco residual sem aceite formal por autoridade adequada;
- Communication Readiness ausente quando comunicação for obrigatória;
- registro de comunicação ausente no encerramento quando comunicação era obrigatória;
- rollback obrigatório ausente, não demonstrado ou sem owner quando aplicável;
- justificativa de rollback N/A ausente ou inadequada;
- conflito com Policy, KES ou decisão de governança;
- incidente aberto que afete diretamente a entrega;
- entrega de agente incompatível com status, owner, Playbooks, permissões ou ambientes registrados no `AGENT_REGISTRY`;
- entrega anterior substituída, invalidada ou sucedida sem relação histórica registrada.

Bloqueio DEVE ser registrado com motivo, responsável, condição de desbloqueio, evidência e impacto.

Entrega bloqueada NÃO DEVE ser publicada, disponibilizada, ativada, comunicada como concluída ou usada como baseline.

## 14. Validade da entrega

A entrega somente é válida quando, no momento da execução:

- a validação usada está vigente;
- exceções formais usadas estão vigentes;
- a versão entregue corresponde à versão validada;
- a autorização cobre a versão, destino, escopo, nível, riscos e tipo de entrega;
- não houve alteração material sem revalidação proporcional;
- comunicação e rollback obrigatórios permanecem atendidos.

Validação expirada antes da entrega DEVE bloquear a entrega.

Versão entregue diferente da versão validada DEVE bloquear a entrega.

Alteração material não revalidada DEVE bloquear a entrega.

### 14.1 Alteração material após validação

Alteração material é qualquer mudança que possa afetar requisito, risco, escopo, comportamento, obrigação normativa, segurança, propriedade intelectual, operação, produto consumidor, agente, permissão, evidência, destino ou reversibilidade.

Correção editorial estritamente não material PODE não exigir revalidação completa, desde que a justificativa seja registrada e aceita pela governança proporcional ao risco.

Alteração material após validação DEVE exigir revalidação proporcional.

Alteração material após autorização e antes da execução DEVE suspender a autorização até nova análise de Delivery Readiness e nova autorização quando risco, escopo, destino, versão, comunicação, rollback ou aprovação forem afetados.

### 14.2 Invalidação da entrega

Entrega anterior PODE ser invalidada quando for demonstrado que:

- foi entregue artefato diferente do validado;
- validação usada era inválida ou expirada;
- houve alteração material não revalidada;
- evidência crítica estava incorreta;
- risco residual era inaceitável ou não aceito formalmente;
- destino ou público foi incorreto;
- rollback, comunicação ou aprovação obrigatória estavam ausentes;
- decisão de governança determinou invalidação.

Invalidação DEVE preservar histórico, motivo, autoridade, data, impacto, relação com entrega substituta ou sucessora e condição de correção.

## 15. Estados especiais, reentrega e relações históricas

| Estado ou ação | Definição | Regra |
| --- | --- | --- |
| Entrega bloqueada | Entrega impedida antes da execução por falta de requisito, evidência, aprovação, comunicação, rollback ou validade | DEVE registrar motivo, impacto, responsável e condição de desbloqueio |
| Entrega suspensa | Uso, vigência ou disponibilidade interrompidos temporariamente após autorização ou execução | DEVE registrar motivo, responsável, impacto, comunicação e condição de retorno |
| Entrega parcial | Apenas parte do escopo aprovado foi entregue | DEVE listar escopo entregue, escopo pendente, riscos, comunicação e condição para conclusão |
| Reentrega | Nova tentativa ou nova execução de entrega relacionada a entrega anterior | DEVE gerar novo registro ou atualização rastreável, preservando relação com a entrega anterior |
| Republicação após correção | Publicação novamente após correção, revalidação ou ajuste de entrega | DEVE apontar para correção, validação aplicável e decisão de autorização |
| Substituição | Troca de artefato entregue por versão ou artefato substituto | DEVE manter relação entre artefato substituído e substituto |
| Invalidação | Declaração de que entrega anterior não deve mais ser usada como válida | DEVE preservar histórico e indicar entrega sucessora, substituta ou condição de correção quando existir |
| Cancelamento | Encerramento de entrega antes da conclusão | DEVE registrar motivo, impacto e status de comunicação |

Reentrega, republicação, substituição e invalidação NÃO DEVEM sobrescrever o registro anterior.

### 15.1 Relação entre entrega anterior, sucessora e substituta

Entrega anterior é a entrega diretamente relacionada ao estado existente antes da nova decisão.

Entrega sucessora é a entrega posterior que dá continuidade evolutiva ao mesmo artefato, processo, agente, Playbook ou especificação.

Entrega substituta é a entrega que substitui uma entrega anterior como referência válida para determinado escopo.

Quando houver sucessão ou substituição, ambos os lados da relação DEVEM ser rastreáveis quando possível.

Uma entrega substituta NÃO herda automaticamente aprovações, exceções, riscos aceitos, permissões, status de agente, comunicação ou rollback da entrega anterior.

## 16. Rollback, suspensão e substituição

Entrega deve prever tratamento para:

| Ação | Definição | Regra |
| --- | --- | --- |
| Suspensão | Interromper temporariamente uso ou disponibilidade do artefato entregue | DEVE registrar motivo, responsável, impacto, comunicação e condição de retorno |
| Rollback ou reversão | Retornar ao estado anterior, versão anterior válida ou condição operacional aceitável | DEVE preservar histórico, owner e evidência de reversão |
| Contenção | Reduzir impacto quando rollback direto não for possível | DEVE registrar ação, owner, risco residual e critério de encerramento |
| Substituição | Trocar artefato entregue por versão ou artefato substituto | DEVE manter relação entre artefato antigo e novo |
| Republicação | Publicar novamente após correção, revalidação ou ajuste de entrega | DEVE apontar para nova validação ou justificativa proporcional ao risco |

Rollback NÃO DEVE ser substituído por exclusão de histórico.

### 16.1 Ownership do rollback

Toda entrega com rollback aplicável DEVE definir owner de rollback antes da autorização.

O owner de rollback responde por:

- manter plano ou procedimento de reversão;
- definir critérios de acionamento;
- preservar evidências;
- coordenar comunicação quando acionado;
- registrar resultado;
- escalar falha de rollback como incidente ou near miss quando aplicável.

### 16.2 Critérios de acionamento do rollback

Rollback, suspensão ou contenção DEVE ser acionado ou avaliado quando ocorrer:

- entrega de versão incorreta;
- erro material detectado após entrega;
- validação invalidada;
- risco de segurança, propriedade intelectual ou exposição indevida;
- incidente ou near miss relacionado;
- falha operacional relevante;
- comunicação obrigatória incorreta ou ausente com impacto material;
- incompatibilidade com Policy, KES, ADR ou decisão de governança;
- comportamento inesperado de agente ou Playbook;
- determinação de Governança, Segurança, Arquitetura, Produto, Operações ou Auditoria.

### 16.3 Evidência de rollback

Rollback executado DEVE registrar:

- motivo;
- owner;
- autoridade;
- ação realizada;
- versão ou estado anterior;
- versão ou estado restaurado;
- impacto;
- comunicação realizada;
- evidências;
- resultado;
- pendências e riscos residuais.

### 16.4 Rollback não aplicável

Rollback PODE ser considerado não aplicável quando a natureza do artefato ou da entrega tornar reversão direta impossível ou sem sentido operacional.

Nesses casos, a entrega DEVE registrar:

- justificativa;
- autoridade que aceitou a não aplicabilidade;
- risco residual;
- estratégia alternativa, como correção, republicação, substituição, comunicação, suspensão ou contenção;
- condição de auditoria.

## 17. Comunicação

Comunicação é obrigatória quando a entrega:

- afetar produto consumidor;
- alterar obrigação normativa;
- alterar baseline, versão recomendada ou prática oficial;
- envolver agente, Playbook ou operação recorrente;
- exigir ação de destinatários;
- possuir risco residual relevante;
- substituir, invalidar, suspender, reverter ou republicar entrega anterior;
- impactar segurança, propriedade intelectual, classificação da informação ou continuidade operacional.

Entrega DEVE registrar, quando aplicável:

- destinatários;
- canal, local ou referência de comunicação;
- escopo;
- impacto;
- mudanças relevantes;
- versão entregue;
- versão substituída ou invalidada;
- status de rollback, substituição ou suspensão;
- limitações conhecidas;
- riscos conhecidos;
- riscos residuais aceitos;
- exceções;
- instruções de adoção;
- ação esperada dos destinatários;
- restrições;
- data de vigência;
- ponto de contato;
- evidência de comunicação realizada.

Comunicação obrigatória ausente DEVE bloquear a entrega antes da execução ou impedir encerramento quando identificada após a execução.

Comunicação NÃO substitui registro de entrega.

## 18. Auditoria

Auditoria DEVE permitir identificar:

- entregas sem validação;
- entregas sem revisão;
- entregas sem aprovação;
- entregas sem versão;
- entregas sem Delivery ID;
- entregas duplicadas;
- rollback sem registro;
- publicação fora do fluxo;
- publicação sem rastreabilidade;
- entrega com exceção vencida;
- entrega com validação expirada;
- entrega de versão diferente da validada;
- entrega com alteração material não revalidada;
- entrega com risco residual omitido;
- entrega com risco residual sem aceite formal;
- entrega crítica sem múltiplas aprovações quando exigidas;
- entrega com aprovação conflitante não resolvida;
- entrega com conflito de interesse não tratado;
- entrega sem destino definido;
- entrega sem evidências preservadas;
- entrega com comunicação obrigatória ausente;
- entrega com rollback obrigatório não definido, não demonstrado ou sem owner;
- entrega substituída sem relação histórica;
- entrega anterior invalidada sem relação com sucessora, substituta ou condição de correção;
- entrega de agente incompatível com `AGENT_REGISTRY`.

Auditoria PODE alimentar métricas futuras conforme `architecture/AGENT_METRICS_MODEL.md`.

## 19. Integrações

### 19.1 REVIEW_FRAMEWORK

Entrega DEVE apontar para revisão concluída quando aplicável.

Revisão aprovada NÃO autoriza entrega por si só.

Achados obrigatórios pendentes DEVEM bloquear entrega, salvo exceção formal vigente, rastreável e aceita por autoridade compatível com o risco.

### 19.2 VALIDATION_FRAMEWORK

Entrega DEVE apontar para validação `Conforme` ou `Conforme com exceções formais` vigentes.

Validação conforme NÃO autoriza entrega automaticamente.

Validação expirada, invalidada, insuficiente ou referente a versão diferente DEVE bloquear entrega.

Alteração material após validação DEVE exigir revalidação proporcional antes da entrega.

### 19.3 AGENT_REGISTRY

Entrega de agentes DEVE consultar explicitamente o `architecture/AGENT_REGISTRY.md`.

Para entrega documental de agente, o registro DEVE confirmar existência formal, status compatível, owner, aprovador, versão, documento do agente e evidência aplicável.

Para entrega operacional, ativação, disponibilização com permissões ou associação a Playbook, o registro DEVE confirmar status e transição compatíveis, owner ativo, aprovador, Playbooks aprovados, produtos compatíveis, ambientes permitidos, capacidades autorizadas, restrições e evidências exigidas.

Entrega de agente NÃO concede permissões automaticamente, NÃO altera status no `AGENT_REGISTRY` sozinha e NÃO substitui critérios de ativação, suspensão, reativação, depreciação ou arquivamento definidos no registro.

Agente suspenso, depreciado ou arquivado DEVE bloquear entrega operacional, salvo entrega documental de histórico, transição, contenção ou encerramento formalmente autorizada.

### 19.4 AGENT_METRICS_MODEL

Entregas PODEM alimentar métricas futuras sobre lead time, retrabalho, rollback, bloqueios, cancelamentos, suspensões, entregas parciais, republicações, exceções, riscos residuais e recorrência de problemas.

Métricas NÃO substituem aprovação final, análise de risco, evidência, auditoria ou responsabilidade humana.

### 19.5 AGENT_INCIDENT_REGISTER

Entrega que gerar incidente, near miss, falha de rollback, publicação indevida, exposição, entrega de versão incorreta, ativação indevida de agente ou violação de governança DEVE ser relacionada ao `architecture/AGENT_INCIDENT_REGISTER.md` quando aplicável.

## 20. Métricas futuras de entrega

Métricas futuras PODEM ser definidas sem implementação nesta versão.

Indicadores úteis incluem:

- tempo total até entrega;
- tempo entre validação e entrega;
- tempo em estado bloqueado;
- entregas por tipo;
- entregas por nível;
- entregas críticas;
- entregas bloqueadas;
- entregas suspensas;
- entregas canceladas;
- entregas parciais;
- reentregas;
- republicações após correção;
- taxa de rollback;
- falhas de rollback;
- entregas com exceções;
- entregas com riscos residuais;
- entregas invalidadas;
- entregas de versão diferente detectadas em auditoria;
- entregas com comunicação obrigatória ausente;
- recorrência de bloqueios por causa.

Essas métricas NÃO DEVEM ser usadas isoladamente para aprovar entrega, reduzir nível de governança ou avaliar desempenho individual.

## 21. Modelo normativo de relatório

Todo relatório ou registro formal de entrega DEVE conter, no mínimo:

| Campo | Descrição |
| --- | --- |
| Delivery ID | Identificador único da entrega |
| Artefato | Nome, caminho ou ID do artefato |
| Tipo ou tipos | Tipo ou tipos de entrega |
| Nível | Interna, controlada, geral ou crítica |
| Versão entregue | Versão efetivamente entregue |
| Versão validada | Versão coberta pela validação |
| Hash ou referência verificável | Hash, commit, checksum, snapshot, tag existente, caminho versionado ou referência equivalente quando aplicável |
| Origem | Referência de origem |
| Destino | Local ou público de disponibilização |
| Aprovações | Responsável técnico, governança, autoridade final e demais aprovadores exigidos |
| Conflitos de interesse | Conflitos declarados ou ausência deles quando aplicável |
| Divergências | Divergências entre aprovadores e decisão de resolução quando aplicável |
| Revisão | Revisão utilizada |
| Validação | Validação utilizada |
| Validade da validação | Situação da validação no momento da entrega |
| Alteração material pós-validação | Ausência, tratamento, revalidação ou justificativa |
| Riscos residuais | Riscos aceitos, autoridade, condição e prazo quando aplicável |
| Exceções | Exceções formais aplicáveis, aprovador e vigência |
| Communication Readiness | Comunicação preparada ou justificativa de N/A |
| Registro de comunicação | Evidência de comunicação obrigatória realizada |
| Rollback Readiness | Plano, owner, gatilhos, evidência ou justificativa de N/A |
| Relação histórica | Entrega anterior, sucessora, substituta, substituída ou invalidada |
| Resultado | Planejada, em readiness, autorizada, entregue, entregue parcialmente, bloqueada, suspensa, revertida, substituída, republicada, invalidada, cancelada ou encerrada |
| Data e hora | Data ou timestamp da entrega ou decisão |

Relatórios de entrega NÃO DEVEM declarar revisão, validação, comunicação, rollback ou aprovação não executados.

## 22. Anti-patterns

São proibidos:

- entregar sem validação;
- entregar sem revisão quando revisão for exigida;
- publicar sem versão;
- publicar sem aprovação;
- entregar com validação expirada;
- entregar artefato diferente do validado;
- entregar com alteração material não revalidada;
- entregar com exceção vencida;
- entregar com comunicação obrigatória ausente;
- entregar com rollback obrigatório ausente, não demonstrado ou sem owner;
- substituir rollback por exclusão do histórico;
- ignorar riscos residuais;
- aceitar risco residual sem autoridade adequada;
- tratar entrega como validação;
- tratar entrega como revisão;
- tratar review aprovado como autorização de entrega;
- tratar validation conforme como autorização de entrega;
- alterar destino sem registro;
- comunicar entrega sem registrá-la;
- pular registro por urgência;
- alterar histórico da entrega;
- ocultar bloqueio para acelerar disponibilização;
- usar entrega crítica como controlada para reduzir governança;
- classificar entrega híbrida por seu tipo menos restritivo;
- republicar após correção sem rastrear correção, validação aplicável e autorização;
- invalidar entrega anterior apagando evidências;
- conceder permissão operacional a agente apenas por entrega documental.

## 23. Evolução futura

Possibilidades futuras, sem implementação nesta versão:

- CI/CD;
- automação;
- APIs;
- YAML;
- JSON;
- dashboards;
- assinatura digital;
- trilhas automatizadas;
- registros estruturados;
- inventário ou registro formal de entregas;
- convenção oficial de Delivery ID;
- integração com métricas, incidentes e registries.

Essas evoluções NÃO substituem revisão, validação, aprovação final ou governança humana.

### 23.1 Extração futura de conceitos recorrentes

Modelos futuros PODERÃO extrair, normalizar ou generalizar conceitos recorrentes relacionados a entidades de engenharia, lifecycle, rastreabilidade e workflow.

Essa extração DEVE:

- preservar compatibilidade histórica com entregas e registros produzidos sob este framework;
- evitar duplicação normativa entre Delivery e modelos mais amplos;
- basear-se em evidências reais de uso, recorrência, conflito ou convergência entre domínios;
- ocorrer somente após experiência prática suficiente.

Até que exista decisão arquitetural própria, os conceitos definidos neste documento permanecem restritos ao domínio local de Delivery.

## 24. Diagramas ASCII

### Fluxo de entrega

```text
Artefato elegível
        │
        ▼
Preparação da entrega
        │
        ▼
Delivery Readiness
        │
        ▼
Autorização
        │
        ▼
Execução da entrega
        │
        ▼
Registro e comunicação
        │
        ▼
Encerramento
```

### Cadeia completa de governança

```text
Artefato
    ↓
Review
    ↓
Validation
    ↓
Delivery
    ↓
Registro, comunicação, rollback e auditoria
```

### Decisões de entrega

```text
Delivery Readiness
    │
    ├─ Entrega autorizada
    ├─ Entrega bloqueada
    ├─ Entrega suspensa
    ├─ Entrega parcial
    ├─ Reentrega ou republicação
    ├─ Substituição ou invalidação
    └─ Entrega cancelada
```

## 25. Histórico

| Versão | Data | Alteração |
| --- | --- | --- |
| 0.1.1 | 2026-07-19 | Fechamento corretivo da Wave 6 com entrega operacional, múltiplos tipos, critérios objetivos de nível, Delivery Readiness, validade da validação, correspondência de versão, alteração material, Communication Readiness, Rollback Readiness, aceite de riscos residuais, referência verificável, aprovação por nível, conflitos de interesse, divergência entre aprovadores, separação entre exceção e entrega, estados especiais, reentrega, republicação, invalidação, relações históricas, ownership e gatilhos de rollback, comunicação obrigatória, métricas futuras, integração explícita com AGENT_REGISTRY e bloqueios adicionais. |
| 0.1.0 | 2026-07-18 | Criação inicial do Framework Oficial de Entrega da KEP, com fluxo, pré-requisitos, tipos, níveis, versionamento, aprovação final, registro, bloqueios, rollback, comunicação, auditoria, integrações, relatório e evolução futura. |
