# Revisão de Fronteiras de Repositório

## 1. Resumo executivo

Esta revisão avalia a separação arquitetural entre KdevX Systems, KdevX Engineering Platform, AutoBody ERP e produtos futuros.

O estado atual resolve uma necessidade real: registrar a identidade institucional da KdevX Systems enquanto a empresa ainda estrutura sua plataforma proprietária de engenharia. Porém, a presença de `docs/corporate/` dentro do repositório da KEP mistura duas responsabilidades diferentes:

- identidade institucional da empresa;
- plataforma proprietária de engenharia.

A recomendação técnica é adotar a Opção C: manter temporariamente `docs/corporate/` dentro da KEP, mas marcar explicitamente essa área como candidata à extração futura para um repositório institucional separado, como `kdevx-systems`.

Essa opção preserva velocidade e contexto agora, mas reconhece a dívida arquitetural e define critérios objetivos para extração.

## 2. Estado atual do repositório

O repositório `kdevx-engineering-platform` contém a fundação inicial da KEP, incluindo:

- blueprint da plataforma;
- governança;
- conhecimento;
- especificações;
- políticas;
- padrões;
- templates;
- ADRs;
- roadmap;
- scripts;
- licença interna proprietária;
- área institucional em `docs/corporate/`, ainda em construção.

A KEP está descrita como plataforma-mãe proprietária da KdevX Systems. O AutoBody ERP está descrito como primeiro produto consumidor da KEP, sem cópia de código-fonte para este repositório.

A área `docs/corporate/` foi criada para registrar identidade, visão, missão, valores, cultura, história, estratégia e diretrizes internas de marca da KdevX Systems.

## 3. Problema arquitetural identificado

O problema central é a fronteira de responsabilidade.

A KEP é uma plataforma de engenharia. Ela deve governar como a KdevX Systems cria, documenta, padroniza, automatiza e entrega tecnologia.

A identidade corporativa da KdevX Systems é mais ampla do que a KEP. Ela deve orientar a KEP, o AutoBody ERP e qualquer produto futuro. Portanto, se a identidade corporativa permanecer definitivamente dentro da KEP, o repositório da plataforma passa a carregar uma responsabilidade institucional que não pertence apenas à plataforma.

Isso cria risco de:

- a KEP parecer a entidade institucional completa;
- produtos futuros dependerem conceitualmente de um repositório de plataforma para entender a empresa;
- documentação institucional evoluir no mesmo fluxo de governança da plataforma, mesmo quando não for decisão de engenharia;
- agentes de IA confundirem empresa, plataforma e produto;
- aumento de acoplamento entre marca corporativa e arquitetura da KEP.

## 4. Separação conceitual

### KdevX Systems

A KdevX Systems é a entidade institucional proprietária dos ativos intelectuais, plataformas, produtos, documentos, padrões, prompts, playbooks, arquitetura e práticas criadas sob sua direção.

Ela é a fonte institucional de identidade, visão, missão, valores, cultura, estratégia e diretrizes de marca.

### KdevX Engineering Platform

A KEP é a plataforma proprietária de engenharia da KdevX Systems.

Ela organiza governança técnica, conhecimento, especificações, padrões, políticas, automação, IA, entrega e documentação operacional para sustentar produtos.

A KEP é um ativo estratégico da empresa, mas não é a empresa inteira.

### AutoBody ERP

O AutoBody ERP é o primeiro produto consumidor da KEP.

Ele deve consumir padrões, políticas, conhecimento e práticas da plataforma, mantendo sua identidade de produto e seu código-fonte fora deste repositório.

### Produtos futuros

Produtos futuros devem poder consumir:

- identidade institucional da KdevX Systems;
- padrões e práticas da KEP;
- políticas aplicáveis;
- diretrizes de marca e governança.

Eles não devem depender de ambiguidade entre empresa, plataforma e produto para entender suas responsabilidades.

## 5. Opção A: manter `docs/corporate/` dentro da KEP

### Vantagens

- Mantém todo o contexto inicial em um único repositório.
- Reduz custo operacional enquanto a empresa ainda está na fase de fundação.
- Facilita uso imediato por membros e agentes de IA.
- Evita criar um repositório institucional antes de haver volume e governança suficientes.
- Permite alinhar rapidamente identidade corporativa com políticas e padrões da KEP.

### Desvantagens

- Mistura identidade institucional com plataforma de engenharia.
- Pode fazer a KEP parecer a fonte completa da identidade da KdevX Systems.
- Aumenta risco de acoplamento entre decisões corporativas e decisões técnicas.
- Pode dificultar consumo por produtos futuros que precisem da identidade corporativa sem depender da KEP.
- Pode tornar o repositório da KEP mais amplo do que sua finalidade arquitetural.

### Riscos

- Confusão conceitual entre KdevX Systems e KEP.
- Onboarding com leitura excessivamente centrada na plataforma.
- Agentes de IA usando documentos de plataforma como se fossem governança institucional completa.
- Crescimento desorganizado de conteúdo institucional dentro de um repositório técnico.

## 6. Opção B: criar um repositório institucional separado `kdevx-systems`

### Vantagens

- Cria fronteira limpa entre empresa e plataforma.
- Permite que a identidade institucional seja consumida por KEP, AutoBody ERP e produtos futuros sem acoplamento.
- Facilita governança própria para documentos corporativos.
- Reduz ambiguidade para membros e agentes de IA.
- Escala melhor quando houver múltiplos produtos e plataformas.

### Desvantagens

- Aumenta custo operacional agora.
- Exige governança de múltiplos repositórios desde cedo.
- Pode gerar duplicação de contexto se referências cruzadas não forem bem definidas.
- Pode ser prematuro se a identidade institucional ainda estiver em formação.
- Exige decisão sobre permissões, responsáveis, templates e fluxo de mudança do repositório institucional.

### Riscos

- Fragmentação antes de maturidade suficiente.
- Documentos corporativos ficarem desconectados da engenharia prática.
- Agentes de IA perderem contexto se o repositório institucional não for sempre carregado junto da KEP.
- Criação de estrutura administrativa maior do que o problema atual exige.

## 7. Opção C: manter temporariamente dentro da KEP, mas marcar como candidato à extração futura

### Vantagens

- Preserva velocidade da Onda 1.
- Mantém contexto institucional perto da plataforma enquanto a base ainda está sendo formada.
- Reconhece explicitamente a dívida arquitetural.
- Evita criar repositório novo antes de haver critérios claros.
- Permite que a identidade corporativa amadureça antes de ser extraída.
- Dá aos agentes de IA uma orientação temporária clara sobre a separação conceitual.

### Desvantagens

- Ainda mantém responsabilidades misturadas no curto prazo.
- Exige disciplina documental para não normalizar a mistura.
- Depende de revisões futuras para que a extração não seja esquecida.
- Pode gerar links internos que precisarão ser atualizados depois.

### Riscos

- A dívida arquitetural pode se tornar permanente por inércia.
- Conteúdo institucional pode crescer demais dentro da KEP.
- Produtos futuros podem começar a depender diretamente de caminhos internos da KEP para identidade corporativa.
- Decisões institucionais podem ser discutidas dentro de fluxos de revisão pensados para engenharia.

### Como documentar a dívida arquitetural

Se esta opção for adotada, a dívida deve ser registrada explicitamente:

- criar uma ADR ou atualizar a ADR-0001 indicando a permanência temporária;
- marcar `docs/corporate/` como área candidata à extração;
- registrar critérios objetivos para mover a área para `kdevx-systems`;
- adicionar o tema ao roadmap ou ao estado do projeto;
- evitar que produtos futuros dependam de caminhos permanentes dentro da KEP;
- revisar a fronteira a cada nova onda relevante.

## 8. Recomendação técnica final

A recomendação técnica é a Opção C.

Manter `docs/corporate/` temporariamente dentro da KEP é adequado para a fase atual, desde que a decisão seja registrada como dívida arquitetural controlada.

A KdevX Systems ainda está consolidando sua base institucional e técnica. Criar imediatamente um repositório `kdevx-systems` pode adicionar governança antes de haver maturidade suficiente. Ao mesmo tempo, manter a identidade corporativa na KEP sem ressalvas seria arquiteturalmente incorreto, porque a identidade da empresa é mais ampla do que a plataforma.

Portanto:

- manter `docs/corporate/` por enquanto;
- declarar que a área não pertence conceitualmente à KEP;
- tratar a área como incubada dentro do repositório da KEP;
- definir critérios para extração futura;
- preservar a separação entre KdevX Systems, KEP, AutoBody ERP e produtos futuros.

## 9. Impactos na estrutura atual

A estrutura atual passa a ter uma área que é documentalmente útil, mas arquiteturalmente transversal.

Impactos:

- `docs/corporate/` deve ser tratada como documentação institucional incubada.
- A KEP continua sendo plataforma proprietária de engenharia.
- O README principal precisa deixar clara a diferença entre empresa, plataforma e produto.
- O blueprint precisa continuar afirmando que a identidade corporativa fica em `docs/corporate/`, mas que a KdevX Systems é a entidade institucional.
- A extração futura pode exigir atualização de links em README, ADRs, blueprint e documentos de onboarding.

## 10. Impactos na governança

A governança precisa distinguir decisões institucionais de decisões técnicas.

Impactos:

- ADRs da KEP podem registrar decisões sobre fronteiras de repositório.
- Documentos de identidade corporativa não devem virar especificações técnicas da KEP.
- Políticas de propriedade intelectual continuam aplicáveis.
- Revisões futuras devem avaliar se uma mudança em `docs/corporate/` é institucional, técnica ou ambas.
- A criação de `kdevx-systems` deve ter critérios próprios de ownership, revisão e classificação da informação.

## 11. Impactos em documentação, IA e onboarding

### Documentação

A documentação ganha clareza se cada documento declarar sua autoridade:

- documentos corporate orientam identidade institucional;
- documentos KEP orientam engenharia;
- documentos de produto orientam produto.

### IA

Agentes de IA precisam de instruções explícitas para não tratar a KEP como sinônimo da KdevX Systems.

Eles devem entender que:

- KdevX Systems é a entidade institucional;
- KEP é plataforma proprietária de engenharia;
- AutoBody ERP é produto consumidor;
- produtos futuros podem consumir tanto identidade institucional quanto padrões da KEP.

### Onboarding

O onboarding deve começar pela separação conceitual:

1. entender a KdevX Systems;
2. entender a KEP;
3. entender produtos consumidores;
4. entender políticas de propriedade intelectual e classificação da informação.

Essa ordem reduz ambiguidade e melhora a leitura por membros e agentes de IA.

## 12. Próximos passos recomendados

1. Registrar formalmente que `docs/corporate/` é área institucional incubada dentro da KEP.
2. Atualizar ou criar ADR para marcar a extração futura como possibilidade explícita.
3. Definir critérios de extração para o repositório `kdevx-systems`.
4. Evitar que produtos futuros criem dependência permanente de caminhos internos da KEP para identidade corporativa.
5. Revisar a fronteira ao final da Onda 1 e antes de iniciar múltiplos produtos consumidores.
6. Criar, quando necessário, um inventário de documentos que migrariam para `kdevx-systems`.
7. Manter a área livre de dados pessoais sensíveis, dados privados e código de produto.

## 13. Critérios para decisão final

A decisão final deve considerar:

- a quantidade de produtos consumidores além do AutoBody ERP;
- o volume de documentos institucionais;
- a necessidade de governança corporativa independente;
- a frequência de mudanças em identidade, marca, estratégia e cultura;
- a necessidade de permissões diferentes entre documentos institucionais e documentos técnicos;
- a maturidade da KEP como plataforma proprietária;
- o custo de manter referências cruzadas entre repositórios;
- a clareza para agentes de IA;
- a clareza para novos membros;
- o risco de confundir empresa, plataforma e produto.

Sinais fortes para extração:

- existência de mais de um produto consumidor ativo;
- crescimento relevante de documentos institucionais;
- necessidade de ciclo de aprovação corporativo separado;
- uso frequente da identidade KdevX fora do contexto da KEP;
- necessidade de publicar materiais institucionais sem expor documentação técnica.

## 14. Checklist de aprovação

- [ ] A KdevX Systems está claramente definida como entidade institucional.
- [ ] A KEP está claramente definida como plataforma proprietária de engenharia.
- [ ] O AutoBody ERP está claramente definido como produto consumidor da KEP.
- [ ] Produtos futuros não dependem conceitualmente de a identidade corporativa morar na KEP.
- [ ] A presença de `docs/corporate/` dentro da KEP está marcada como temporária ou incubada.
- [ ] A dívida arquitetural foi registrada em ADR, roadmap ou estado do projeto.
- [ ] Há critérios claros para extrair `docs/corporate/` para `kdevx-systems`.
- [ ] Não há dados pessoais sensíveis, dados privados ou código de produto nos documentos institucionais.
- [ ] Agentes de IA recebem orientação explícita sobre empresa, plataforma e produto.
- [ ] A decisão foi revisada antes de criar novos produtos consumidores.
