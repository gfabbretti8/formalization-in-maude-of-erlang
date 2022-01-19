(add-module(

fun testsend() ->
  1 ! arrivederci ,
  1 ! ciao ,
  erlang : spawn ( testreceive ) .

fun testreceive() ->
    receive
      qualcosa -> no ;
      ciao -> ciao ;
      arrivederci -> tuttobene
    end .

, testsend))
