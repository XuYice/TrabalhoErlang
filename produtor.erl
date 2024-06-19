-module(produtor).
-export([start/3]).

%Chamada do processo
start(IdP, IdB, T) ->
    io:format("Produtor gerado ~n"),
    produce(ProducerId, BufferPid, TimeToProduce).

produce(ProducerId, BufferPid, TimeToProduce) ->
    io:format("[producer] #~p working ~n", [ProducerId]),
    Product = TimeToProduce,
    timer:sleep(Product),
    BufferPid ! {ProducerId, Product, self()},
    produce(ProducerId, BufferPid, TimeToProduce).

