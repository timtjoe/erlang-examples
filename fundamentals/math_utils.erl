%% File: math_utils.erl
-module(math_utils).
-export([double/1, square/1, sum/1]).
-vsn("1.0").
-behaviour(gen_server).

% Module-level constants
-define(MAX_RETRIES, 5).
-define(PI, 3.1459).

area(R)-> ?PI * R * R.
double(N) -> N * 2.
square(N) -> N * N.
sum(L) -> lists:sum(L).
