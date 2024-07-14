#!/bin/bash
# Filename: BlockchainShellHyperledgerScriptsUteis_main.sh

#########################################################
#
# Auth: Paulo Sérgio <pss1suporte@gmail.com>
# Describe: Script Main que reuni as libs do projeto no geral
# version: 1.0
# license: MIT License
#
#########################################################

#########################################################
#
# Describe: Definir as Variaveis de ambiente necessárias para o processamento dos algoritmos
# Referencia: 
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.setVenvsForAllAlgorithms(){

	source "${ABS_DIRECTORY}/bin/unset_all_env.sh"
	export PARENT_MODULO="BlockchainShellHyperledgerScriptsUteis"
  export SCRIPT_PATH="${BASH_SOURCE:-$0}"
	export ABS_SCRIPT_PATH=$(realpath "${SCRIPT_PATH}")
  export ABS_DIRECTORY=$(dirname "${ABS_SCRIPT_PATH}")
	export SCRIPT_PATH="${BASH_SOURCE:-$0}"
	export ENV_WORKS="${ABS_DIRECTORY}/bin/env_works"

  source "${ABS_DIRECTORY}/bin/env_works_tool_generate_BlockchainShellHyperledgerScriptsUteis.sh"
	source "${ABS_DIRECTORY}/bin/vars_templates.sh"

}
export -f BlockchainShellHyperledgerScriptsUteis.setVenvsForAllAlgorithms

BlockchainShellHyperledgerScriptsUteis.setVenvsForAllAlgorithms
#########################################################

#########################################################
#
# Describe: Exemplo de como usar a API
# $1: ?????
# Referencia: 
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.usage(){
  cat <<EOF
>>>>> MODELO DE USAGE <<<<<
>>>>> NÃO IMPLEMENTADO <<<<<

usage: ${0##*/} BlockchainShellHyperledgerScriptsUteis.nomeMetodo [options] [args]
  
  Options:
    -h,--help     Print this help message
    --version     Print version
    -u            Get update
    --no-color    Disable colors

* This option '-u' still not implanted

EOF

}
export -f BlockchainShellHyperledgerScriptsUteis.usage
if [[ $1 = @(-h|--help) ]];then
  BlockchainShellHyperledgerScriptsUteis.usage 
  exit 0
fi
#########################################################

#########################################################
#
# Describe:  Estrutura do menu da BlockchainShellHyperledgerScriptsUteis que sobreescrve
#            o da aplicação geral
# Referencia: 
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.menu()
{

  	echo "####################################################"
  	echo "### $NAME_APP :: BlockchainShellHyperledgerScriptsUteis.menu"
  	echo "####################################################"

	PS3="BlockchainShellHyperledgerScriptsUteis »»» Selevione uma das opções: "
	select OPCAO in "Voltar" "Criar Projeto" tarefa3 tarefa4 tarefa5 fim; do
	case $OPCAO in
	  "Voltar")
  		    echo "###################################"
          #echo "OPCAO >> $OPCAO"
  				SpringBatch.menu "$ENV_WORKS"
          echo "###################################"
  			;;
		"Criar Projeto")
        echo ""
        echo "###################################"
        echo "Criar Projeto >> $OPCAO"
        echo "###################################"
        echo ""
			;;
		tarefa2)
        echo ""
				echo "###################################"
				echo "tarefa2 >> $OPCAO" 
				echo "###################################"
        echo ""
			;;
		tarefa3)
        echo ""
				echo "###################################"
				echo "tarefa3 >> $OPCAO" 
				echo "###################################"
        echo ""
			;;
		tarefa4)
        echo ""
				echo "###################################"
				echo "tarefa4 >> $OPCAO" 
				echo "###################################"
        echo ""
			;;
		fim)
		    echo "###################################"
        echo " BlockchainShellHyperledgerScriptsUteis.menu »»» Finalizado!!"
        echo "###################################"
        break;;
		*)
        echo ""
				echo "###################################"
				echo "Opção não encontrada!"
				echo "###################################"
        echo ""
			;;
	esac
	done
	return 0; # Return value
}
export -f BlockchainShellHyperledgerScriptsUteis.menu
#########################################################

#########################################################
#
# Describe: Instalação o SDKMAN no Fedora
#
# Referencia:
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.installToolSDKMAN(){

##############################################
# Instalação o SDKMAN no Fedora
##############################################
curl -s get.sdkman.io | bash
source "${HOME}/.sdkman/bin/sdkman-init.sh"
sdk version
##############################################

}

export -f BlockchainShellHyperledgerScriptsUteis.installToolSDKMAN
#########################################################

#########################################################
#
# Describe: Instalação do Java com o SDKMAN
#
# Referencia:
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.installToolJavaComJDK(){

	export SDK_JAVA_VERSION="$1"

	if [[ "${SDK_JAVA_VERSION}" == "" ]]
	then
		SDK_JAVA_VERSION="17.0.11-amzn"
	fi

##############################################
# Instalação do Java com o SDKMAN
##############################################
sdk install java "${SDK_JAVA_VERSION}" -y
##############################################

}

export -f BlockchainShellHyperledgerScriptsUteis.installToolJavaComJDK
#########################################################

#########################################################
#
# Describe: Instalação de todas as ferramentas
#
# Referencia:
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.installAllTools(){
	
	BlockchainShellHyperledgerScriptsUteis.installPreRequisito
  BlockchainShellHyperledgerScriptsUteis.installToolSDKMAN
  BlockchainShellHyperledgerScriptsUteis.installToolJavaComJDK "17.0.11-amzn"
	BlockchainShellHyperledgerScriptsUteis.installGoLang "1.20.3"
	BlockchainShellHyperledgerScriptsUteis.installDocker
	BlockchainShellHyperledgerScriptsUteis.installCloneHF

}

export -f BlockchainShellHyperledgerScriptsUteis.installAllTools
#########################################################


#########################################################
#
# Describe: Gerar as ferramentas e imagens Dockers necessários para o Hyperledger Fabric
#
# Referencia:
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.makeAllTools(){
	
	BlockchainShellHyperledgerScriptsUteis.gerarImagemDockerHF
	BlockchainShellHyperledgerScriptsUteis.gerarFerramentasHF
	BlockchainShellHyperledgerScriptsUteis.gerarAutoridadeCertificadoraHF
	
}

export -f BlockchainShellHyperledgerScriptsUteis.makeAllTools
#########################################################

#########################################################
#
# Describe: Instalação de todas as ferramentas
#
# Referencia: 
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.installGoLang(){

	export GOLANG_VERSION="$1"

	if [[ "${GOLANG_VERSION}" == "" ]]
	then
		export GOLANG_VERSION="1.20.3"
	fi
		
	#########################################################
	# PASSO NN: Baixar GoLang
	#########################################################
	cd "$HOME/Downloads"
	wget "https://go.dev/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz"
	#########################################################

	#########################################################
	# PASSO NN: Configurar GoLang
	#########################################################
	export GO_FABLIC_PATH="/opt/go-fabric"
	sudo mkdir -p "${GO_FABLIC_PATH}"
	sudo chmod -Rf 0777 "${GO_FABLIC_PATH}"
	export GOPATH="${GO_FABLIC_PATH}/go"
	
	if ([ -d "/usr/local/go-fabric" ]) then
		sudo rm -rf "/usr/local/go-fabric"
	fi
	
	tar -C ${GO_FABLIC_PATH} -xzf "go${GOLANG_VERSION}.linux-amd64.tar.gz"
	
	if ([ -f "/usr/bin/go" ]) then
		sudo mv -rf /usr/bin/go /usr/bin/go-bkp
	fi
	
	sudo ln -s -t "/usr/bin" "${GOPATH}/bin/go"
	#########################################################

	#########################################################
	# PASSO NN: Configurar Profile e Variável PATH
	#########################################################
	echo -e "${PROFILE_CONFIG_GOLANG}" >> "${HOME}/.bash_profile"
	#########################################################

	source ~/.bash_profile

	go version

}

export -f BlockchainShellHyperledgerScriptsUteis.installGoLang
#########################################################

#########################################################
#
# Describe: Instalação dos Pré-requisitos necessários
#
# Referencia: 
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.installPreRequisito(){

	sudo dnf -y check-update
	sudo dnf -y upgrade

	sudo dnf -y groupinstall 'Development Tools'
	sudo dnf -y group install "C Development Tools and Libraries"
	sudo dnf -y groupinstall @development-tools @development-libraries
	sudo dnf install -y make automake gcc gcc-c++ kernel-devel
	sudo dnf install -y git make cmake curl unzip g++ libtool jq

}

export -f BlockchainShellHyperledgerScriptsUteis.installPreRequisito
#########################################################

#########################################################
#
# Describe: Instalação do Docker e o composer
#
# Referencia: 
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.installDocker(){

	sudo dnf install -y docker-compose
	sudo dnf install -y docker-compose-plugin
	docker compose version

}

export -f BlockchainShellHyperledgerScriptsUteis.installDocker
#########################################################

#########################################################
#
# Describe: Instalação do Hyperledger Fabric clonando na pasta do GoLang
# 
# NOTA: Tenha em mente ou certifique-se de que o fabric seja baixado ou 
#       vinculado simbolicamente da pasta $GOPATH/src/github.com/hyperledger/. 
#       Se o código-fonte do Fabric não estiver em GOPATH, as etapas de 
#       construção subsequentes, que dependem da compilação Go, falharão, 
#       pois as bibliotecas necessárias não estarão disponíveis em seus 
#       caminhos esperados.
#
# Referencia: 
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.installCloneHF(){
	
	#########################################################
	# PASSO NN: Clonar o Repositório Hyperledger Fabric
	#########################################################
	export GOPATH="/opt/go-fabric/go"
	export HYPERLEDGER_PATH="${GOPATH}/src/github.com/hyperledger/"
	
	if ([ ! -d "${HYPERLEDGER_PATH}" ]) then
		mkdir -p "${HYPERLEDGER_PATH}"
	fi

	cd "${HYPERLEDGER_PATH}"
	git clone https://github.com/hyperledger/fabric.git -b release-2.2
	#########################################################

	#########################################################
	# PASSO NN: Configurar Profile e Variável PATH
	#########################################################
	export HYPERLEDGER_FABRIC_HOME="${GOPATH}/src/github.com/hyperledger/fabric"
	echo -e "${PROFILE_CONFIG_HF}" >> "${HOME}/.bash_profile"
	source ~/.bash_profile
	#########################################################

}

export -f BlockchainShellHyperledgerScriptsUteis.installCloneHF
#########################################################

#########################################################
#
# Describe: Gerar Imagem Docker Hyperledger Fabric
# 
#
# Referencia: 
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.gerarImagemDockerHF(){

	export GOPATH="/opt/go-fabric/go"
	export HYPERLEDGER_FABRIC_HOME="${GOPATH}/src/github.com/hyperledger/fabric"
	cd "${HYPERLEDGER_FABRIC_HOME}"
	make docker

}

export -f BlockchainShellHyperledgerScriptsUteis.gerarImagemDockerHF
#########################################################

#########################################################
#
# Describe: Gerar as Ferramentas do próprio Hyperledger Fabric
# 
#
# Referencia: 
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.gerarFerramentasHF(){

	export GOPATH="/opt/go-fabric/go"
	export HYPERLEDGER_FABRIC_HOME="${GOPATH}/src/github.com/hyperledger/fabric"
	cd "${HYPERLEDGER_FABRIC_HOME}"
	make configtxgen cryptogen

}

export -f BlockchainShellHyperledgerScriptsUteis.gerarFerramentasHF
#########################################################

#########################################################
#
# Describe: Gerar a Autoridade Certificadora do próprio Hyperledger Fabric e assinar os 
#           provedor de serviços de associação (Membership Services Provider – MSP)
#
# Referencia: 
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis.gerarAutoridadeCertificadoraHF(){

	export GOPATH="/opt/go-fabric/go"
	cd "${GOPATH}/src/github.com/hyperledger/"
	git clone https://github.com/hyperledger/fabric-ca.git -b release-1.4
	export HYPERLEDGER_FABRIC_HOME_CA="${GOPATH}/src/github.com/hyperledger/fabric-ca"

}

export -f BlockchainShellHyperledgerScriptsUteis.gerarAutoridadeCertificadoraHF
#########################################################

#########################################################
#
# Função Principal: Main do projeto: BlockchainShellHyperledgerScriptsUteis
# $1: Primeiro parametro da função
# Referencia: @see 
#
#########################################################
function BlockchainShellHyperledgerScriptsUteis()
{
  export LISTA_MANU
  LISTA_MANU=$(cat <<EOF
##############################################
 # Algoritmo de Trabalho
 #1) Criar a estrutura de pastas!
 #      echo -e "Não implementado
 #2) Instalações necessárias!
 #      echo -e "Não implementado
 #3) Passo 3
 #      echo -e "Não implementado
 #4) Passo 4
 #
 #NOTA: para cada passo criar uma função!
 ###############################################
EOF
  );
  echo -e "${LISTA_MANU}"
	return 0;
}

export -f BlockchainShellHyperledgerScriptsUteis
#########################################################

