-module(produtor).
-export([start/2]).

start(Name, Buffer) ->
    %% Mensagem de console para inicialização do produtor
    io:format("[~p] - Iniciado ~n", [Name]),
    loop(Name, Buffer).    

loop(Name, Buffer) ->
    %% Definição de segundos
    Time = value(),
    io:format("[~p] - Tempo definido de ~p milissegundos~n", [Name, Time]),

    %% Temporizador
    io:format("[~p] - Temporizador de ~p iniciado~n", [Name, Time]),
    timer:sleep(Time),
    io:format("[~p] - Temporizador de ~p finalizado~n", [Name, Time]),

    %% Tentativa de enviar mensagem com produto para buffer
    try
        Buffer ! {produtor, Time}
    catch
        error:badarg ->
            %% Tratamento específico para badarg (argumento inválido)
            io:format("[~p] - Erro ao enviar mensagem para o buffer: argumento inválido~n", [Name])
    end,

    loop(Name, Buffer).

%% Função para gerar valor de 3.5 ou 7 milissegundos
value() ->
    RandomNumber = rand:uniform(),
    case RandomNumber < 0.5 of
        true -> round(3.5 * 1000);
        false -> round(7 * 1000)
    end.