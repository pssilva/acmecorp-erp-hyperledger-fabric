#!/usr/bin/make -f
##-------------------------------------------------------------
#
# Descrição sucinta do Makefile
#
# @Author:
# @email:
# @since:
##-------------------------------------------------------------

##-------------------------------------------------------------
# Listagem dos alvos (targets) com descrição sucinta.
##-------------------------------------------------------------
#
#
#
#
##-------------------------------------------------------------

##-------------------------------------------------------------
# Declaração das Variaveis
##-------------------------------------------------------------
APPS = ./apps
BIN = ./bin
INCLUDE = ./include
OBJ = ./obj
SRC = ./src
##-------------------------------------------------------------

##-------------------------------------------------------------
#
##-------------------------------------------------------------

all: passoUm passoDois passoTres

passoUm:
	@echo "Passo 01 do processo!!"

passoDois:
	@echo "Passo 02 do processo!!"

passoTres:
	@echo "Passo 03 do processo!!"

$(BIN)/%: $(APPS)/%.c
	gcc $< $(OBJ)/*.o -I $(INCLUDE) -o $@

run:
	@echo "Executar o projeto!"

clean:
	@echo "Limpar o projeto!"

clean_apps:
	@echo "Limpar a aplicação!"

##-------------------------------------------------------------
