-module(hello_world).
-compile(export_all).


hello() ->
    io:format("hello world~n").

age(Age) when Age > 19 ->
    adult;
age(Age) when Age >= 13, Age =< 19 ->
    teen;
age(Age) when Age >= 3, Age < 13 ->
    child;
age(Age) when Age >= 1, Age < 3 ->
    toddler.





is_single_digit(N) when N > 0, N < 10;
                        N =< 0, N > -10 ->
    io:format("~p is a single digit integer ~n", [N]);

is_single_digit(N) ->
    io:format("Nope, ~p is not a single digit~n", [N]).


run() ->
    io:format("A ~p year old is a ~p~n", [1, age(1)]),
    io:format("A ~p year old is a ~p~n", [4, age(4)]),
    io:format("A ~p year old is a ~p~n", [13, age(13)]),
    io:format("A ~p year old is a ~p~n", [21, age(21)]),


    is_single_digit(15),
    is_single_digit(4),
    is_single_digit(-5).
