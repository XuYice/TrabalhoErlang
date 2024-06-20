-module(main).
-export([start/0]).

start() ->
    %% Mensagem de console para inicialização do programa
    io:format("[Main] - Programa Iniciado ~n"),

    %% Inicialização do buffer
    Buffer = spawn(buffer, start, []),

    %% Inicialização do produtor
    P1 = spawn(produtor, start, [Buffer]),
    P2 = spawn(produtor, start, [Buffer]),

    %% Inicialização do consumidor
    C1 = spawn(consumidor, start, [Buffer]),
    C2 = spawn(consumidor, start, [Buffer]),
    C3 = spawn(consumidor, start, [Buffer]),
    C4 = spawn(consumidor, start, [Buffer]),
    C5 = spawn(consumidor, start, [Buffer]),

    {Buffer, P1, P2, C1, C2, C3, C4, C5}.
