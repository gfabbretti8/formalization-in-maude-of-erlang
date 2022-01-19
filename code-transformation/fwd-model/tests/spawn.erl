(add-module(
       fun testspawn() ->
               erlang : spawn ( iftest ) ,
           ok .

       fun iftest() ->
         if false ->
             false ;
            true ->
             true
         end .

       fun goodbye() ->
         goodbye .

       fun getemptylist() ->
         [] .
, testspawn))
