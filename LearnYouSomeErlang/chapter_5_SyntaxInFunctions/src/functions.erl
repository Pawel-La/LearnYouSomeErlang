%%%-------------------------------------------------------------------
%%% @author Paweł
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. kwi 2023 23:42
%%%-------------------------------------------------------------------
-module(functions).
-author("Paweł").

%% API
-export([head/1, same/2, get_nth_element_of_list/2]).

head([H|_]) -> H.

same(X, X) -> true;
same(_, _) -> false.

get_nth_element_of_list(_List, N) when N =< 1 -> {error, "N must be a positive number"};
get_nth_element_of_list(List, N) -> get_nth_element_of_list(List, N, 1).

get_nth_element_of_list([H|_], N, N) -> H;
get_nth_element_of_list([_|T], N, M) -> get_nth_element_of_list(T, N, M+1);
get_nth_element_of_list([], _, _) -> {error, "List has less than n elements"}.
