-module(main).
-export([main/1]).

loop(N) ->
    receive
        inc -> loop(N + 1);
        {get, From} -> From ! N
    end.

main(_) ->
    Pid = spawn(fun() -> loop(0) end),
    %% send inc 5 times
    %% ask for value
    %% print result
    Pid ! inc.
