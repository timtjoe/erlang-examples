-module(main).
-export([main/1, loop/1]).

loop(N) ->
    receive
        inc -> loop(N + 1);
        {get, From} -> From ! N, loop(N)
    end.

main(_) ->
    Pid = spawn(?MODULE, loop, [0]),
    %% send 5 inc messages
    %% send {get, self()}
    %% receive and print
    Pid ! inc, Pid ! inc, Pid ! inc, Pid ! inc, Pid ! inc,
    Pid ! {get, self()},
    receive N -> io:format("~w~n", [N]) end.
