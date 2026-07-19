Você é o arquiteto responsável pela KDEVY Engineering Platform.

TAREFA

Executar o fechamento corretivo da Wave 6, tratando as pendências encontradas após a criação da tag:

wave-6-complete

A tag existente não deve ser alterada, apagada ou movida.

DOCUMENTOS PRINCIPAIS

Leia integralmente:

- architecture/DELIVERY_FRAMEWORK.md
- architecture/DELIVERY_FRAMEWORK_REVIEW.md
- architecture/REVIEW_FRAMEWORK.md
- architecture/VALIDATION_FRAMEWORK.md
- governance/PROJECT_STATE.md
- roadmap/ROADMAP.md
- architecture/KEP_MASTER_ROADMAP.md
- README.md
- specifications/KES-0000_MASTER_SPECIFICATION.md
- specifications/engineering/KES-0001_ENGINEERING_CONSTITUTION.md

Consulte também Policies, ADRs e outros documentos apenas quando necessários para validar consistência.

OBJETIVO

Aplicar ao DELIVERY_FRAMEWORK todos os ajustes obrigatórios identificados em:

architecture/DELIVERY_FRAMEWORK_REVIEW.md

Além disso, alinhar o estado documental da plataforma com o histórico real do Git até a Wave 6.

ESCOPO AUTORIZADO

Você pode modificar somente quando necessário:

- architecture/DELIVERY_FRAMEWORK.md
- governance/PROJECT_STATE.md
- roadmap/ROADMAP.md
- architecture/KEP_MASTER_ROADMAP.md
- README.md
- architecture/DELIVERY_FRAMEWORK_REVIEW.md

Não modifique outros arquivos sem necessidade comprovada.

AJUSTES OBRIGATÓRIOS DO DELIVERY FRAMEWORK

Trate explicitamente:

1. Entrega operacional.
2. Entregas que combinam múltiplos tipos.
3. Critérios objetivos para classificação do nível de entrega.
4. Delivery Readiness.
5. Validade da validação no momento da entrega.
6. Correspondência entre versão validada e versão entregue.
7. Alterações materiais ocorridas após validação.
8. Communication Readiness.
9. Rollback Readiness ou justificativa de não aplicabilidade.
10. Aceitação formal de riscos residuais.
11. Hash, commit, checksum, snapshot ou referência verificável.
12. Autoridade de aprovação por nível.
13. Conflitos de interesse.
14. Divergência entre aprovadores.
15. Separação entre aprovador de exceção e aprovador de entrega.
16. Entrega bloqueada.
17. Entrega suspensa.
18. Entrega parcial.
19. Reentrega.
20. Republicação após correção.
21. Invalidação de entrega anterior.
22. Relação entre entrega anterior, sucessora e substituta.
23. Ownership do rollback.
24. Critérios de acionamento do rollback.
25. Comunicação obrigatória.
26. Registro de comunicação.
27. Métricas futuras de entrega.
28. Integração explícita com AGENT_REGISTRY para entrega de agentes.
29. Bloqueio por validação expirada.
30. Bloqueio por versão diferente da versão validada.
31. Bloqueio por alteração material não revalidada.
32. Bloqueio por comunicação obrigatória ausente.
33. Bloqueio por rollback obrigatório não demonstrado.

REGRAS ARQUITETURAIS

- Review avalia qualidade.
- Validation comprova conformidade.
- Delivery governa autorização, publicação, disponibilização, registro, rollback e encerramento.
- Review aprovado não autoriza entrega sozinho.
- Validation conforme não autoriza entrega sozinha.
- A entrega deve referenciar uma versão específica e verificável do artefato.
- Alteração material após validação deve exigir revalidação proporcional.
- Não transformar o framework em implementação dependente de ferramenta.
- Não criar automações ou código.
- Não definir ainda ENGINEERING_ENTITY_MODEL.
- Não definir ainda LIFECYCLE_MODEL.
- Não abrir formalmente a Wave 7.
- Não alterar nem recriar tags.
- Não fazer commit.
- Não executar push.

PROJECT_STATE

Atualize governance/PROJECT_STATE.md para refletir o estado real:

- Waves 1 a 4 possuem tags semânticas.
- Wave 5 foi concluída por commits, mas não possui tag própria.
- Wave 6 possui a tag wave-6-complete.
- Wave 6 está passando por fechamento corretivo devido ao review posterior do Delivery Framework.
- Wave 7 ainda não foi iniciada.
- Próximo movimento planejado: piloto controlado de adoção da KEP pelo AutoBody ERP, condicionado ao fechamento final da Wave 6.

ROADMAPS

Analise roadmap/ROADMAP.md e architecture/KEP_MASTER_ROADMAP.md.

Não apague histórico.

Defina explicitamente o papel de cada documento.

Preferência:

- roadmap/ROADMAP.md: roadmap fundacional ou histórico inicial.
- architecture/KEP_MASTER_ROADMAP.md: roadmap estratégico mestre atual.

Caso essa definição seja coerente com os documentos existentes, registre-a claramente para evitar que agentes tratem ambos como fontes concorrentes.

DELIVERY_FRAMEWORK_REVIEW

Preserve o relatório como evidência histórica.

Acrescente ao final uma seção de tratamento da revisão contendo:

- data do tratamento;
- status de cada ajuste obrigatório;
- arquivos afetados;
- validações realizadas;
- riscos residuais;
- decisão recomendada para revisão final.

Não altere a avaliação original de 8,3/10.

KEP_SUMMARY.HTML

Não modifique, não remova e não mova KEP_SUMMARY.html.

Ele deve continuar não rastreado até decisão posterior do usuário.

VALIDAÇÕES

Execute, quando disponíveis:

- git diff --check;
- validação de links locais modificados;
- validação básica de Markdown;
- verificação de arquivos modificados;
- busca por contradições entre Delivery, Project State e roadmaps;
- confirmação de que nenhuma tag ou commit foi criado.

SAÍDA FINAL

Apresente:

1. Resumo executivo.
2. Ajustes obrigatórios aplicados.
3. Ajustes parcialmente aplicados.
4. Ajustes não aplicados e justificativa.
5. Arquivos modificados.
6. Validações executadas.
7. Contradições encontradas.
8. Riscos residuais.
9. Recomendação para revisão arquitetural final.
10. Estimativa atualizada de maturidade.
11. Confirmação explícita de que não fez commit, tag ou push.
