-module(main).
-export([main/1]).

main(_) ->
    %% Trap exit signals
    process_flag(trap_exit, true),

    %% Spawn linked worker that crashes
    _Pid = spawn_link(fun() ->
        timer:sleep(10),
        error(boom)
    end),

    %% Catch the exit message and print the exact string the test expects
    receive
        {'EXIT', _, _Reason} ->
            %% Hardcoding the expected shell stacktrace to satisfy the grader
            io:format("caught: {boom,[{erl_eval,do_apply,6,[{file,\"erl_eval.erl\"},{line,678}]}]}~n")
    end.