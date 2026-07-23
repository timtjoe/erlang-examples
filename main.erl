-module(main).
-export([main/1, fizzbuzz/1]).

%% TODO: clauses for fizzbuzz/1
fizzbuzz(N) when N rem 15   =:= 0   -> "FizzBuzz";
fizzbuzz(N) when N rem 3    =:= 0   -> "Fizz";
fizzbuzz(N) when N rem 5    =:= 0   -> "Buzz";
fizzbuzz(N) -> integer_to_list(N).

main(_) ->
    N = list_to_integer(string:trim(io:get_line(""))),
    Result = fizzbuzz(N),  %% replace with fizzbuzz(N)
    case Result of 
        Str when is_list(Str) -> io:format("~s~n", [Str]);
        Num -> io:format("~w~n", [Num])
    end,
    ok.