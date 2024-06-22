-module(main).
-export([start/0]).

start() ->
    %% Mensagem de console para inicialização do programa
    io:format("[Main] - Programa Iniciado ~n"),

    %% Inicialização do buffer
    Buffer = spawn(buffer, start, []),

    %% Inicialização dos produtores
    P1 = spawn(produtor, start, [produtor1, Buffer]),
    P2 = spawn(produtor, start, [produtor2, Buffer]),

    %% Inicialização dos consumidores
    C1 = spawn(consumidor, start, [consumidor1, Buffer]),
    C2 = spawn(consumidor, start, [consumidor2, Buffer]),
    C3 = spawn(consumidor, start, [consumidor3, Buffer]),
    C4 = spawn(consumidor, start, [consumidor4, Buffer]),

    {Buffer, P1, P2, C1, C2, C3, C4}.
