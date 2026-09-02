---
tags:
  - arquitetura-de-software
  - microsservicos
  - apis
  - design-patterns
---
# 🏛️ Arquitetura de Software e APIs

---

## 1. Padrões Arquiteturais: Monólito vs. Microsserviços vs. SOA

### 1.1 Arquitetura Monolítica
* Todo o sistema (interface, regras de negócio e camada de dados) é construído e empacotado como uma **única unidade executável**.
* *Vantagens:* Simplicidade inicial de desenvolvimento, facilidade de testes ponta a ponta e implantação inicial única.
* *Desvantagens:* Acoplamento elevado, escalabilidade de todo o sistema em bloco, barreiras para adotar novas tecnologias e risco de falha catastrófica (uma falha derruba todo o sistema).

### 1.2 Arquitetura de Microsserviços
* Aplicação decomposta em um conjunto de serviços autônomos, de escopo reduzido (alinhados a domínios de negócio - DDD), fracamente acoplados e implantáveis de forma independente.
* **Características:**
  - Banco de dados descentralizado (*Database-per-service*).
  - Comunicação via protocolos leves (HTTP/REST, gRPC, filas AMQP/Kafka).
  - Tolerância a falhas com padrões de resiliência (*Circuit Breaker*, *Retry*, *Fallback*).
  - *Desafio:* Alta complexidade operacional de orquestração, rastreabilidade distribuída (Tracing) e consistência eventual de dados (Padrão Saga).

### 1.3 SOA (Service-Oriented Architecture)
* Foco na integração e reutilização de serviços corporativos em escala organizacional.
* Uso típico de um **ESB (Enterprise Service Bus)** centralizado para mediar comunicação, roteamento e transformação de protocolos. Contratos estritos baseados em XML e WSDL.

---

## 2. APIs: REST vs. SOAP

| Critério | REST (Representational State Transfer) | SOAP (Simple Object Access Protocol) |
| :--- | :--- | :--- |
| **Protocolo/Estilo** | Estilo arquitetural sobre HTTP | Protocolo formal padronizado pelo W3C |
| **Formato de Dados** | Múltiplos formatos (JSON é o padrão de fato, XML, texto) | Exclusivamente **XML** |
| **Estado** | **Stateless** (sem estado mantido no servidor entre requisições) | Pode ser stateful ou stateless |
| **Segurança** | HTTPS/TLS, OAuth 2.0, JWT | WS-Security (segurança em nível de mensagem), ACID |
| **Consumo de Banda**| Muito leve e rápido | Mais pesado devido aos envelopes XML |

### 2.1 Princípios REST e Métodos HTTP
* **Restrições Arquiteturais do REST:**
  1. Cliente-Servidor;
  2. Stateless (sem estado);
  3. Cacheable (respostas explicitamente definem se são armazenáveis em cache);
  4. Interface Uniforme (identificação de recursos por URIs, HATEOAS);
  5. Sistema em Camadas.
* **Métodos HTTP e Idempotência:**
  - `GET`: Recupera representação do recurso (Seguro e Idempotente).
  - `POST`: Cria um novo recurso (Não seguro e Não idempotente).
  - `PUT`: Substitui integralmente o recurso ou cria caso não exista (Idempotente).
  - `PATCH`: Atualização parcial do recurso (Geralmente não idempotente).
  - `DELETE`: Remove o recurso (Idempotente).
* **Códigos de Status HTTP mais cobrados:**
  - `200 OK`, `201 Created`, `204 No Content`.
  - `301 Moved Permanently`, `304 Not Modified`.
  - `400 Bad Request`, `401 Unauthorized` (falta autenticação), `403 Forbidden` (sem permissão), `404 Not Found`.
  - `500 Internal Server Error`, `502 Bad Gateway`, `503 Service Unavailable`.

---

## 3. Padrões de Projeto de Software (GoF - Gang of Four)

Divididos em 3 categorias clássicas:

### 3.1 Padrões Criacionais (Criação de Objetos)
* **Singleton:** Garante que uma classe tenha apenas uma única instância e fornece um ponto de acesso global a ela.
* **Factory Method:** Define uma interface para criar um objeto, mas deixa as subclasses decidirem qual classe instanciar.
* **Abstract Factory:** Cria famílias de objetos relacionados ou dependentes sem especificar suas classes concretas.
* **Builder:** Separa a construção de um objeto complexo da sua representação, permitindo o mesmo processo construir diferentes representações.
* **Prototype:** Cria novos objetos clonando uma instância existente.

### 3.2 Padrões Estruturais (Composição de Classes e Objetos)
* **Adapter:** Converte a interface de uma classe em outra interface esperada pelos clientes (funciona como um adaptador de tomada).
* **Decorator:** Agrega dinamicamente responsabilidades adicionais a um objeto sem alterar sua classe.
* **Facade:** Fornece uma interface simplificada e unificada para um subsistema complexo.
* **Proxy:** Fornece um substituto ou ponto de controle para acessar outro objeto (ex.: cache, segurança, lazy loading).

### 3.3 Padrões Comportamentais (Interação e Algoritmos)
* **Strategy:** Define uma família de algoritmos, encapsula cada um e os torna intercambiáveis em tempo de execução.
* **Observer:** Define uma dependência um-para-muitos entre objetos, de forma que quando um objeto muda de estado, todos os seus dependentes são notificados automaticamente (padrão Publish/Subscribe).
* **Chain of Responsibility:** Evita o acoplamento do remetente de uma requisição ao seu receptor, encadeando objetos receptores.
* **Command:** Encapsula uma requisição como um objeto, permitindo parametrizar clientes com diferentes requisições, enfileirar ou registrar operações de log e suportar desfazimento (Undo).

---

### 📝 Checklist de Revisão
- [ ] Saber a diferença conceitual e prática entre Monólito e Microsserviços
- [ ] Conhecer os métodos HTTP idempotentes (GET, PUT, DELETE)
- [ ] Identificar a diferença entre os status HTTP 401 e 403
- [ ] Memorizar os propósitos de Singleton, Factory, Strategy, Observer e Decorator
