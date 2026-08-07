-module(ets).
-export([main/1]).

main(_) ->
  %% Create a table 
  Tab = ets:new(my_table, [set, public, named_table]).

  %% Insert
  ets:insert(my_table, {alice, 30}),
  ets:insert(my_table, {bob, 25}),
  ets:insert(my_table, {carol,  40}),

  %% Lookup
  [{_, Age}] = ets:lookup(my_table, alice),
  io:format("alice: ~w~n", [Age]),

  %% Iterate 
  ets:foldl(fun({K, V}, Acc) -> [{K, V} | Acc] end, [], my_table),

  %% Delete 
  ets:delete(my_table, bob),

  %% Cleanup
  ets:delete(my_table).