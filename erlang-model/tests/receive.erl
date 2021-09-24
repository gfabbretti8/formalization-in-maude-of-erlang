(add-module(

fun start() ->
    erlang : spawn(doreceive),
    1 ! true,
    1 ! ciao .

fun doreceive() ->
  receive
    ciao -> ciao ;
    true -> true
  end .

, start))
