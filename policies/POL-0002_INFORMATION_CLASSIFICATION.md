# POL-0002 - Classificação da Informação

## Situação

Ativa

## Proprietária

KDEVY

## Objetivo

Definir níveis de classificação da informação para documentos, padrões, prompts, playbooks, arquitetura, automações e conhecimento da KDEVY Engineering Platform.

## Níveis de classificação

### Público

Informação aprovada para divulgação externa.

Exemplos:

- materiais institucionais publicados;
- descrições genéricas autorizadas;
- conteúdos de marketing aprovados.

### Interno

Informação de uso interno da KDEVY.

Exemplos:

- documentação operacional;
- padrões internos;
- roadmaps internos;
- glossários e processos não sensíveis.

### Confidencial

Informação que pode causar impacto comercial, técnico ou operacional se divulgada indevidamente.

Exemplos:

- arquitetura detalhada;
- decisões estratégicas;
- prompts proprietários;
- playbooks internos;
- métricas de produto;
- planos de IA.

### Restrito

Informação de acesso altamente limitado.

Exemplos:

- segredos;
- credenciais;
- chaves;
- dados sensíveis de clientes;
- incidentes de segurança;
- informações regulatórias críticas.

## Classificação padrão

Na ausência de marcação explícita, o conteúdo da KEP deve ser tratado como Interno.

## Regras para agentes de IA

- Respeitar a classificação indicada.
- Não promover informação Interna, Confidencial ou Restrita para contexto público.
- Não registrar segredos, credenciais ou dados sensíveis neste repositório.
- Sinalizar dúvidas de classificação antes de ampliar a distribuição de conteúdo.
