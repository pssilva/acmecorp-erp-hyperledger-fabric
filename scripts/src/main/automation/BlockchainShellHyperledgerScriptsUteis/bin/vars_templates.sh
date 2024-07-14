#!/bin/bash
########################################
#
# Filename: vars_templates.sh
#
# Variaveis usadas como templates e retuilização!
# para o projeto: {{NAME_PROJECT}}
#
########################################

#!/bin/bash
########################################
#
# Filename: vars_templates.sh
#
# Variaveis usadas como templates e retuilização!
# para o projeto: {{NAME_PROJECT}}
#
########################################

export MAVEN_SUREIFRE_PLUGIN=$(cat <<EOF
    <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-surefire-plugin</artifactId>
        <version>\$\{surefire-plugin-version\}</version>
        <configuration>
            <skipTests>true</skipTests>
        </configuration>
    </plugin>
EOF
);

export PROFILE_CONFIG_HF=$(cat <<EOF
##############################################
# Ferramentas do Hyperledger Fabric
##############################################
export HYPERLEDGER_FABRIC_HOME="\${GOPATH}/src/github.com/hyperledger/fabric"
export PATH="\${PATH}:\${HYPERLEDGER_FABRIC_HOME}/build/bin"
##############################################
EOF
	);

export PROFILE_CONFIG_GOLANG=$(cat <<EOF
##############################################
# Configurar o PATH com os executáveis do GoLang
##############################################
export GOPATH="/opt/go-fabric/go"
export PATH="\${PATH}:\${GOPATH}/bin"
##############################################
EOF
	);

SPRINGBOOT_MAVEN_PLUGIN=$(cat <<EOF

EOF
);

########################################
