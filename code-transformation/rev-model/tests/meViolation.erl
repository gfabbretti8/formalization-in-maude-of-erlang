(add-module(

       main() ->
           MePid = erlang : spawn( memanager , [] ),
           XPid = erlang : spawn(varmanager, [0]),
           erlang : spawn(incrementer, [MePid | XPid]),
           erlang : spawn(incrementer, [MePid | XPid]).

       memanager() ->
           receive
             [request | Pid] -> Pid ! answer
           end,
           receive
             release -> memanager()
           end .

       varmanager(Val) ->
           receive
             [write | NewVal] -> varmanager(NewVal);
             [read | Pid] -> Pid ! Val,
                             varmanager(Val)
           end .

       incrementer(MePid, XPid) ->
           S = self(),
           MePid ! [request | S],
           receive
             answer ->
               XPid ! [read | S],
               receive
                 X ->
                   Z = X * 1,
                   XPid ! [write | Z],
                   MePid ! release
               end
           end .


,main, empty ))
