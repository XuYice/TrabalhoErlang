# Programa - Produtor/Consumidor

Este guia fornece instruções para compilar e executar um programa em Erlang a partir da linha de comando.

## Pré-requisitos

Certifique-se de ter o ambiente Erlang instalado em seu sistema. Você pode baixá-lo e instalá-lo a partir do [site oficial do Erlang](https://www.erlang.org/).

## Preparação

1. **Clone o Repositório:**
   Clone o repositório que contém o código fonte do programa Erlang.

   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio

  2. **Compilação:**
   Compile o código fonte usando o Erlang Compiler (erlc).

   ```bash
   erlc -o beam buffer.erl produtor.erl consumidor.erl main.erl
   ```

## Execução

   Inicie a linha de comando do Erlang e execute a função start do arquivo main

   ```bash
   erl
   main:start().
   ```
