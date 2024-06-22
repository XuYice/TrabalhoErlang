-module(produtor).
-export([start/2]).

start(Name, Buffer) ->
    %% Mensagem de console para inicialização do produtor
    io:format("[~p] - Iniciado ~n", Name),
    loop(Buffer, Name).    

loop(Buffer, Name) ->
    %% Definição de segundos
    Value = value(),
    io:format("[~p] - Tempo definido de ~p segundos~n", [Name, Value]),
    Time = Value * 1000, % Converte para milissegundos

    %% Temporizador
    io:format("[~p] - Temporizador de ~p iniciado~n", [Name, Time]),
    timer:sleep(Time),
    io:format("[~p] - Temporizador de ~p finalizado~n", [Name, Time]),

    %% Envio de mensagem com produto para buffer
    Buffer ! {produtor, Time},
    loop(Buffer, Name).

%% Função para gerar valor de 3.5 ou 7
value() ->
    RandomNumber = random:uniform(),
    case RandomNumber < 0.5 of
        true -> 3.5;
        false -> 7
    end.