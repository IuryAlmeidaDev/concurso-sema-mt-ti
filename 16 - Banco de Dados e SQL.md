---
tags:
  - banco-de-dados
  - sql
  - acid
  - modelagem
---
# 🗄️ Banco de Dados e SQL

---

## 1. Modelagem Relacional e Normalização

### 1.1 Modelo Entidade-Relacionamento (MER)
* **Entidade:** Objeto do mundo real distinguível de outros (ex.: Fiscal, ProcessoAmbiental).
* **Relacionamento:** Associação entre entidades com cardinalidade: $1:1$, $1:N$, $N:N$. Relacionamentos $N:N$ geram uma nova tabela associativa no modelo relacional.
* **Chave Primária (PK):** Identificador exclusivo de cada tupla/linha da tabela.
* **Chave Estrangeira (FK):** Atributo que estabelece a integridade referencial com a chave primária de outra tabela.

### 1.2 Formas Normais (Normalização)
Processo sistemático para eliminar redundâncias e anomalias de inserção, atualização e exclusão:
* **Primeira Forma Normal (1FN):**
  - Todos os atributos contêm apenas valores atômicos e indivisíveis (sem atributos multivalorados ou compostos).
* **Segunda Forma Normal (2FN):**
  - Está na 1FN;
  - Todos os atributos não-chave dependem funcionalmente da **totalidade** da chave primária (elimina dependência parcial em chaves compostas).
* **Terceira Forma Normal (3FN):**
  - Está na 2FN;
  - Não existem dependências funcionais transitivas entre atributos não-chave (nenhum atributo não-chave depende de outro atributo não-chave).

---

## 2. Linguagem SQL

### 2.1 Subconjuntos da SQL
* **DDL (Data Definition Language):** Estrutura dos dados (`CREATE`, `ALTER`, `DROP`, `TRUNCATE`).
* **DML (Data Manipulation Language):** Manipulação de dados (`INSERT`, `UPDATE`, `DELETE`, `SELECT`).
* **DCL (Data Control Language):** Controle de acesso (`GRANT`, `REVOKE`).
* **TCL (Transaction Control Language):** Controle transacional (`COMMIT`, `ROLLBACK`, `SAVEPOINT`).

### 2.2 Consultas e JOINs
* **INNER JOIN:** Retorna apenas os registros que possuem correspondência em ambas as tabelas.
* **LEFT JOIN (ou LEFT OUTER JOIN):** Retorna todos os registros da tabela da esquerda e os correspondentes da direita (ou `NULL` onde não houver).
* **RIGHT JOIN:** Retorna todos os registros da tabela da direita.
* **FULL JOIN:** Retorna registros de ambas as tabelas, preenchendo com `NULL` onde não houver correspondência.
* **Cláusulas de Agrupamento:**
  - `WHERE`: Filtra linhas **antes** do agrupamento.
  - `HAVING`: Filtra grupos **após** a agregação com funções (`COUNT`, `SUM`, `AVG`, `MAX`, `MIN`).

---

## 3. Transações e Propriedades ACID

* **Atomicidade:** A transação é tratada como uma unidade indivisível: ou todas as operações são executadas com sucesso (`COMMIT`), ou todas são desfeitas (`ROLLBACK`).
* **Consistência:** A transação leva o banco de dados de um estado válido a outro estado válido, respeitando todas as restrições de integridade.
* **Isolamento:** As transações concorrentes são executadas de forma isolada, como se fossem executadas sequencialmente.
* **Durabilidade:** Uma vez confirmada (`COMMIT`), as alterações tornam-se permanentes, mesmo em caso de falha de energia ou reinicialização do servidor.

### 3.1 Anomalias e Níveis de Isolamento
| Nível de Isolamento | Leitura Suja (Dirty Read) | Leitura Não Repetível | Leitura Fantasma (Phantom Read) |
| :--- | :---: | :---: | :---: |
| **Read Uncommitted** | Ocorre | Ocorre | Ocorre |
| **Read Committed** | Previne | Ocorre | Ocorre |
| **Repeatable Read** | Previne | Previne | Ocorre |
| **Serializable** | Previne | Previne | Previne |

---

### 📝 Checklist de Revisão
- [ ] Identificar a violação de 1FN, 2FN e 3FN em uma tabela dada
- [ ] Diferenciar a função do `WHERE` e do `HAVING`
- [ ] Conhecer a diferença entre INNER JOIN e LEFT JOIN
- [ ] Memorizar os 4 pilares do ACID
- [ ] Lembrar a ordem dos níveis de isolamento e as anomalias prevenidas
