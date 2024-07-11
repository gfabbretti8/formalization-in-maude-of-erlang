(add-module(

fun testsend() ->
  erlang : spawn ( testreceive, [] ),
  erlang : spawn ( anothersend, [] ),
  1 ! arrivederci .


fun anothersend() ->
  1 ! ciao .

fun testreceive() ->
    receive
      qualcosa -> no ;
      ciao -> ciao ;
      arrivederci -> tuttobene
    end .

, testsend, empty))
