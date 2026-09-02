---
tags:
  - iot
  - edge-computing
  - blockchain
  - tecnologias-emergentes
---
# 🌐 Tecnologias Emergentes (IoT e Blockchain)

---

## 1. Internet das Coisas (IoT) e Edge Computing

### 1.1 Arquitetura e Componentes de IoT
* **Camada de Percepção (Sensoriamento):** Sensores (temperatura, umidade, fumaça, qualidade da água) e atuadores que interagem com o ambiente físico.
* **Camada de Rede (Gateways):** Dispositivos intermediários que agregam dados dos sensores locais e realizam a ponte com redes de longa distância.
* **Camada de Nuvem / Aplicação:** Plataformas centrais que armazenam, processam e exibem dashboards analíticos dos dados coletados.
* **Protocolos Típicos de IoT:**
  - **MQTT (Message Queuing Telemetry Transport):** Protocolo extremamente leve baseado no padrão Publish/Subscribe sobre TCP. Ideal para dispositivos com recursos restritos e redes de baixa largura de banda.
  - **CoAP (Constrained Application Protocol):** Protocolo baseado em REST sobre UDP para nós com restrição de processamento.
  - **LoRaWAN:** Rede sem fio de longo alcance e baixo consumo de energia (LPWAN).

### 1.2 Edge Computing (Computação de Borda)
* Processamento de dados realizado fisicamente próximo à fonte geradora dos dados (no gateway ou no próprio sensor), em vez de enviar tudo para servidores centrais na nuvem.
* *Benefícios:* Redução drástica da latência, economia de largura de banda e operação local contínua mesmo sem conexão com a internet.

---

## 2. Blockchain e Criptoativos

### 2.1 Livro-Razão Distribuído (Distributed Ledger)
* Estrutura de dados descentralizada onde múltiplos nós mantêm cópias sincronizadas e criptograficamente verificadas do histórico de transações.
* **Encadeamento de Blocos:** Cada bloco contém um conjunto de transações válidas, seu próprio hash criptográfico e o **hash do bloco anterior**. Qualquer tentativa de alterar um bloco anterior invalida todos os blocos subsequentes.

### 2.2 Mecanismos de Consenso
* **Proof of Work (PoW):** Mineradores competem para resolver um enigma matemático complexo computacionalmente (alto consumo energético; usado no Bitcoin).
* **Proof of Stake (PoS):** Validadores são selecionados proporcionalmente à quantidade de ativos mantidos em custódia (staking). Muito mais eficiente energeticamente (usado no Ethereum moderno).
* **Algoritmos Tolerantes a Falhas Bizantinas (PBFT / Raft):** Usados em redes permissionadas e privadas corporativas (ex.: Hyperledger Fabric).

### 2.3 Smart Contracts (Contratos Inteligentes)
* Programas de computador autoexecutáveis armazenados na blockchain que executam termos e cláusulas contratuais de forma autônoma e imutável quando condições pré-definidas são satisfeitas.

---

### 📝 Checklist de Revisão
- [ ] Entender a arquitetura Publish/Subscribe do protocolo MQTT
- [ ] Diferenciar Edge Computing de Cloud Computing
- [ ] Compreender como o hash do bloco anterior garante a imutabilidade na Blockchain
- [ ] Distinguir PoW de PoS
