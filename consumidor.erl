-module(consumidor).
-export([start/2]).

start(Name, Buffer) ->
    %% Mensagem de console para inicialização do consumidor
    io:format("[Consumidor] - Consumidor iniciado ~n"),
    loop(Name, Buffer).

loop(Name, Buffer) ->
    %% Envia uma mensagem ao buffer para consumir um item
    Buffer ! {consumidor, self()},
    receive
        {consume, Item} ->
            io:format("[Buffer] - Item Consumido: ~p~n", [Item]);
        {empty} ->
            io:format("[Buffer] - Buffer Está Vazio~n")
    end,
    loop(Name, Buffer).
