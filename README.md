# Food Rescue - ISI TP1 (2026/27)

**Aluno:** Andre Rodrigues  
**Unidade curricular:** Integracao de Sistemas de Informacao  
**Tema:** Food Rescue - integracao de dados para apoio a redistribuicao de excedentes alimentares  
**Plataforma principal:** KNIME  
**Repositorio:** https://github.com/Andrefr28/ISI-TP1-26900

## Objetivo

Desenvolver um processo ETL que integre dados sobre excedentes alimentares, instituicoes, informacao geografica e voluntarios, para gerar propostas rastreaveis de distribuicao de alimentos.

O projeto pretende demonstrar:

- recolha de dados a partir de fontes heterogeneas;
- limpeza, validacao e normalizacao de dados;
- cruzamento entre excedentes, instituicoes, localizacao e transporte;
- persistencia dos resultados em PostgreSQL;
- visualizacao de indicadores em Grafana.

## Arquitetura prevista

1. **Node-RED** simula a submissao de reports de excedentes alimentares.
2. **MongoDB** guarda os reports em documentos JSON.
3. **KNIME** centraliza o processo ETL.
4. **GEO API PT** enriquece ou valida informacao geografica.
5. **PostgreSQL** guarda voluntarios e resultados finais.
6. **Grafana** apresenta indicadores do processo.

## Estrutura do repositorio

- `docs/` - enunciado e proposta final do projeto.
- `workflows/` - workflows KNIME a desenvolver.
- `relatorio/` - relatorio final do trabalho.
- `dados/` - dados auxiliares, se forem necessarios durante a implementacao.

## Documento principal

A proposta final encontra-se em:

`docs/Food_Rescue_Defesa_Proposta_final.html`
