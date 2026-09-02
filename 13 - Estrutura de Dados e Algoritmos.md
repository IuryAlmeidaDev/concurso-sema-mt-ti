---
tags:
  - estrutura-de-dados
  - algoritmos
  - complexidade
---
# 🧩 Estrutura de Dados e Algoritmos

---

## 1. Estruturas de Dados Lineares e Não Lineares

### 1.1 Listas, Pilhas e Filas
* **Lista Encadeada (Linked List):** Elementos (nós) contêm dados e ponteiros para o próximo elemento. Inserção no início é $O(1)$.
* **Pilha (Stack):** Política **LIFO (Last In, First Out)**. Operações: `push()` (inserir no topo) e `pop()` (remover do topo) em $O(1)$. Aplicações: chamadas recursivas, avaliação de expressões matemáticas, desfazimento (Ctrl+Z).
* **Fila (Queue):** Política **FIFO (First In, First Out)**. Operações: `enqueue()` (inserir no final) e `dequeue()` (remover do início) em $O(1)$. Aplicações: filas de impressão, buffers de rede, escalonamento de processos.

### 1.2 Tabelas Hash (Hash Tables)
* Mapeamento chave-valor indexado através de uma função hash.
* Desempenho médio para inserção, busca e remoção: **$O(1)$**.
* *Tratamento de Colisões:*
  - **Encadeamento Aberto/Separado:** Cada posição da tabela aponta para uma lista encadeada com os elementos que colidiram.
  - **Endereçamento Aberto:** Procura outra posição livre na própria tabela (Sondagem Linear, Quadrática ou Duplo Hashing).

### 1.3 Árvores
* **Árvore Binária de Busca (BST):** Para todo nó $N$, os nós da subárvore esquerda têm valores menores que $N$, e os da subárvore direita têm valores maiores. Busca média: $O(\log n)$; pior caso (degenerada em lista): $O(n)$.
* **Árvore AVL:** Árvore binária de busca **auto-balanceada**. A diferença de altura entre subárvores de qualquer nó (fator de balanceamento) deve ser $-1, 0$ ou $+1$. Mantém busca em **$O(\log n)$** no pior caso através de rotações simples e duplas.
* **Árvores B / B+:** Árvores balanceadas multicaminho (cada nó pode ter muitos filhos e chaves). Amplamente utilizadas em **sistemas de arquivos e índices de bancos de dados relacionais** para minimizar acessos a disco.

---

## 2. Algoritmos de Ordenação e Busca

### 2.1 Comparativo de Algoritmos de Ordenação

| Algoritmo | Melhor Caso | Caso Médio | Pior Caso | Estável? | Estratégia |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Bubble Sort** | $O(n)$ | $O(n^2)$ | $O(n^2)$ | Sim | Comparações adjacentes |
| **Insertion Sort** | $O(n)$ | $O(n^2)$ | $O(n^2)$ | Sim | Inserção progressiva |
| **Selection Sort** | $O(n^2)$ | $O(n^2)$ | $O(n^2)$ | Não | Seleciona o menor |
| **Merge Sort** | $O(n \log n)$ | $O(n \log n)$ | $O(n \log n)$ | Sim | Dividir para Conquistar |
| **Quick Sort** | $O(n \log n)$ | $O(n \log n)$ | $O(n^2)$ | Não | Particionamento com Pivô |
| **Heap Sort** | $O(n \log n)$ | $O(n \log n)$ | $O(n \log n)$ | Não | Estrutura de Heap Máximo |

### 2.2 Algoritmos de Busca
* **Busca Linear:** Percorre elemento por elemento. Funciona em arrays desordenados. Complexidade: $O(n)$.
* **Busca Binária:** Exige que a coleção esteja previamente **ordenada**. Divide o espaço de busca pela metade a cada passo. Complexidade: **$O(\log n)$**.

---

## 3. Notação Assintótica Big-O

* Classificação da taxa de crescimento do tempo de execução ou espaço de memória conforme o tamanho da entrada $n$:
  - $O(1)$: Tempo constante (acesso direto a array por índice, hash ideal).
  - $O(\log n)$: Tempo logarítmico (busca binária).
  - $O(n)$: Tempo linear (percorrer lista simples).
  - $O(n \log n)$: Linear-logarítmico (Merge Sort, Heap Sort).
  - $O(n^2)$: Tempo quadrático (laços aninhados, Bubble Sort).
  - $O(2^n)$: Tempo exponencial (força bruta, Fibonacci ingênuo).

---

### 📝 Checklist de Revisão
- [ ] Distinguir Pilha (LIFO) de Fila (FIFO)
- [ ] Saber as complexidades do Merge Sort ($O(n \log n)$ sempre) e Quick Sort (pior caso $O(n^2)$)
- [ ] Entender a condição necessária para aplicar Busca Binária (dados ordenados)
- [ ] Conhecer o fator de balanceamento da Árvore AVL (-1, 0, 1)
