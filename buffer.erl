-module(buffer).
-export([start/0]).

start() ->
    %% Mensagem de console para inicialização do buffer
    io:format("[Buffer] - Buffer Iniciado").