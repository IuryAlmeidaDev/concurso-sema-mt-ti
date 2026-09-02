---
tags:
  - python
  - java
  - poo
  - programacao
---
# 💻 Linguagens de Programação (Python e Java)

---

## 1. Paradigma de Programação Orientada a Objetos (POO)

* **Abstração:** Foco nas características e comportamentos essenciais do objeto no domínio do problema.
* **Encapsulamento:** Ocultamento dos detalhes internos de implementação e proteção do estado interno dos objetos. No Java via modificadores (`private`, `protected`, `public`), no Python por convenção (`_protegido`, `__privado`).
* **Herança:** Mecanismo que permite que uma classe filha herde atributos e métodos de uma classe mãe (promove reutilização de código).
* **Polimorfismo:** Capacidade de objetos de diferentes classes responderem à mesma mensagem de maneiras distintas:
  - *Sobrecarga (Overloading):* Métodos com mesmo nome, mas assinaturas/parâmetros diferentes na mesma classe (comum em Java; simulado em Python com argumentos padrão).
  - *Sobrescrita (Overriding):* A classe filha redefine o método herdado da classe mãe com a mesma assinatura.

---

## 2. Python em Concursos Públicos

### 2.1 Características
* Linguagem interpretada, de **tipagem dinâmica e forte**.
* Indentação obrigatória como delimitador de blocos.
* Suporte nativo a múltiplos paradigmas (POO, funcional, imperativo).

### 2.2 Estruturas de Dados Embutidas
```python
# Lista: Ordenada, mutável, permite duplicatas
lista = [1, 2, "texto", 4.5]

# Tupla: Ordenada, IMUTÁVEL
tupla = (1, 2, 3)

# Dicionário: Chave-Valor, chaves únicas
dicionario = {"nome": "SEMA", "ano": 2026}

# Conjunto (Set): Coleção NÃO ordenada de elementos ÚNICOS
conjunto = {1, 2, 3, 3}  # Resultado: {1, 2, 3}
```

### 2.3 Recursos Frequentes em Provas
* **List Comprehension:** `quadrados = [x**2 for x in range(5)]` ➔ `[0, 1, 4, 9, 16]`
* **Fatiamento (Slicing):** `s = "SEMA-MT"` ➔ `s[0:4]` é `"SEMA"`, `s[::-1]` inverte a string.
* **Funções Lambda:** Funções anônimas de linha única: `dobro = lambda x: x * 2`

---

## 3. Java em Concursos Públicos

### 3.1 Características e Plataforma
* Linguagem compilada para bytecode executado sobre a **JVM (Java Virtual Machine)** — princípio *"Write Once, Run Anywhere"*.
* **Tipagem estática e forte**.
* Gerenciamento automático de memória via **Garbage Collector (GC)**.

### 3.2 Modificadores de Acesso em Java
| Modificador | Mesma Classe | Mesmo Pacote | Subclasse (Outro Pacote) | Mundo Exterior |
| :--- | :---: | :---: | :---: | :---: |
| `private` | Sim | Não | Não | Não |
| *(default)* | Sim | Sim | Não | Não |
| `protected` | Sim | Sim | Sim | Não |
| `public` | Sim | Sim | Sim | Sim |

### 3.3 Tratamento de Exceções
* **Checked Exceptions:** Subclasses de `Exception` (exceto `RuntimeException`). O compilador obriga a tratar (`try-catch`) ou declarar (`throws`). Ex.: `IOException`, `SQLException`.
* **Unchecked Exceptions:** Subclasses de `RuntimeException`. Erros de lógica que não exigem declaração obrigatória. Ex.: `NullPointerException`, `ArrayIndexOutOfBoundsException`.

---

### 📝 Checklist de Revisão
- [ ] Entender a diferença entre Sobrecarga e Sobrescrita de métodos
- [ ] Lembrar que Tuplas em Python são imutáveis e Sets não admitem duplicatas
- [ ] Saber a tabela dos modificadores de acesso do Java (private, default, protected, public)
- [ ] Distinguir Checked de Unchecked Exceptions em Java
