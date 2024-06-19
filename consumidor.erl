-module(consumidor).
-export([start/4]).

start(IdC, IdB, T1, T2) ->
    io:format("Consumidor iniciado ~n"),
    loop(IdC, IdB,TimeToConsume).

loop(ConsumerId, BufferPid,
		       TimeToConsume) ->
    %BufferPid ! {Idc, self()},
    receive
        io:format("Recebeu mensagem ~n")
    end.
