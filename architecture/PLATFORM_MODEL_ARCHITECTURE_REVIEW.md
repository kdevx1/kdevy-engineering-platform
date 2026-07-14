# Revisão Arquitetural do Platform Model

## Controle da revisão

| Campo | Valor |
| --- | --- |
| Documento revisado | `architecture/PLATFORM_MODEL.md` |
| Tipo de revisão | Arquitetural |
| Data | 2026-07-14 |
| Escopo | Modelo conceitual, domínios, dependências, governança, evolução, IA, onboarding, produtos e frameworks |
| Decisão sugerida | Aprovar com ajustes |
| Nota de maturidade | 7,6 / 10 |

## 1. Resumo executivo

O `PLATFORM_MODEL.md` cumpre bem o papel de primeira referência arquitetural da KDEVY Engineering Platform (KEP). Ele define a separação entre KDEVY, KEP e produtos consumidores, organiza domínios, descreve fluxos de conhecimento e governança, e estabelece limites importantes contra acoplamento indevido.

Arquiteturalmente, o modelo é forte como documento de consolidação. Ele já é útil para pessoas, agentes de IA e produtos futuros.

Entretanto, ainda há lacunas antes de tratá-lo como modelo operacional completo:

- contratos entre domínios ainda não estão formalizados;
- ciclo de vida dos documentos ainda é implícito;
- frameworks futuros aparecem como limite, mas não como domínio governado;
- governança de agentes de IA ainda não define classes de agente, permissões e responsabilidades;
- produtos consumidores ainda não têm modelo explícito de conformidade;
- dependências estão bem listadas, mas ainda não têm criticidade, direção obrigatória ou regra de quebra.

Decisão sugerida: Aprovar com ajustes.

## 2. Clareza do modelo conceitual

O modelo conceitual é claro.

Pontos fortes:

- separa KDEVY, KEP e produtos consumidores;
- usa diagramas ASCII compreensíveis;
- apresenta domínios em linguagem estável;
- define que produtos consomem a KEP sem serem incorporados a ela.

Ponto fraco:

- o modelo ainda mistura "domínios da plataforma" com "áreas documentais". Por exemplo, Corporate aparece como domínio da plataforma, mas pertence conceitualmente à KDEVY. Isso está reconhecido no texto, mas a arquitetura ainda precisa mostrar esse domínio como incubado/transversal.

## 3. Separação entre empresa, plataforma e produtos

A separação está bem estabelecida.

Avaliação:

- KDEVY: entidade institucional, proprietária dos ativos.
- KEP: plataforma proprietária de engenharia.
- Produtos: consumidores da KEP, com repositórios, ciclos e código próprios.

Risco residual:

- Corporate dentro da KEP pode continuar gerando ambiguidade se não houver plano explícito de extração ou ownership separado.

Recomendação:

- manter Corporate como domínio incubado, mas marcar sua autoridade como externa à KEP.

## 4. Modelagem dos domínios

Os domínios principais estão bem escolhidos:

- Corporate;
- Governance;
- Architecture;
- Engineering;
- Knowledge;
- Security;
- AI;
- Documentation;
- Standards;
- Policies;
- Templates;
- Products.

Lacunas:

- Frameworks aparecem apenas em "Limites Arquiteturais", não como domínio de evolução.
- Delivery não aparece explicitamente, embora exista relação com roadmap, automação, playbooks e produtos.
- Automation também não aparece como domínio próprio, apesar de automações futuras serem citadas.
- Compliance de produto não aparece como domínio, embora o modelo de produtos dependa dele.

Avaliação: bom para versão inicial, incompleto para escala.

## 5. Dependências

O modelo de dependências é útil e responde quem depende de KES, Policies, ADRs, Blueprint, README e Company Identity.

Pontos fortes:

- diferencia README como porta de entrada, não autoridade normativa;
- coloca Policies como base transversal;
- reconhece ADRs como fonte de decisões aceitas;
- posiciona KES como base normativa.

Pontos fracos:

- não classifica dependências como obrigatórias, recomendadas ou informativas;
- não define o que acontece quando uma dependência muda;
- não define versionamento ou compatibilidade entre documentos;
- não explicita dependências inversas, como quais documentos devem ser atualizados quando uma Policy muda.

## 6. Acoplamentos

O modelo evita os acoplamentos mais perigosos:

- produto dentro da plataforma;
- empresa como sinônimo de KEP;
- README como fonte normativa máxima;
- Corporate como parte definitiva da KEP.

Acoplamentos residuais:

- Corporate ainda está fisicamente dentro da KEP.
- Products aparece como domínio da plataforma, mas produtos devem permanecer fora da plataforma.
- Frameworks futuros pertencem à KEP quando reutilizáveis, mas ainda não têm fronteira com Standards, KES e Automation.

Risco: sem contratos explícitos, domínios podem crescer por proximidade documental, não por responsabilidade arquitetural.

## 7. Escalabilidade

O modelo escala conceitualmente para múltiplos produtos.

Pontos positivos:

- produtos futuros já são previstos;
- feedback de produto retorna para a KEP;
- dependências normativas existem;
- KIP, ADR e KES formam caminho de evolução.

Limites atuais:

- falta modelo de conformidade para produto consumidor;
- falta processo de adoção de KEP por novo produto;
- falta lifecycle de domínio, documento e framework;
- falta política de depreciação documental.

## 8. Modularidade

A modularidade é boa, mas ainda documental.

O modelo define domínios, mas não define interfaces entre eles.

Exemplos de interfaces ausentes:

- Policy → KES: como uma política altera uma especificação.
- ADR → Blueprint: quando uma decisão força atualização de arquitetura.
- KES → Standard: quando uma regra vira prática recorrente.
- Product Feedback → KIP: como feedback vira proposta formal.
- AI → Governance: como ações de agentes são revisadas.

Sem essas interfaces, a modularidade pode depender de disciplina manual.

## 9. Fluxo de conhecimento

O fluxo de conhecimento está bem modelado:

```text
Necessidade → Contexto → KIP → ADR → KES → Standard → Produto → Feedback
```

Ponto forte:

- o fluxo evita que conhecimento nasça diretamente como padrão sem maturidade.

Ponto fraco:

- não há critérios para decidir quando uma necessidade vira Knowledge, KIP, ADR ou KES.

Recomendação:

- adicionar futuramente uma matriz de roteamento de conhecimento.

## 10. Fluxo de governança

O fluxo de governança está correto em alto nível.

Pontos fortes:

- reconhece governança proporcional;
- diferencia KIP, ADR, KES, Policies e Roadmap;
- define quem governa cada tipo documental.

Lacunas:

- autoridade formal ainda é genérica;
- aprovação por tipo documental ainda não tem estados;
- não há ciclo de revisão, expiração ou depreciação;
- não há política para conflitos entre governança corporativa e governança da KEP.

## 11. Fluxo de IA

O modelo inclui agentes de IA em onboarding, dependências, Knowledge, AI e pontos de atenção.

Pontos fortes:

- IA é tratada como consumidora e colaboradora da plataforma;
- validação de caminhos, referências e diffs é mencionada;
- agentes são orientados a ler contexto antes de agir.

Lacunas:

- não há classes de agentes;
- não há modelo de permissões;
- não há limites por tipo de ação;
- não há distinção entre agente leitor, agente editor, agente revisor e agente executor;
- não há trilha de auditoria para ações de IA.

## 12. Fluxo de onboarding

O onboarding é claro e segmentado por perfil:

- novo desenvolvedor;
- arquiteto;
- revisor;
- agente de IA.

Ponto forte:

- a ordem de leitura é prática e evita começar por documentos profundos sem contexto.

Ponto fraco:

- não há critério de conclusão de onboarding;
- não há checklist de prontidão por papel;
- agentes de IA não têm validação explícita de contexto carregado.

## 13. Evolução futura

O modelo suporta evolução futura por KIP, ADR, KES, Standard, Template, Playbook e feedback.

Isso é arquiteturalmente saudável.

Lacunas para evolução:

- não há versionamento do próprio modelo;
- não há critério para criar novo domínio;
- não há regra de arquivamento ou substituição;
- não há processo de migração quando a KEP crescer para múltiplos produtos.

## 14. Suporte a novos produtos

O modelo suporta novos produtos em conceito.

Pontos positivos:

- produto é consumidor, não parte da KEP;
- código e backlog pertencem ao produto;
- feedback retorna para a plataforma;
- políticas e KES orientam consumo.

Lacunas:

- não existe contrato de adoção da KEP por produto;
- não há níveis de conformidade;
- não há processo de exceção para produto que não consiga cumprir uma regra;
- não há modelo de versionamento de compatibilidade entre produto e KEP.

## 15. Suporte a novos frameworks

O modelo reconhece futuros frameworks, mas ainda não os governa de forma suficiente.

Pontos positivos:

- frameworks pertencem à KEP quando forem capacidades reutilizáveis;
- devem ter escopo, relação com KES e Policies, critérios de uso e limites com produtos.

Lacunas:

- frameworks não aparecem nos domínios principais;
- não há processo para criar, promover, depreciar ou aposentar framework;
- não há distinção entre framework, standard, automation, template e playbook.

## 16. Suporte a novos agentes de IA

O modelo suporta agentes de IA como consumidores e colaboradores, mas ainda não como entidades governadas.

Necessidades futuras:

- catálogo de agentes;
- tipos de permissão;
- escopo por agente;
- logs ou registros de atuação;
- critérios de revisão humana;
- limites para ações destrutivas;
- política de contexto mínimo antes de ação.

Sem isso, agentes futuros podem crescer sem governança suficiente.

## 17. Riscos arquiteturais

### Risco 1: Corporate permanecer indefinidamente dentro da KEP

Impacto: confusão entre empresa e plataforma.

Mitigação: manter dívida arquitetural registrada e definir gatilhos para extração.

### Risco 2: Products virar domínio operacional dentro da KEP

Impacto: a KEP pode absorver backlog, código ou decisões internas de produto.

Mitigação: manter Products como domínio de relacionamento, não de implementação.

### Risco 3: KES, Policies e Standards competirem entre si

Impacto: conflito normativo.

Mitigação: criar precedência normativa e matriz de tipo documental.

### Risco 4: Frameworks crescerem sem lifecycle

Impacto: duplicidade com Standards, Templates e Automation.

Mitigação: definir modelo de criação e manutenção de frameworks.

### Risco 5: IA escalar sem governança própria

Impacto: ações inconsistentes, inferências não declaradas ou edições fora de escopo.

Mitigação: criar modelo de agentes, permissões e auditoria.

## 18. Pontos fortes

- Forte separação entre KDEVY, KEP e produtos.
- Domínios principais bem identificados.
- Diagramas ASCII úteis e legíveis.
- Modelo de dependências cobre documentos centrais.
- Onboarding segmentado por papel.
- Governança por tipo documental iniciada.
- Limites arquiteturais explícitos.
- Compatível com AutoBody ERP e produtos futuros.
- Evita dependência de tecnologia específica.
- Reconhece dívida arquitetural de Corporate.

## 19. Pontos fracos

- Domínios ainda não têm interfaces formais.
- Frameworks não aparecem como domínio governado.
- Products pode ser interpretado como domínio interno da KEP.
- Governança ainda não tem estados formais.
- Modelo de IA ainda é fraco para múltiplos agentes.
- Dependências ainda não têm criticidade nem impacto de mudança.
- Não há lifecycle para documentos, domínios e frameworks.

## 20. Melhorias obrigatórias

Antes de tratar o `PLATFORM_MODEL.md` como referência arquitetural final, recomenda-se ajustar:

1. Definir que Products é domínio de relacionamento, não domínio operacional interno.
2. Adicionar lifecycle mínimo para documentos: proposto, ativo, substituído, arquivado.
3. Adicionar distinção entre domínio, documento, padrão, template, playbook e framework.
4. Adicionar modelo mínimo de interfaces entre domínios.
5. Adicionar critérios para criação de novos domínios.
6. Adicionar modelo mínimo de conformidade de produto consumidor.
7. Adicionar modelo mínimo de governança para agentes de IA.

## 21. Melhorias recomendadas

- Criar matriz de dependências por criticidade.
- Criar mapa de atualização obrigatória quando uma Policy, KES ou ADR mudar.
- Criar contrato de adoção da KEP por produto.
- Criar catálogo futuro de frameworks.
- Criar catálogo futuro de agentes de IA.
- Criar checklist de onboarding por papel.
- Criar política de depreciação documental.
- Criar diagrama separado para Corporate como domínio incubado/transversal.

## 22. Nota de maturidade

Nota: 7,6 / 10.

Justificativa:

- O modelo é claro e estrategicamente útil.
- A separação empresa/plataforma/produto está madura para a fase atual.
- A modelagem documental está forte.
- A arquitetura ainda precisa evoluir em contratos, lifecycle, conformidade de produtos, frameworks e agentes de IA.

## 23. Decisão

Aprovar com ajustes.

Motivo: o modelo é suficientemente forte para orientar a KEP agora, mas ainda não deve ser tratado como versão final sem os ajustes obrigatórios listados nesta revisão.

## 24. Próximos passos

1. Aplicar ajustes obrigatórios no `PLATFORM_MODEL.md`.
2. Validar `git diff --check`.
3. Revisar se os ajustes preservam compatibilidade com AutoBody ERP e produtos futuros.
4. Definir se o modelo deve gerar uma KES específica no futuro.
5. Criar, em etapa posterior, matriz de conformidade para produtos consumidores.
