---
tags:
  - devops
  - devsecops
  - docker
  - kubernetes
  - metodologias-ageis
---
# 🚀 Desenvolvimento de Software e DevOps

> [!NOTE]
> A cultura DevOps, esteiras CI/CD e orquestração de contêineres são temas consolidados em todas as provas recentes da Fundação Cesgranrio para profissionais de tecnologia.

---

## 1. DevOps e DevSecOps

### 1.1 Princípios e Cultura DevOps (Modelo CAMS)
* **CAMS:**
  - **Culture (Cultura):** Colaboração e responsabilidade compartilhada entre desenvolvedores (Dev) e operadores (Ops).
  - **Automation (Automação):** Eliminação de tarefas manuais repetitivas em testes, builds e deploys.
  - **Measurement (Métricas):** Monitoramento contínuo de KPIs (DORA metrics: frequência de deploy, tempo de entrega de alterações, tempo médio de recuperação - MTTR e taxa de falha de mudanças).
  - **Sharing (Compartilhamento):** Transparência, lições aprendidas e disseminação de conhecimento.

### 1.2 DevSecOps (Shift-Left Security)
* Integração de práticas de segurança desde as fases iniciais do ciclo de desenvolvimento de software (*Shift-Left*).
* **Testes de Segurança no Pipeline:**
  - **SAST (Static Application Security Testing):** Análise estática do código-fonte sem execução (ex.: SonarQube).
  - **DAST (Dynamic Application Security Testing):** Análise dinâmica com a aplicação em execução, testando vulnerabilidades externas (ex.: OWASP ZAP).
  - **SCA (Software Composition Analysis):** Varredura de bibliotecas e dependências de terceiros contra bancos de dados de vulnerabilidades (CVEs).

### 1.3 CI/CD (Integração e Entrega Contínuas)
* **Continuous Integration (CI):** Desenvolvedores integram código em um repositório central com frequência. Cada commit dispara build e testes automatizados (unitários e de integração).
* **Continuous Delivery (CD - Entrega Contínua):** Todo código aprovado no CI é empacotado e preparado para deploy, com o envio para produção dependendo de **aprovação manual**.
* **Continuous Deployment (CD - Implantação Contínua):** Todo commit que passa com sucesso pelo pipeline de testes é **implantado automaticamente** em produção, sem intervenção humana.

---

## 2. Ferramentas: Git, Docker e Kubernetes

### 2.1 Controle de Versão com Git
* **Conceito dos 3 Estados:** Working Directory ➔ Staging Area (Index) ➔ Repository (.git).
* **Comandos Fundamentais:**
  - `git commit --amend`: Altera o último commit.
  - `git rebase`: Reaplica commits sobre outra base, criando histórico linear.
  - `git merge`: Combina ramificações criando um commit de mesclagem.
  - `git cherry-pick`: Aplica um commit específico de outra branch na branch atual.
  - `git stash`: Armazena alterações não commitadas temporariamente.

### 2.2 Contêineres com Docker
* **Contêiner vs. Máquina Virtual (VM):**
  - VMs virtualizam o hardware físico (hipervisor + sistema operacional convidado completo em cada VM).
  - Contêineres compartilham o **Kernel do Sistema Operacional hospedeiro**, isolando processos via *namespaces* e *cgroups* do Linux. São leves, rápidos e inicializam em segundos.
* **Componentes Docker:**
  - `Dockerfile`: Arquivo declarativo com instruções de construção da imagem (`FROM`, `RUN`, `COPY`, `CMD`, `ENTRYPOINT`).
  - `Image`: Template imutável somente leitura.
  - `Container`: Instância em execução de uma imagem.
  - `Volumes`: Persistência de dados independente do ciclo de vida do contêiner.

### 2.3 Orquestração com Kubernetes (K8s)
* **Arquitetura do Cluster:**
  - **Control Plane:** `kube-apiserver` (ponto de entrada da API), `etcd` (armazenamento chave-valor consistente do estado do cluster), `kube-scheduler` (aloca Pods nos nós), `kube-controller-manager`.
  - **Worker Nodes:** `kubelet` (agente que garante a execução dos contêineres no nó), `kube-proxy` (gerencia regras de rede), Container Runtime.
* **Objetos Principais:**
  - **Pod:** Menor unidade implantável no Kubernetes (pode conter um ou mais contêineres que compartilham IP e volumes).
  - **Deployment:** Gerencia a implantação declarativa, réplicas e atualizações (*rolling updates*) dos Pods.
  - **Service:** Abstração que define uma política de acesso aos Pods via IP fixo e DNS interno (`ClusterIP`, `NodePort`, `LoadBalancer`).
  - **Ingress:** Gerencia o acesso externo (roteamento HTTP/HTTPS) aos serviços dentro do cluster.
  - **ConfigMap / Secret:** Separam configurações e credenciais sensíveis do código da imagem.

---

## 3. Metodologias Ágeis

### 3.1 Scrum (Guia Scrum Atual)
* **Papéis:**
  - **Product Owner (PO):** Maximiza o valor do produto; proprietário exclusivo do Product Backlog.
  - **Scrum Master:** Líder servidor; remove impedimentos e garante a eficácia das práticas do Scrum.
  - **Desenvolvedores:** Criam qualquer aspecto de um Incremento utilizável em cada Sprint.
* **Artefatos e Seus Compromissos:**
  - *Product Backlog* ➔ Meta do Produto (Product Goal).
  - *Sprint Backlog* ➔ Meta da Sprint (Sprint Goal).
  - *Incremento* ➔ Definição de Pronto (Definition of Done - DoD).
* **Eventos:** Sprint (1 a 4 semanas), Sprint Planning, Daily Scrum (15 min), Sprint Review, Sprint Retrospective.

### 3.2 Kanban
* Foco no fluxo contínuo de trabalho.
* **Práticas Fundamentais:**
  1. Visualizar o fluxo de trabalho (quadro Kanban);
  2. Limitar o trabalho em progresso (**WIP - Work In Progress**);
  3. Gerenciar o fluxo (Lead Time e Cycle Time);
  4. Tornar as políticas explícitas;
  5. Ciclos de feedback contínuos.

### 3.3 eXtreme Programming (XP)
* Metodologia focada na excelência técnica de desenvolvimento de software.
* **Práticas Técnicas de Engenharia:**
  - **TDD (Test-Driven Development):** Escrever o teste que falha (Red), escrever código mínimo para passar (Green), refatorar (Refactor).
  - **Programação em Par (Pair Programming):** Dois desenvolvedores na mesma estação (Piloto e Copiloto).
  - **Refatoração Contínua:** Melhoria do design do código sem alterar seu comportamento externo.
  - **Integração Contínua:** Múltiplas integrações diárias.
  - **Releases Pequenos:** Entregas rápidas e frequentes em produção.

---

### 📝 Checklist de Revisão
- [ ] Diferenciar VM de Contêiner Docker
- [ ] Saber as funções do `kube-apiserver`, `etcd`, `kubelet` e `Pod` no Kubernetes
- [ ] Conhecer os 3 papéis, 3 artefatos e 5 eventos do Scrum
- [ ] Entender a diferença entre SAST, DAST e SCA em DevSecOps
- [ ] Compreender o ciclo Red-Green-Refactor do TDD
