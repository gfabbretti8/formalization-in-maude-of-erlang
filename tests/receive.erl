(add-module(

fun start() ->
    erlang : spawn(do-receive),
    1 ! true,
    1 ! ciao .

fun do-receive() ->
  receive
    ciao -> ciao ;
    true -> true
  end .

, start))
