---
tags:
  - seguranca-da-informacao
  - lgpd
  - criptografia
  - ti-especifico
---
# 🔒 Segurança da Informação e Privacidade

> [!IMPORTANT]
> Segurança da Informação e LGPD é um dos eixos temáticos mais cobrados pela Cesgranrio em concursos recentes de TI (Caixa, BNDES e Petrobras), com forte probabilidade de cair na prova discursiva.

---

## 1. Segurança Cibernética e Arquitetura

### 1.1 Zero Trust Architecture (Arquitetura de Confiança Zero)
* **Princípio Central:** *"Never Trust, Always Verify"* (Nunca confie, sempre verifique). Não existe perímetro seguro interno. Qualquer requisição, mesmo originada dentro da rede interna do órgão, deve ser autenticada, autorizada e criptografada.
* **Pilares Fundamentais:**
  1. **Verificação Explícita:** Autenticação contínua multifator (MFA) e contexto do dispositivo/usuário.
  2. **Privilégio Mínimo:** Acesso Just-In-Time (JIT) e Just-Enough-Access (JEA).
  3. **Pressuposição de Violação (Assume Breach):** Segmentação de rede em microperímetros para conter movimentação lateral de invasores.

### 1.2 Mecanismos de Proteção de Perímetro
* **Firewall Tradicional vs. Stateful:**
  - *Packet Filtering (Estático):* Analisa cabeçalhos IP/Porta individualmente sem contexto de estado.
  - *Stateful Inspection:* Mantém tabela de estado de conexões ativas (permite pacotes de retorno automaticamente).
  - *Next-Generation Firewall (NGFW):* Inspeciona tráfego na Camada 7 (Aplicação), inclui prevenção contra intrusões (IPS) e controle granular de apps.
* **IDS (Intrusion Detection System) vs. IPS (Intrusion Prevention System):**
  - **IDS:** Passivo (analisa cópia do tráfego via porta espelho/SPAN) e gera alertas de incidentes.
  - **IPS:** Ativo (*in-line* no fluxo de pacotes), detecta e bloqueia ativamente conexões maliciosas em tempo real.
  - *Métodos de Detecção:* Por assinatura (padrões conhecidos) e por anomalia/heurística (desvio do comportamento basal).
* **WAF (Web Application Firewall):**
  - Opera na Camada de Aplicação (Camada 7 do modelo OSI).
  - Foco específico na proteção de aplicações web contra ataques OWASP Top 10 (SQL Injection, Cross-Site Scripting - XSS, CSRF, Path Traversal).

### 1.3 Análise de Vulnerabilidades e Pentesting
* **Análise de Vulnerabilidades:** Processo contínuo de varredura automatizada (ex.: Nessus, OpenVAS) para mapear falhas de segurança sem explorá-las.
* **Testes de Penetração (Pentest):**
  - *Black Box:* O atacante não possui conhecimento prévio da infraestrutura.
  - *White Box:* Acesso total a código-fonte, diagramas de rede e credenciais.
  - *Gray Box:* Conhecimento parcial (simula um usuário interno ou parceiro).
  - *Fases do Pentest:* Reconhecimento/Footprinting ➔ Varredura (Scanning) ➔ Obtenção de Acesso (Exploitation) ➔ Manutenção de Acesso (Post-Exploitation) ➔ Limpeza e Relatório Executivo/Técnico.

---

## 2. LGPD e Privacidade de Dados

### 2.1 Lei Geral de Proteção de Dados (Lei nº 13.709/2018)
* **Conceitos Fundamentais:**
  - **Dado Pessoal:** Informação relacionada a pessoa natural identificada ou identificável.
  - **Dado Pessoal Sensível:** Origem racial/étnica, convicção religiosa, opinião política, saúde, vida sexual, dado genético ou biométrico.
  - **Titular:** Pessoa natural a quem se referem os dados pessoais.
  - **Controlador:** Pessoa natural ou jurídica a quem competem as decisões sobre o tratamento.
  - **Operador:** Realiza o tratamento de dados pessoais em nome do controlador.
  - **Encarregado (DPO - Data Protection Officer):** Canal de comunicação entre o controlador, os titulares e a ANPD.
  - **ANPD:** Autoridade Nacional de Proteção de Dados.
* **Bases Legais para Tratamento (Art. 7º):**
  1. Consentimento do titular;
  2. Cumprimento de obrigação legal ou regulatória pelo controlador;
  3. Pela administração pública para execução de políticas públicas previstas em lei;
  4. Realização de estudos por órgão de pesquisa;
  5. Execução de contrato do qual o titular seja parte;
  6. Exercício regular de direitos em processo judicial, administrativo ou arbitral;
  7. Proteção da vida ou da incolumidade física;
  8. Tutela da saúde;
  9. Legítimo interesse do controlador (exceto prevalência de direitos fundamentais);
  10. Proteção do crédito.
* **Princípios do Tratamento:** Finalidade, adequação, necessidade, livre acesso, qualidade dos dados, transparência, segurança, prevenção, não discriminação e responsabilização/prestação de contas.

---

## 3. Criptografia e PKI

### 3.1 Criptografia Simétrica vs. Assimétrica
* **Criptografia Simétrica (Chave Secreta Compartilhada):**
  - Mesma chave para cifrar e decifrar.
  - *Vantagens:* Extremamente rápida e eficiente para grandes volumes de dados.
  - *Desvantagens:* Problema do compartilhamento seguro da chave.
  - *Algoritmos:* AES (Rijndael - padrão mundial de 128, 192 e 256 bits), DES, 3DES, Blowfish.
* **Criptografia Assimétrica (Par de Chaves Pública e Privada):**
  - Chave Pública cifra; Chave Privada decifra (ou vice-versa para assinatura digital).
  - *Vantagens:* Resolve o problema da distribuição de chaves; garante não repúdio e autenticidade.
  - *Desvantagens:* Processamento computacionalmente pesado (muito lenta).
  - *Algoritmos:* RSA, ECC (Elliptic Curve Cryptography), Diffie-Hellman (troca de chaves).
* **Criptografia Híbrida:** Utiliza chave assimétrica para negociar uma chave de sessão simétrica, que então criptografa os dados da comunicação (modelo padrão do HTTPS / TLS).

### 3.2 Funções Hash e Assinatura Digital
* **Funções Hash Criptográficas:**
  - Função unidirecional que converte entrada de tamanho arbitrário em string de tamanho fixo (digest).
  - *Propriedades:* Determinística, efeito avalanche, resistência à pré-imagem e resistência a colisões.
  - *Algoritmos:* SHA-2 (SHA-256, SHA-512), SHA-3. (MD5 e SHA-1 são obsoletos por vulnerabilidades de colisão).
* **Assinatura Digital:**
  - Garante **Autenticidade, Integridade e Não Repúdio**.
  - *Processo:* Hash do documento cifrado com a **chave privada do emissor**. O receptor decifra o hash usando a **chave pública do emissor** e compara com o hash calculado do documento recebido.

### 3.3 Infraestrutura de Chaves Públicas (PKI e ICP-Brasil)
* **Certificado Digital X.509:** Documento eletrônico assinado por uma Autoridade Certificadora (AC) que vincula a identidade de uma entidade à sua chave pública.
* **Estrutura Hierárquica ICP-Brasil:**
  - **AC Raiz (ITI):** Autoridade Certificadora Raiz da cadeia brasileira.
  - **Autoridades Certificadoras (ACs):** Emitem, suspendem e revogam certificados digitais.
  - **Autoridades de Registro (ARs):** Validam presencialmente ou por videoconferência a identidade do titular.
  - **LCR (Lista de Certificados Revogados) e OCSP:** Protocolos para checagem do status de validade do certificado.

---

## 4. Gestão de Riscos e Continuidade de Negócios

### 4.1 BCP e DRP
* **BCP (Business Continuity Plan - Plano de Continuidade de Negócios):** Conjunto de procedimentos estratégicos e táticos para garantir que as operações essenciais do órgão continuem em funcionamento durante e após uma interrupção crítica.
* **DRP (Disaster Recovery Plan - Plano de Recuperação de Desastres):** Subconjunto técnico do BCP focado na restauração de sistemas de TI, bancos de dados e infraestrutura após desastres.
* **Métricas Fundamentais de Recuperação:**
  - **RTO (Recovery Time Objective):** Tempo máximo tolerável que um sistema pode permanecer fora do ar antes de causar prejuízos graves.
  - **RPO (Recovery Point Objective):** Quantidade máxima aceitável de perda de dados expressa em tempo (ex.: perda máxima de até 1 hora de transações).

---

### 📝 Checklist de Revisão
- [ ] Diferenciar WAF de NGFW e IDS de IPS
- [ ] Memorizar os 3 princípios do Zero Trust
- [ ] Dominar as 10 bases legais da LGPD (especialmente administração pública e obrigação legal)
- [ ] Compreender o fluxo de geração e validação de uma Assinatura Digital
- [ ] Distinguir claramente RTO de RPO
