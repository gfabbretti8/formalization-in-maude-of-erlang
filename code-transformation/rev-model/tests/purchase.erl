(add-module(


       main() ->
               Pid = erlang : spawn(asynchand, [2 | self()]),
               erlang : spawn(checkcredit, [15 | Pid]),
               erlang : spawn(checkaddress, [Pid]),
               erlang : spawn(checkitem, [Pid]),
               receive
                 true ->
                   successful ;
                 false ->
                   failure
               end .

       asynchand(N, Out) ->
         case N < 0 of
           false ->
             Newn = N - 1,
             receive
               true -> asynchand(Newn, Out) ;
               false -> Out ! false
             end ;
           true ->
             Out ! true
         end .

       checkcredit(Price, Pid) ->
         case Price < 10 of
           true ->
             Pid ! true ;
           false ->
             Pid ! false
         end .

       checkaddress(Pid) ->
         Pid ! true .

       checkitem(Pid) ->
         Pid ! true .

, main, empty))
