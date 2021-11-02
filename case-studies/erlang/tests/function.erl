(add-module(
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
, iftest))
