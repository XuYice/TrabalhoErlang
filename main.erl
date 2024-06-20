-module(main).
-export([start/0, start/2]).

start() ->
    %% Console message of start program
    io:format("Iniciado ~n"),

    %% Start the buffer process
    Buffer = spawn(buffer, start, []),

    %% Start producer processes
    P1 = spawn(producer, start, [Buffer]),
    P2 = spawn(producer, start, [Buffer]),

    %% Start consumer processes
    spawn(consumer, start, [Buffer]),
    spawn(consumer, start, [Buffer]),
    spawn(consumer, start, [Buffer]),
    spawn(consumer, start, [Buffer]),
    spawn(consumer, start, [Buffer]),

    {Buffer, P1, P2}.


start(Produtores, Consumidores) ->
    io:format("Iniciado ~n"),
    Buffer = spawn(buffer, start, []).
