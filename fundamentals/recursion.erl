-module(recursion).
-export([recursion/1]).

length([]) -> 0;
length([_ | T]) -> T + length(T)

% sum([]) -> 0;
% sum([H | T]) -> H + sum(T).

% Tail recursion
sum(L) -> sum(L, 0).

sum([], Acc) -> Acc;
sum([H | T], Acc) -> sum(T, Acc + H).     % LAST call - Tail Position

% Guard recursion
classify(N) when N < 0 -> negative;
classify(0) -> zero;
classify(N) when N > 0 -> positive;