---
tags:
  - sistemas-operacionais
  - linux
  - windows-server
  - active-directory
---
# 💻 Sistemas Operacionais e Infraestrutura

---

## 1. Fundamentos de Sistemas Operacionais

### 1.1 Gerenciamento de Processos e Threads
* **Processo:** Programa em execução com espaço de endereçamento de memória próprio e recursos alocados.
* **Thread:** Linha de execução dentro de um processo. Múltiplas threads do mesmo processo compartilham memória e recursos (menor custo de troca de contexto).
* **Estados de um Processo:**
  - *Novo (New):* Sendo criado.
  - *Pronto (Ready):* Aguardando alocação da CPU pelo escalonador.
  - *Executando (Running):* Instruções sendo processadas pela CPU.
  - *Bloqueado/Espera (Waiting):* Aguardando evento de E/S ou sinal.
  - *Terminado (Terminated):* Execução concluída e recursos liberados.
* **Escalonamento de Processos:**
  - *Preemptivo:* O SO pode interromper um processo em execução para ceder a CPU a outro (ex.: Round Robin com quantum de tempo, Múltiplas Filas).
  - *Não Preemptivo (Cooperativo):* O processo mantém a CPU até terminar ou bloquear voluntariamente (ex.: FIFO / FCFS, SJF simples).

### 1.2 Gerenciamento de Memória
* **Memória Virtual:** Técnica que permite a execução de processos cujo espaço de endereçamento exceda a memória física (RAM), utilizando espaço em disco (swap / paging file).
* **Paginação:** A memória física é dividida em blocos de tamanho fixo chamados *Frames* (quadros), e a memória lógica em blocos de mesmo tamanho chamados *Pages* (páginas).
* **Algoritmos de Substituição de Páginas:**
  - *FIFO:* Substitui a página que está na memória há mais tempo.
  - *LRU (Least Recently Used):* Substitui a página que não foi utilizada pelo maior período de tempo recente.
  - *Ótimo (OPT):* Substitui a página que não será utilizada pelo maior período no futuro (teórico).

---

## 2. Linux e Windows Server

### 2.1 Comandos Essenciais do Linux
* `ls -la`: Lista arquivos com detalhes e ocultos.
* `chmod`: Altera permissões de acesso aos arquivos (notação octal: 7 = rwx, 6 = rw-, 5 = r-x, 4 = r--).
  - Exemplo: `chmod 755 script.sh` (dono: rwx, grupo: r-x, outros: r-x).
* `chown`: Altera dono e grupo do arquivo (`chown usuario:grupo arquivo`).
* `ps aux` e `top`: Visualizam processos ativos e consumo de CPU/RAM.
* `kill -9 <PID>`: Envia sinal `SIGKILL` para encerrar processo imediatamente.
* `grep -rn "termo" .`: Busca recursiva por padrão de texto em arquivos.
* `systemctl status|start|restart <servico>`: Gerencia daemons via systemd.

### 2.2 Windows Server e Active Directory (AD DS)
* **Estrutura Lógica do Active Directory:**
  - **Objeto:** Unidade básica (usuário, grupo, computador, impressora).
  - **OU (Organizational Unit):** Contêiner para organizar objetos e aplicar diretivas de grupo de forma granular.
  - **Domínio (Domain):** Limite de segurança e replicação lógica centralizada.
  - **Árvore (Tree):** Conjunto de domínios que compartilham um namespace contíguo de DNS.
  - **Floresta (Forest):** Nível mais alto da hierarquia; conjunto de árvores que compartilham o mesmo catálogo global (Global Catalog), esquema e configuração.
* **GPO (Group Policy Object):** Conjunto de configurações centralizadas aplicadas a computadores e usuários em domínios ou OUs.
* **Serviços de Rede:**
  - **DNS (Domain Name System):** Resolução de nomes em IPs. Registros: A (IPv4), AAAA (IPv6), CNAME (alias), MX (e-mail), PTR (reverso).
  - **DHCP (Dynamic Host Configuration Protocol):** Configuração dinâmica de rede via 4 etapas (**DORA**: *Discover ➔ Offer ➔ Request ➔ Acknowledge*).

---

### 📝 Checklist de Revisão
- [ ] Saber os 5 estados de um processo
- [ ] Entender a diferença entre escalonamento preemptivo e não preemptivo
- [ ] Dominar o cálculo de permissões octais no Linux (chmod 755, 644, 700)
- [ ] Conhecer a hierarquia do AD (Objeto ➔ OU ➔ Domínio ➔ Árvore ➔ Floresta)
- [ ] Lembrar as 4 fases do DHCP (DORA)
