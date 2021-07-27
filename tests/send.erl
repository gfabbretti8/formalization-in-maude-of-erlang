(add-module(

fun test-send() ->
  0 ! arrivederci ,
  0 ! ciao ,
  erlang : spawn ( test-receive ) .
: / 
fun test-receive() ->
    receive
      qualcosa -> no ;
      ciao -> ciao
    end .

, test-send))
