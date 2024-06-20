-module(main).
-export([start/0, start/2]).

start() ->
    %% Mensagem de console para inicialização do programa
    io:format("Iniciado ~n"),

    %% Inicialização do buffer
    Buffer = spawn(buffer, start, []),

    %% Inicialização do produtor
    P1 = spawn(producer, start, [Buffer]),
    P2 = spawn(producer, start, [Buffer]),

    %% Inicialização do consumidor
    spawn(consumer, start, [Buffer]),
    spawn(consumer, start, [Buffer]),
    spawn(consumer, start, [Buffer]),
    spawn(consumer, start, [Buffer]),
    spawn(consumer, start, [Buffer]),

    {Buffer, P1, P2}.


start(Produtores, Consumidores) ->
    io:format("Iniciado ~n"),
    Buffer = spawn(buffer, start, []).
