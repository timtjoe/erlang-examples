-module(map).

M = #{name => "Ada", age => 36, email => "ada@example.com"}.

maps:get(name, M)               %% "Ada" - throws missing
maps:get(missing, M, default)   %% "default" - with fallback
maps:find(name, M)              %% {ok, "Ada"}
maps:find(missing, M)           %% error

%% #{name := Name} syntax for pattern matching:
#{name := Name} = M,
io:format("~s~n", [Name]).      %% "Ada"

% Updaing maps
M2 = M#{age => 37}.             %% new map with age changed
M3 = M#{role => admin}.         %% new map with role added
M4 = maps:remove(email, M).     %% new map without email
M5 = M#{age := 3}.

% Iterating
maps:fold(fun(K, V, Acc) -> [{K, V} | Acc] end, [], M).
maps:keys(M).                   %% [name, age, email]

% Pattern matching on maps
process(#{type := user, name := }) -> {user, Name};
process(#{type := admin, perms := P}) -> {admin, P};
process(_) -> unknown;