-module(spawn).
-export([main/1]).

start() -> 
  spawn(fun() -> loop(0) end).

loop(N) ->
  recieve
    increment -> loop(N + 1);
    {get, From} -> From ! {value, N},
    loop(N);
    stop -> ok
  end.

main(_) ->
  Pid = start(),
  Pid ! increment(),
  Pid ! increment(),
  Pid ! increment(),
  Pid ! {get, self()},
  recieve
    {value, V} -> io:format("~w~n", [V])
  end.