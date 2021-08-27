(add-module(
       fun testspawn() ->
           erlang : spawn ( iftest ) .

       fun iftest() ->
         if false ->
             false ;
            true ->
             true
         end .

       fun goodbye() ->
         goobye .

       fun get_empty_list() ->
         [] .
, testspawn))
