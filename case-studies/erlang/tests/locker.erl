(add-module(

          locker() ->
            receive
              {req, Client} ->
                Client ! ok,
                receive
                  {rel, Client} -> locker()
                end
            end .

          client(Locker) ->
            Client = self(),
            Locker ! {req, Client},
            receive
              ok ->
                Locker ! {rel, Client}
            end,
            client(Locker) .

          start() ->
            LockerPid = self(),
            erlang : spawn(client, [LockerPid]),
            erlang : spawn(client, [LockerPid]),
            locker() .

, start, empty ))
