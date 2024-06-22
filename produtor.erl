-module(produtor).
-export([start/4).

start(IdP, IdB, T, Buffer) ->
    %% Mensagem de console para inicialização do produtor
    io:format("[Produtor] - Produtor Iniciado ~n"),

    %% Chamada do produtor
    loop(Buffer).    

loop(Buffer) ->
    %% This is a simple producer that generates an item and sends it to the buffer
    Buffer ! {produce, some_item},
    loop(Buffer).
