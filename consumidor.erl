-module(consumidor).
-export([start/2]).

start(Name, Buffer) ->
    %% Mensagem de console para inicialização do consumidor
    io:format("[~p] - Consumidor iniciado ~n", [Name]),
    loop(Name, Buffer).

loop(Name, Buffer) ->
    %% Envia uma mensagem ao buffer para consumir um item
    Buffer ! {consumidor, self()},
    receive
        {consumidor, Item} ->
            io:format("[~p] - Item Consumido: ~p~n", [Name, Item]),

            %% Temporizador
            io:format("[~p] - Temporizador de ~p iniciado~n", [Name, Item]),
            timer:sleep(Item),
            io:format("[~p] - Temporizador de ~p finalizado~n", [Name, Item]);

        {empty} ->
            timer:sleep(2500);
            %io:format("[~p] - Buffer Está Vazio~n", [Name])
    
    other ->
        io:format("[~p] - Falha na comunicação com o Buffer ~n", [Name])
    end,

    loop(Name, Buffer).
