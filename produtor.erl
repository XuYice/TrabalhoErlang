-module(produtor).
-export([start/3]).

%Chamada do processo
start(IdP, IdB, T) ->
    io:format("Produtor gerado ~n").

