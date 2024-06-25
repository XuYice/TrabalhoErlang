# Programa - Produtor/Consumidor

Este guia fornece instruções para compilar e executar um programa em Erlang a partir da linha de comando.

## Pré-requisitos

Certifique-se de ter o ambiente Erlang instalado em seu sistema. Você pode baixá-lo e instalá-lo a partir do [site oficial do Erlang](https://www.erlang.org/).

## Preparação

1. **Clone o Repositório:**
   Clone o repositório que contém o código fonte do programa Erlang.

   ```bash
   clone https://github.com/RetiredXu/TrabalhoErlang.git
   cd TrabalhoErlang

2. **Compilação:**
   Compile o código fonte usando o Erlang Compiler (erlc).

   ```bash
   erlc -o beam buffer.erl produtor.erl consumidor.erl main.erl
   ```

## Execução

   Inicie a linha de comando do Erlang e execute a função start do arquivo main, vale ressaltar que o comando de compilação colocou os arquivos compilados em uma pasta chamada beam, então abra a linha de comando do Erlang indicando o caminho para esta pasta conforme indicado no bash abaixo.

   ```bash
   erl -pa /caminho/para/sua/pasta/beam
   main:start().
   ```
