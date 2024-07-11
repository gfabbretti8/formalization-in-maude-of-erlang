(add-module(


       main() ->
               Main = self(),
               erlang : spawn (agent, [1 | Main]),
               erlang : spawn (agent, [2 | Main]),
               seats(3).

       seats(Num) ->
         receive
           {numofseats, Pid} ->
             Pid ! {seats, Num},
             seats(Num) ;
           {sell, Pid} ->
             sold,
             Pid ! {booked, Num},
             NewNum = Num - 1,
             seats(NewNum)
         end .

       agent(NAg, Pid) ->
         Pid ! {numofseats, self()},
         receive
           {seats, Num} ->
             case Num of
               0 -> agentdone ;
               Num ->
                 Pid ! {sell, self()},
                 receive
                   {booked, L} -> agent(NAg, Pid)
                 end
             end
         end .

, main, empty))
