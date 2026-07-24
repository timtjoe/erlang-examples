-module(tuples).
-export([tuples/1]).

tuples(_) -> 
  Point = {3,4},
  {X, Y} = Point, % pattern match - X-3, Y-4
  Person = {person, "Ada", 36} %tagged tuple - convention