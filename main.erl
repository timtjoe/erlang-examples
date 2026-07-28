-module(main).
-export([main/1]).

main(_) ->
    %% TODO: print exactly these four lines:
    %% -module
    %% -export
    %% fn/arity
    %% Module:Function
    io:format("-module~n"),
    io:format("-export~n"),
    io:format("fn/arity~n"),
    io:format("Module:Function~n"),
    ok.
