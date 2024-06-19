-module(main).
-export([start/2]).

start(Produtores, Consumidores) ->
    io:format("Iniciado ~n"),
    Buffer = spawn(buffer, start, []).
