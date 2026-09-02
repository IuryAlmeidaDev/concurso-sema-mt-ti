---
tags:
  - inteligencia-artificial
  - machine-learning
  - deep-learning
  - nlp
  - dados
---
# 🧠 Inteligência Artificial (IA) e Dados

> [!NOTE]
> A Cesgranrio incluiu explicitamente no edital tópicos de IA Generativa, Processamento de Linguagem Natural (NLP) e Aprendizado de Máquina, refletindo as inovações tecnológicas dos órgãos de controle e fiscalização ambiental.

---

## 1. Machine Learning (Aprendizado de Máquina)

### 1.1 Paradigmas de Aprendizado
* **Aprendizado Supervisionado:**
  - O modelo é treinado com dados rotulados (pares de entrada e saída esperada).
  - *Classificação:* A saída é uma variável discreta/categórica (ex.: identificar se uma imagem contém desmatamento: Sim/Não). Algoritmos: Regressão Logística, Árvores de Decisão, Random Forest, SVM (Support Vector Machines), Naive Bayes, KNN.
  - *Regressão:* A saída é um valor contínuo/numérico (ex.: previsão do valor de um imóvel ou volume de água). Algoritmos: Regressão Linear, Ridge, Lasso.
* **Aprendizado Não Supervisionado:**
  - O modelo busca padrões, estruturas ou agrupamentos intrínsecos em dados **não rotulados**.
  - *Clustering (Agrupamento):* K-Means, DBSCAN, Agrupamento Hierárquico.
  - *Redução de Dimensionalidade:* PCA (Principal Component Analysis), t-SNE.
* **Aprendizado por Reforço:**
  - Um agente aprende a tomar decisões em um ambiente interagindo por tentativa e erro, recebendo **recompensas** por ações desejadas ou **penalidades** por erros. Algoritmos: Q-Learning, Deep Q-Networks (DQN).

### 1.2 Métricas de Avaliação de Modelos
* **Matriz de Confusão:**
  - **Acurácia:** Proporção de predições corretas sobre o total.
  - **Precisão:** $TP / (TP + FP)$ — Dentre as previsões positivas, quantas eram realmente positivas.
  - **Recall (Sensibilidade):** $TP / (TP + FN)$ — Dentre os casos reais positivos, quantos o modelo conseguiu detectar.
  - **F1-Score:** Média harmônica entre Precisão e Recall: $2 	imes rac{	ext{Precisão} 	imes 	ext{Recall}}{	ext{Precisão} + 	ext{Recall}}$.
  - **Curva ROC / AUC:** Relação entre taxa de verdadeiros positivos e falsos positivos em diferentes limiares.

---

## 2. Deep Learning e Redes Neurais Artificiais

### 2.1 Conceitos Básicos
* **Perceptron:** Unidade básica de computação neural (soma ponderada das entradas com pesos + bias, passando por uma função de ativação).
* **MLP (Multilayer Perceptron):** Rede neural feedforward com camada de entrada, camadas ocultas e camada de saída.
* **Backpropagation:** Algoritmo fundamental que calcula o gradiente da função de perda em relação a cada peso da rede para ajuste via otimizadores (Gradiente Descendente, Adam).
* **Funções de Ativação:**
  - *Sigmoid:* Converte valores para intervalo (0, 1) — útil para probabilidades binárias.
  - *ReLU (Rectified Linear Unit):* $f(x) = \max(0, x)$ — padrão nas camadas ocultas por evitar o problema de desaparecimento do gradiente.
  - *Softmax:* Converte vetor de números reais em distribuição de probabilidades para classes múltiplas (soma = 1).

### 2.2 Arquiteturas Especializadas
* **CNN (Convolutional Neural Networks):** Especializadas no processamento de dados em grade espacial (imagens). Utilizam operações de convolução, pooling e camadas densas (essencial para **Visão Computacional** e imagens de satélite).
* **RNN / LSTM / GRU:** Redes neurais recorrentes projetadas para lidar com dados sequenciais e temporais (séries temporais, texto).
* **Transformers & LLMs:** Arquitetura baseada em mecanismos de **Atenção (Self-Attention)** que superou as RNNs. É a base de modelos de linguagem modernos (BERT, GPT, LLaMA).

---

## 3. Processamento de Linguagem Natural (NLP) e Visão Computacional

### 3.1 Etapas de Processamento de Texto em NLP
1. **Tokenização:** Divisão do texto em palavras, subpalavras ou caracteres.
2. **Stopwords:** Remoção de palavras muito frequentes sem conteúdo semântico exclusivo (artigos, preposições).
3. **Lematização vs. Stemming:**
   - *Stemming:* Corte mecânico de sufixos/prefixos para obter o radical (pode gerar palavras inexistentes).
   - *Lematização:* Redução da palavra ao seu lema morfológico oficial de dicionário (ex.: "estudando" ➔ "estudar").
4. **Embeddings:** Representações vetoriais densas de palavras ou frases no espaço semântico contínuo (Word2Vec, FastText, BERT embeddings).

### 3.2 Visão Computacional
* Aplicação na SEMA: Monitoramento remoto de desmatamento, queimadas e invasões territoriais a partir de imagens aéreas e de satélite.
* Técnicas: Filtragem espacial, detecção de bordas, segmentação semântica e classificação de objetos.

---

### 📝 Checklist de Revisão
- [ ] Saber classificar problemas entre Supervisionado, Não Supervisionado e Reforço
- [ ] Dominar a Matriz de Confusão e o cálculo de Precisão, Recall e F1-Score
- [ ] Compreender o papel da função de ativação ReLU e Softmax
- [ ] Entender a aplicação prática de CNNs em Visão Computacional
