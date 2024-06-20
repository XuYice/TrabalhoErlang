-module(producer).
-export([start/4, produce/1]).

%Chamada do processo
start(IdP, IdB, T, Buffer) ->
    %% Mensagem de console para inicialização do produtor
    io:format("Produtor gerado ~n"),
    produce(Buffer).    

produce(Buffer) ->
    %% This is a simple producer that generates an item and sends it to the buffer
    Buffer ! {produce, some_item},
    produce(Buffer).
