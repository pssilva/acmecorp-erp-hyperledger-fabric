# ACME Corp ERP - Hyperledger Fabric

Se trata de um projeto prático prova de conceito - POC para deixar pegadas digitais e um comprometimento público para aplicar o foco e disciplia e com isso  ser próativo para os processos seletivos onde as equipes técnicas de recrutadores tenham condições e evidências para verificar se o meu perfil pode atender as necessidades das oportunidades.

## Visão do Projeto

POC de um Lite ERP com arquitetura Hyperledger Fabric Blockchain.


<p><img src="docs/imgs/acme-network.svg" alt="T2Ti ERP 3.0" height="100%" width="100%"></p>


Objetivo é focar no uso prático real dos conceitos abstratos de um [desenvolvedor Blockchain fullstack]() com foco em [Contratos Inteligentes](#cap-6-Nitin-Gaur) em soluções com arquitetura Blockchain usando os [Projetos Hyperledger Framework](https://www.hyperledger.org/projects) Blockchain e com isso implementar contratos inteligentes para os subprojetos: 

 - [Hyperledger Fabric](https://www.hyperledger.org/projects/fabric)
 - [Hyperledger Besu](https://www.hyperledger.org/projects/besu)
 - [Hyperledger Explorer](https://wiki.hyperledger.org/display/explorer/Hyperledger+Explorer)
 - [Hyperledger Web3j](https://www.hyperledger.org/projects/web3j)



## Proficiências

Procuro evidência as proficiências nas seguintes habilidades técnicas:

- [Metodologia Básica de Análise de Algoritmos](#GOODRICH-Michael-T)
- Técnicas em [Análise Código-fonte Legados](#FEATHERS-michael);
- Técnicas em [Refatoração Código-fonte Legados](#FEATHERS-michael);
- Implementar Soluções usando algoritmos Reutilizáveis


Projeto inicializado com o [`Scripts de automação próprio`]().



## 🚀 Começando

### 🔧 Instalação

Para obter o presente projeto use os seguintes comandos:

```bash
mkdir -p "${HOME}/projetos"
cd "${HOME}/projetos"
git clone https://github.com/pssilva/acmecorp-erp-hyperledger-fabric.git
cd acmecorp-erp-hyperledger-fabric
source ~/.bash_profile
idea .
```


#### 📋 Pré-requisitos

Depois de baixar o projeto: De que coisas precisamos para atuar no projeto `acmecorp-erp-hyperledger-fabric` e executá-lo?

Para isso, use os comandos do script de automação:

```bash

export ARTIFACT_ID="acmecorp-erp-hyperledger-fabric"
export TOOL_NAME="BlockchainShellHyperledgerScriptsUteis"
export SCRIPT_PATH="${HOME}/projetos${ARTIFACT_ID}/scripts"
export AUTOMATION_PATH="${SCRIPT_PATH}/src/main/automation"
export TOOL_PATH="${AUTOMATION_PATH}/${TOOL_NAME}"

source "${TOOL_PATH}/BlockchainShellHyperledgerScriptsUteis_main.sh"

BlockchainShellHyperledgerScriptsUteis.installAllTools

```


## 🔩 Débitos Técnicos

Aqui temos uma lista do que idenficamos com status de pendente:

### Funcionalidades Aplicação

Segue abaixo (não se limita) os objetivos do presente projeto:

- [X] ~~Formatando documentação README.md~~
- [ ] Indexação completa do vídeo longo: 
    - [ ] [VIDEO LONGO 10307 – 03.04.07.64.04.06 – Boas Práticas para Composição de Frameworks Hyperledger Fabric em Redes Blockchain – Hyperledger Foundation – Questões](docs/indexacoes/VIDEO%20LONGO%2010307%20–%2003.04.07.64.04.06%20–%20Boas%20Práticas%20para%20Composição%20de%20Frameworks%20Hyperledger%20Fabric%20em%20Redes%20Blockchain%20–%20Hyperledger%20Foundation%20–%20Questões.pdf) (mais detalhes veja [aqui](../docs/indexacoes/README.md))
    - [ ] [VIDEO LONGO 22038 – 03.04.07.64 – Mercado de Trabalho em Blockchain - Hyperledger Foundation – Questões](docs/indexacoes/VIDEO%20LONGO%2022038%20–%2003.04.07.64%20–%20Mercado%20de%20Trabalho%20em%20Blockchain%20-%20Hyperledger%20Foundation%20–%20Questões.pdf) (mais detalhes veja [aqui](../docs/indexacoes/README.md))
- [ ] [Desenvolver Contratos Inteligentes](#cap-6-Nitin-Gaur)
- [ ] [Projetando transações de contratos inteligentes e estruturas de dados Ledger](#cap-5-Nitin-Gaur)
- [ ] [Desenvolver Aplicativos com Arquitetura Blockchain](#cap-7-Nitin-Gaur)

- [ ] [Metodologia Básica de Análise Exploratória](#GOODRICH-Michael-T), aplicar técncia para análise explorativa (engenharia reversa) nos projetos: 
  - [ ] [Hyperledger Fabric Samples (fabric-samples)](https://github.com/hyperledger/fabric-samples)
  - [ ] [Fabric Chaincode Java (fabric-chaincode-java)](https://github.com/hyperledger/fabric-chaincode-java)
  - [ ] [Fabric Chaincode Go (fabric-chaincode-go)](https://github.com/hyperledger/fabric-chaincode-go)
  - [ ] [Fabric Chaincode Node.js (fabric-chaincode-node)](https://github.com/hyperledger/fabric-chaincode-node)

  - [ ] [Hyperledger Fabric (fabric)](https://github.com/hyperledger/fabric)
  - [ ] [Trade Network (trade-network)](https://github.com/HyperledgerHandsOn/trade-network)
  - [ ] [Trade Contracts (trade-contracts)](https://github.com/HyperledgerHandsOn/trade-contracts)
- [ ] [Implementar Testes (TDD)](#GONZALEZ_Javier_cap_11): Técnica Red-Green-Refact
- [ ] Descrição sucinta [TRABALHO EM PROGRESSO]

### Atividades - DevOps

- [ ] Implementação dos Pipelines CI/CD de Implatação num Provedor de Nuvem (mais detalhes veja [aqui](docs/provedores_nuvem/README.md)).
- [ ] Implementar restrições de Commit no Git: vinculado com o ID de regra de negócio e ID do checklist de validação das entragas de funcionalidades (mais detalhes [aqui](docs/checklists/README.md))
- [ ] Implementar Dockerfiles para Kubernetes
- [ ] Colocar em prática o Desenvolvimento Orientado a Interface onde se deve desacoplar a aplicação do procedor de nuvem (Princípio da Segregação de Interface (ISP) - SOLID) (mais detalhes veja [aqui](docs/provedores_nuvem/README.md))
- [ ] Implementar Arquitetura Orienta a Eventos ([EDA](https://aws.amazon.com/pt/what-is/eda/))

### Suporte / Sustentação

- [ ] Abordagem API First e Implementação da Especificação do [OpenAPI (antido Swagger)](https://swagger.io/specification/) para integração com o back-end
- [ ] Clusterização da Solução em Diversas [VM em multicloud Nuvem]() para integração com o back-end

---

## 📦 Desenvolvimento

- [ ] Inplementar o gernciador de tarefas Gruntfile.js

### Mentalidade PDCA

Tendo em mente que sempre buscamos melhorar o protocolo de trabalho operacinal do dia a dia usando empirismo (colocar realmente em prática os conheicmentos abstratos):

<img src="docs/imgs/pdca.png" alt="PDCA: Aplicar na prática o empirismo" title="PDCA" style="width:475px;"/>

---

## Referências Usadas

Seque abaixo as referências bibliográficas usadas no presente projeto:

### Livros

---

<p align="justify">
[<a id="Nitin-Gaur">Nitin Gaur (Author), Luc Desrosiers (Author), Venkatraman Ramakrishna (Author)</a>] et al. Blockchain with Hyperledger Fabric, Second Edition: Build decentralized applications using Hyperledger Fabric 2 2nd ed. Edition. Cidade da publicação: Publisher : Packt Publishing; 2nd ed. edition (November 18, 2020). 756 pages. (Nome da série e/ou coleção, 978-1839218750). Disponível em: < <a href="https://a.co/d/0hvdoivW">https://a.co/d/0hvdoivW</a> >. Acesso em: 11 jul. 2024.
</p>

---

<p align="justify">
[<a id="cap-4-Nitin-Gaur">Nitin Gaur (Author), Luc Desrosiers (Author), Venkatraman Ramakrishna (Author)</a>] et al. <a href="https://a.co/d/0hvdoivW">Capítulo 4 ■ Preparando o cenário com um cenário de negócios</a>. In:______ Blockchain with Hyperledger Fabric, Second Edition: Build decentralized applications using Hyperledger Fabric 2 2nd ed. Edition. Cidade da publicação: Publisher : Packt Publishing; 2nd ed. edition (November 18, 2020). 756 pages. (Nome da série e/ou coleção, 978-1839218750). Disponível em: < <a href="https://a.co/d/0hvdoivW">https://a.co/d/0hvdoivW </a> >. Acesso em: 11 jul. 2024.
</p>

---

<p align="justify">
[<a id="cap-5-Nitin-Gaur">Nitin Gaur (Author), Luc Desrosiers (Author), Venkatraman Ramakrishna (Author)</a>] et al. <a href="https://a.co/d/0hvdoivW">Capítulo 5 ■ Projetando transações de contratos inteligentes e estruturas de dados Ledger</a>. In:______ Blockchain with Hyperledger Fabric, Second Edition: Build decentralized applications using Hyperledger Fabric 2 2nd ed. Edition. Cidade da publicação: Publisher : Packt Publishing; 2nd ed. edition (November 18, 2020). 756 pages. (Nome da série e/ou coleção, 978-1839218750). Disponível em: < <a href="https://a.co/d/0hvdoivW">https://a.co/d/0hvdoivW </a> >. Acesso em: 11 jul. 2024.
</p>

---

<p align="justify">
[<a id="cap-6-Nitin-Gaur">Nitin Gaur (Author), Luc Desrosiers (Author), Venkatraman Ramakrishna (Author)</a>] et al. <a href="https://a.co/d/0hvdoivW">Capítulo 6 ■ Desenvolvendo Contratos Inteligentes</a>. In:______ Blockchain with Hyperledger Fabric, Second Edition: Build decentralized applications using Hyperledger Fabric 2 2nd ed. Edition. Cidade da publicação: Publisher : Packt Publishing; 2nd ed. edition (November 18, 2020). 756 pages. (Nome da série e/ou coleção, 978-1839218750). Disponível em: < <a href="https://a.co/d/0hvdoivW">https://a.co/d/0hvdoivW </a> >. Acesso em: 11 jul. 2024.
</p>

---

<p align="justify">
[<a id="cap-7-Nitin-Gaur">Nitin Gaur (Author), Luc Desrosiers (Author), Venkatraman Ramakrishna (Author)</a>] et al. <a href="https://a.co/d/0hvdoivW">Capítulo 7 ■ Desenvolvendo Aplicativos</a>. In:______ Blockchain with Hyperledger Fabric, Second Edition: Build decentralized applications using Hyperledger Fabric 2 2nd ed. Edition. Cidade da publicação: Publisher : Packt Publishing; 2nd ed. edition (November 18, 2020). 756 pages. (Nome da série e/ou coleção, 978-1839218750). Disponível em: < <a href="https://a.co/d/0hvdoivW">https://a.co/d/0hvdoivW </a> >. Acesso em: 11 jul. 2024.
</p>


---

<p align="justify">
[<a id="FEATHERS-michael">MARTIN, Robert C. | FEATHERS Michael</a>]: Working Effectively with Legacy Code. Library of Congress Cataloging-in-Publication Data: 2004108115 Copyright © 2005 Pearson Education, Inc. Prentice Hall Professional Technical Reference Upper Saddle River, NJ 07458. ISBN 0-13-117705-2 (Robert C. Martin Series, número). Disponível em: < <a href="https://a.co/d/3RZL8Sl">https://a.co/d/3RZL8Sl</a> >. Acesso em: 16 Mai. 2024.
</p>

---

<p align="justify">
[<a id="GOETZ-Brian">GOETZ ,Brian; PEIERLS ,Tim; BLOCH, Joshua et al</a>]. Java Concurrency in Practice. 1 Ed. Addison-Wesley Professional; 1st edition (May 9, 2006). 432 pages. (Nome da série e/ou coleção, 978-0-321-34960-6). Disponível em: < <a href="https://a.co/d/4T05Xuz"> https://a.co/d/4T05Xuz </a> > . Acesso em: dia 12 jun. 2024.
</p>

---

<p align="justify"> 
[<a id="SELIKOFF-Scott">SELIKOFF, Scott; BOYARSKY, Jeanne</a>]. OCP Oracle® Certified Professional Java SE 17 Developer Study Guide Exam 1Z0-829 1 Ed. Cidade da publicação: Editora, ano de publicação. 1056 páginas. 1 Ed. (Nome da série e/ou coleção, 978-1119864585). Disponível em: < <a href="https://a.co/d/08ATqoe7">https://a.co/d/08ATqoe7 </a> >. Acesso em: 03 jul. 2024.
</p>

---

### Vídeos / Playlists

---



