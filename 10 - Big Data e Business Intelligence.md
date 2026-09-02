---
tags:
  - big-data
  - bi
  - nosql
  - hadoop
---
# 📊 Big Data e Business Intelligence (BI)

---

## 1. Big Data e Bancos NoSQL

### 1.1 Os "Vs" do Big Data
* **Volume:** Quantidade massiva de terabytes, petabytes ou exabytes de dados gerados.
* **Velocidade:** Taxa acelerada com que novos dados são produzidos e precisam ser processados (tempo real / streaming).
* **Variedade:** Diversidade de formatos: estruturados (tabelas relacionais), semiestruturados (JSON, XML) e não estruturados (áudios, vídeos, imagens).
* **Veracidade:** Confiabilidade e precisão dos dados coletados.
* **Valor:** O retorno e benefício de negócio extraído dos dados para a tomada de decisão.

### 1.2 Ecossistema NoSQL e Teorema CAP
* **Teorema CAP (Brewer):** Em um sistema distribuído de dados, é impossível garantir simultaneamente mais de duas das seguintes propriedades:
  - **C (Consistência):** Todos os nós enxergam os mesmos dados no mesmo instante.
  - **A (Disponibilidade):** Toda requisição recebe uma resposta (sem erro), mesmo que não garanta o dado mais recente.
  - **P (Tolerância a Partições):** O sistema continua operando mesmo se houver falha de comunicação entre os nós de rede. *(Em redes distribuídas, a tolerância a partições é mandatória; logo, escolhe-se entre CP ou AP)*.
* **Categorias de Bancos NoSQL:**
  1. **Orientados a Documentos:** Armazenam dados em documentos JSON/BSON com esquema flexível (ex.: MongoDB, CouchDB).
  2. **Chave-Valor (Key-Value):** Armazenamento simples e ultrarrápido baseado em pares chave-valor em memória (ex.: Redis, Memcached).
  3. **Família de Colunas (Wide-Column):** Otimizados para consultas analíticas sobre grandes volumes (ex.: Apache Cassandra, HBase).
  4. **Orientados a Grafos:** Modelam relacionamentos complexos com nós e arestas (ex.: Neo4j).

### 1.3 Ecossistema Hadoop
* **HDFS (Hadoop Distributed File System):** Sistema de arquivos distribuído baseado em arquitetura Master/Worker:
  - *NameNode (Master):* Gerencia os metadados do sistema de arquivos e a localização dos blocos.
  - *DataNodes (Workers):* Armazenam os blocos reais de dados e replicam blocos para tolerância a falhas.
* **MapReduce:** Modelo de programação para processamento massivo distribuído dividido em duas funções: `Map()` (filtra e transforma) e `Reduce()` (agrega e totaliza).

---

## 2. Business Intelligence (BI) e Data Warehouse

### 2.1 Conceitos e Arquitetura de BI
* **OLTP (Online Transaction Processing):** Bancos relacionais tradicionais, altamente normalizados, voltados para operações rápidas de gravação/atualização no dia a dia.
* **OLAP (Online Analytical Processing):** Sistemas analíticos, desnormalizados, otimizados para consultas complexas e agregação de históricos.
* **Data Warehouse (DW):** Repositório centralizado de dados integrados, orientados por assunto, integrados, variantes no tempo e não voláteis.
* **Data Lake:** Repositório que armazena grandes volumes de dados em seu formato bruto (*raw*), estruturados ou não.

### 2.2 Processos de Integração: ETL vs. ELT
* **ETL (Extract, Transform, Load):** Dados são extraídos da fonte, transformados em um servidor de processamento intermediário (Staging) e carregados no Data Warehouse.
* **ELT (Extract, Load, Transform):** Dados são extraídos e carregados diretamente no Data Lake / DW moderno (nuvem), aproveitando o poder de processamento do próprio destino para transformá-los.

### 2.3 Modelagem Dimensional (Kimball)
* **Tabela Fato:** Contém métricas quantitativas de negócio (fatos numéricos) e chaves estrangeiras que apontam para tabelas dimensão. Ex.: quantidade de autuações ambientais, valores de multas.
* **Tabela Dimensão:** Contém o contexto descritivo das métricas (tempo, localização, tipo de fiscalizado, agente).
* **Esquema Estrela (Star Schema):** Tabela fato central conectada diretamente a dimensões **totalmente desnormalizadas**. Consultas mais simples e com menos JOINs.
* **Esquema Floco de Neve (Snowflake Schema):** As dimensões são **normalizadas** em subtabelas. Reduz redundância, mas exige mais operações de JOIN nas consultas.

---

### 📝 Checklist de Revisão
- [ ] Memorizar os 5 Vs do Big Data
- [ ] Entender o trade-off do Teorema CAP (CP vs. AP)
- [ ] Distinguir OLTP de OLAP
- [ ] Comparar Star Schema com Snowflake Schema
