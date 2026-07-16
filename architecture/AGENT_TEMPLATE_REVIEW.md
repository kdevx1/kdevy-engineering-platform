# Revisão Arquitetural do AGENT_TEMPLATE

## Controle da revisão

| Campo | Valor |
| --- | --- |
| Documento revisado | `templates/AGENT_TEMPLATE.md` |
| Tipo | Revisão arquitetural profunda |
| Classificação | Interno |
| Data | 2026-07-15 |
| Revisor | Chief AI Governance Architect |
| Escopo | Template oficial de agente, governança, autonomia, permissões, evidências, segurança, produtos e reutilização |
| Decisão sugerida | Aprovar com ajustes |
| Nota geral | 8,6 / 10 |

## 1. Resumo executivo

O `AGENT_TEMPLATE.md` é uma base forte para documentar, revisar, aprovar e manter agentes da KDEVY Engineering Platform.

O template está alinhado ao KAF e ao catálogo oficial de agentes. Ele exige owner operacional humano, separa owner de produto e aprovador, limita autonomia, exige classificação de risco, trata permissões sensíveis, preserva worktree, define evidências por risco, protege propriedade intelectual e impede autorização implícita.

A decisão sugerida é **Aprovar com ajustes**. O documento está suficientemente maduro para servir como contrato estrutural, mas antes do commit deveria receber pequenos ajustes de clareza e usabilidade: reduzir ambiguidade em permissões que têm regra mínima, adicionar campo de "escopo de atuação" também no controle documental, explicitar que o template preenchido não ativa o agente e criar orientação para remover campos vazios ou justificar "Não aplicável".

## 2. Estrutura

Todas as seções obrigatórias existem:

- controle documental;
- identificação;
- problema e justificativa;
- missão;
- objetivos;
- escopo;
- fora do escopo;
- consumidores;
- owners;
- lifecycle;
- autonomia;
- risco;
- permissões;
- autorizações temporárias;
- entradas e saídas;
- dependências;
- Git/worktree;
- critérios de aceite;
- evidências;
- transparência;
- segregação;
- segurança;
- suspensão;
- incidentes;
- reativação;
- depreciação/desativação;
- onboarding;
- contrato com produtos;
- métricas futuras;
- revisões;
- histórico.

A estrutura é coerente e completa.

## 3. Compatibilidade

### AGENT_FRAMEWORK_MODEL

Compatível. O template respeita estados, autonomia, permissões, evidências, incidentes, suspensão e owner operacional.

### AGENT_CATALOG

Compatível. O template usa ID `AGT-<DOMINIO>-<NUMERO>`, status do catálogo, owner operacional, escopo de atuação e registro no catálogo.

### PLATFORM_MODEL

Compatível. O template não altera a arquitetura global da KEP e mantém agentes no domínio AI/KAF.

### KNOWLEDGE_SYSTEM_MODEL

Compatível. O template preserva dependências, documentação, evidências, revisões e lifecycle.

### KES-0000

Compatível. O template preserva KEP como plataforma-mãe, produtos como consumidores e AutoBody ERP em repositório próprio.

### KES-0001

Compatível. O template reforça IA supervisionada, propriedade intelectual, validação antes de conclusão, preservação de trabalho existente e separação entre plataforma/produto.

## 4. Clareza

O template é claro para um engenheiro com contexto da KEP.

Pontos fortes:

- campos preenchíveis;
- tabelas consistentes;
- regras normativas diretas;
- exemplos de status e níveis;
- checklist de aceite;
- matriz de evidências por risco.

Ponto de atenção: o template é longo. Um engenheiro novo pode preencher mecanicamente sem entender quais campos são obrigatórios em cada status. Recomenda-se indicar, em versão futura, campos mínimos por status.

## 5. Owners

Owner operacional, owner do produto consumidor e aprovador estão claramente separados.

O template declara:

- agente sem owner operacional não deve permanecer ativo;
- owner não pode ser inventado;
- `Owner a definir` só é permitido para Candidate ou Planned.

Ponto de melhoria: adicionar no controle documental um campo explícito para "Aprovador", já que existe seção própria para aprovador.

## 6. Lifecycle

Os estados estão completos:

- Candidate;
- Planned;
- Approved;
- Active;
- Suspended;
- Deprecated;
- Disabled.

O lifecycle está claro e protege identificadores desativados contra reuso.

Ponto de atenção: o fluxo `Active -> Suspended/Deprecated -> Disabled` é adequado, mas pode parecer que todo agente suspenso precisa passar por Deprecated antes de Disabled. A tabela já permite outros caminhos, então não é bloqueante.

## 7. Autonomia

O template impede autonomia irrestrita.

Ele usa os níveis do KAF e exige:

- nível máximo;
- justificativa;
- ações permitidas;
- ações proibidas;
- supervisão;
- evidências;
- reversibilidade.

Isso é adequado.

## 8. Permissões

A matriz cobre as ações sensíveis solicitadas:

- commit;
- push;
- force push;
- produção;
- segredos;
- ADR;
- KES;
- exclusões;
- migrations;
- banco;
- releases.

Classificações fortes:

- force push proibido;
- ADR/KES proibidos para IA;
- segredos proibidos por padrão;
- produção proibida por padrão;
- commit/push exigem autorização explícita.

Ponto fraco: algumas linhas críticas, como "Acessar segredos", "Operar produção", "Criar commit", "Fazer push", "Excluir arquivos" e "Alterar banco", estão vazias na matriz e dependem das regras mínimas abaixo. Para evitar preenchimento incorreto, recomenda-se pré-marcar como proibidas por padrão ou com supervisão explícita.

## 9. Riscos

A matriz de risco cobre as áreas relevantes:

- código;
- arquitetura;
- documentação normativa;
- banco;
- segurança;
- infraestrutura;
- produção;
- propriedade intelectual;
- dados pessoais;
- dados financeiros;
- Git;
- releases;
- produto consumidor.

Está alinhada ao KAF.

## 10. Evidências

As evidências são proporcionais ao risco.

Pontos fortes:

- lista de arquivos e diff crescem de recomendação para obrigatoriedade;
- `git diff --check` obrigatório quando há alteração;
- rollback aparece em alto/crítico quando aplicável;
- aprovação explícita e revisão humana são obrigatórias em alto/crítico;
- auditoria independente aparece para alto/crítico.

Ponto de atenção: "Quando aplicável" exige julgamento. Isso é correto, mas precisa de justificativa no preenchimento quando a evidência esperada não for executada.

## 11. Transparência

Excelente cobertura.

O template separa:

- fato observado;
- inferência;
- hipótese;
- recomendação;
- limitação;
- resultado executado;
- resultado esperado;
- validação não realizada.

Também proíbe inventar arquivos, comandos, resultados, testes, builds, validações, links, permissões e contexto.

## 12. Git e worktree

Boa cobertura.

O template exige:

- `git status`;
- identificação de mudanças preexistentes;
- separação do próprio trabalho;
- não misturar tarefas;
- não reverter trabalho alheio;
- não alterar histórico;
- validar diff;
- `git diff --check`;
- não commit/push sem autorização;
- evitar `git add .`;
- apresentar staged antes do commit.

Isso está alinhado à KES-0001 e ao KAF.

## 13. Segurança

Boa cobertura para:

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

Compatível com políticas de propriedade intelectual e classificação.

## 14. Produtos

O contrato com produtos é adequado para AutoBody ERP e produtos futuros.

Inclui:

- produto;
- repositório;
- baseline da KEP;
- ADRs locais;
- políticas locais;
- owner do produto;
- ambiente;
- permissões;
- critérios de aceite;
- dados acessíveis e proibidos;
- evidências;
- exceções;
- duração da autorização.

O template declara que não concede acesso automático ao produto.

## 15. Reutilização

O template é reutilizável por qualquer agente da plataforma.

Não depende de fornecedor, linguagem, framework, produto específico ou ferramenta específica.

Ponto de atenção: para agentes consultivos simples, o template pode ser pesado. Isso não invalida o documento, porque ele é um contrato estrutural oficial, não um formulário rápido.

## 16. Complexidade

Existe complexidade, mas ela é justificada pelo objetivo de governança.

Oportunidades de simplificação sem perda de governança:

- criar versão curta ou checklist derivado para agentes Candidate;
- marcar campos mínimos por status;
- pré-classificar permissões sensíveis com valores padrão;
- transformar algumas seções em "preencher somente se aplicável" com justificativa obrigatória.

Essas simplificações podem ser futuras e não precisam bloquear a primeira versão.

## 17. Evolução futura

Pontos que devem permanecer em versões futuras:

- owner operacional humano;
- classificação de risco;
- matriz de permissões;
- evidências por risco;
- worktree/Git;
- transparência;
- segregação de funções;
- segurança e propriedade intelectual;
- incidentes;
- contrato com produtos.

Possíveis evoluções:

- template resumido por status;
- checklist de ativação;
- template de incidente separado;
- integração futura com Agent Registry.

## 18. Pontos fortes

- Estrutura completa.
- Compatível com KAF e catálogo.
- Forte separação de owners.
- Autonomia irrestrita proibida.
- Permissões sensíveis cobertas.
- Evidências proporcionais ao risco.
- Transparência bem definida.
- Boas práticas de Git e worktree.
- Segurança e propriedade intelectual protegidas.
- Compatível com AutoBody ERP e futuros produtos.
- Independente de fornecedor.

## 19. Pontos fracos

- Documento longo para agentes simples.
- Permissões sensíveis não estão todas pré-marcadas na matriz.
- Campo "Aprovador" não aparece no controle documental.
- Campos mínimos por status não estão explicitados.
- Alguns itens "quando aplicável" podem ser usados para evitar validações se não houver exigência de justificativa local.

## 20. Riscos arquiteturais

### Preenchimento mecânico

Risco de preencher o template sem análise real de risco, permissões e evidências.

### Permissões sensíveis mal preenchidas

Risco de alguém marcar produção, segredos, commit ou banco como permitido sem perceber as regras mínimas.

### Burocracia para agentes simples

Risco de agentes consultivos ficarem lentos para documentar.

### Confusão entre template preenchido e agente aprovado

Risco baixo, mitigado pelo texto inicial, mas deve continuar reforçado.

## 21. Ajustes obrigatórios antes do commit

1. Pré-marcar permissões críticas na matriz:
   - Acessar segredos: Proibida por padrão.
   - Operar produção: Proibida por padrão.
   - Force push: Proibida.
   - Aprovar ADR: Proibida.
   - Aprovar KES: Proibida.
   - Alterar banco: Proibida por padrão.
   - Excluir arquivos: Com supervisão ou Proibida por padrão, exigindo autorização.
   - Criar commit e fazer push: Com supervisão, exigindo autorização explícita.
2. Adicionar campo "Aprovador" ao controle documental.
3. Declarar que itens "Não aplicável" ou "Não executado" nos critérios de aceite e evidências exigem justificativa.
4. Declarar que preencher o template não aprova, ativa ou concede permissão ao agente.

## 22. Melhorias recomendadas

- Criar checklist curto derivado para agentes Candidate.
- Criar tabela de campos mínimos por status.
- Criar template separado de incidente de agente.
- Criar guia de exemplos preenchidos sem usar agentes reais.
- Criar playbook de ativação de agente.
- Criar processo de revisão periódica do template.

## 23. Decisão

**Aprovar com ajustes.**

Justificativa: o template é arquiteturalmente sólido e compatível com a KEP, mas precisa de pequenos ajustes para reduzir ambiguidade em permissões críticas e reforçar que o preenchimento não concede ativação.

## 24. Nota geral

**8,6 / 10**

A nota reflete alta maturidade de governança, com lacunas pequenas e fáceis de corrigir antes do commit.

## 25. Conclusão

O `AGENT_TEMPLATE.md` está bem desenhado como contrato estrutural oficial para agentes da KDEVY.

Após os ajustes obrigatórios, o template deve ficar suficientemente seguro para orientar criação, revisão e manutenção de agentes futuros sem aumentar escopo, sem implementar agentes e sem conceder autoridade indevida.
