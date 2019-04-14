# Ansible Demo
Esta demonstração é um código Ansible para criar uma blockchain utilizando Hyperledger Fabric

## 1-Pré-Reqs
Primeiro, é necessário criar duas máquinas (dentro da mesma Rede, pois ambas precisam se comunicar).

Após a criação das máquinas, é necessário instalar os softwares que serão utilizados:

	https://hyperledger-fabric.readthedocs.io/en/release-1.4/prereqs.html

Clone o repositório fabric-samples:

	https://github.com/hyperledger/fabric-samples

E instale os binários do Hyperledger no Go Path. Além disto, baixe as imagens padrão do docker:

	https://hyperledger-fabric.readthedocs.io/en/release-1.4/install.html

## 2-Ansible
Configure o Ansible, conforme documentação:
	https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

## 3-Projeto
Clone o projeto ansible:

	https://github.com/evandrofranco/demo-ansible-tdc

Entre no diretório e altere no arquivo ansible_hosts.yml os campos:
* Hosts
* Chave de acesso (.pem)
* Usuário do Linux


## 4-Execução
A instalação é realizada em duas etapas:

### 4.1-Configuração Docker Swarm e Crypto Material
A primeira parte da automação feita em ansible cria a rede entre o docker das máquinas através do Swarm e o crypto material inicial para início da rede Blockchain. Para iniciar, basta executar o script abaixo:

	one_time.sh

** Para recriar a Rede, não é necessário ficar executando novamente este passo. **

### 4.2-Criação da Blockchain
Para criar os seguintes componentes da Blockchain:
* CA
* Zookeper
* Kafka
* Orderes
* Couch DB e Peers
* Instalar e instanciar o chaincode (em node)

Basta executar o script abaixo:

	setup-blockchain.sh

## 5-Remoção
Para remover todos os containers criados da Blockchain, basta executar o script:

	kill_docker.sh	

## 6-Próximos Passos
Como foi utilizado ambiente Cloud, as etapas de pré-requisitos e configuração dos binários foi automatizada através de uma imagem padrão.
Futuramente, isto será incluso neste projeto.

## 7-Referências
Abaixo o projeto de referência para geração dos canais e blocos:

	https://github.com/evandrofranco/fabric-demo-tdc-ansible

