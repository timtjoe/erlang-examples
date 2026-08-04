-module(hof).
-export([hof/1, fact_marker/0]).

main(_)->
  
  hof(_)->
    Double = fun(N) -> N * 2,
    lists:map(fun(N) -> N * 2 end, [1, 2, 3]),
  end.

  fact_marker() ->
    Pi = 3.14159,
    fun(R) -> Pi * R * R end.
  
  % Area = fact_marker(),
  % Area(5).
  
  % Function references
  % 
  % F = fun lists:reverse/1.
  % F([1,2,3]).
  
  % Upper = fun string:to_upper/1.
  
    lists:map(fun(N) -> N * 2 end, [1,2,3]).
    lists:filter(fun(N) -> N > 2 end, [1,2,3,4,5]).
    lists:foldl(fun(N, Acc) -> N + Acc end, 0, [1,2,3,4,5]).
  
  % List comprehensions - sugar over higher-order functions
  [X * 2 || X <- [1,2,3,4,5]].
    %% [2,4,6,8,10]
  [X * X || X <- [1, 2,3,4,5], X rem 2 =:= 0].
    %% [4,16] - squares of even
  [{X, X } || X <- [1,2,3], Y <- [a, b]].
    %% [{1,a},{1,b},{2,a},{3,a},{3,b}]

    % Composing higher-order functions
  Nums = [1,2,3,4,5].
    Result = lists:sum(
      lists:map(fun(N)-> N * N end , lists:filter(fun(N)-> N rem 2 =:= 1 end , Nums))).
    % sum of squares of odds = 1 + 9 + 25 = 35
  
  % Verbose. comprehension equivalent
    lists:sum([X * X || X <- Nums, X rem 2 =:= 1])