-module(variable).
-export([variable/1]).

variable(_) ->
  Name    = "Ada",    % Variable
  Age     = 36,       % Variable
  status  = active,   % SYNTAX ERROR - lowercase isn't a variable
  Status  = active,   % OK - Status (var) bound to atom 'active'
  io:format(Name~n)
  % Pattern matching is everything
  {X, Y} = {1, 2},      % Binds X=1, Y=2
  [H | T] = [1, 2, 3],  % H=1, T=[1,2]

  % Reading stdin:
  Line = io:get_line(""),
  %% strips trailing newline first:
  Trimmed = string:trim(Line, trailing, "\n"),
  N = list_to_integer(Trimmed)
