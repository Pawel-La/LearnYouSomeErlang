%%%-------------------------------------------------------------------
%%% @author Paweł
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. kwi 2023 23:29
%%%-------------------------------------------------------------------
-module(useless).
-author("Paweł").

%% API
-export([welcome_and_add_two/2, welcome/1]).

-define(add(X, Y), X + Y).

welcome(Name) -> io:format("Hello ~s!~n", [Name]).

welcome_and_add_two(Name, Number) ->
  welcome(Name),
  ?add(Number, 2).
