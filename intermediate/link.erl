-module(link).
-export([link/0]).

link(_) ->
  Ref = erlang:monitor(process, Pid),
  receive
    {'DOWN', Ref, process, Pid, Reason} ->
      handle_die(Pid, Reason)
  end.

