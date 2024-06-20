-module(consumidor).
-export([start/4]).

start(IdC, IdB, T1, T2) ->
    %% Mensagem de console para inicialização do buffer
    io:format("Consumidor iniciado ~n"),
    loop(IdC, IdB, T1).

loop(ConsumerId, BufferPid, TimeToConsume) ->
    %% Envia uma mensagem ao buffer para consumir um item
    BufferPid ! {consume, self()},
    receive
        {consume, Item} ->
            io:format("[Buffer] - Item Consumido: ~p~n", [Item]);
        {empty} ->
            io:format("[Buffer] - Buffer Está Vazio~n")
    end,
    loop(ConsumerId, BufferPid, TimeToConsume).
