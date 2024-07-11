(add-module(

  main() ->
          MePid = erlang : spawn(meManager,[]),
          APid = erlang : spawn(accountManager,[0]),
          erlang : spawn(deposit,[MePid | APid]),
          erlang : spawn(deposit,[MePid | APid]),
          erlang : spawn(checkBalance,[MePid | APid]) .

  meManager() ->
    receive {requestMe,Pid} -> Pid ! grantMe end,
    receive {releaseMe} -> meManager() end .

  accountManager(Val) ->
    receive {setBalance,NewVal} -> accountManager(NewVal) ;
      {getBalance,Pid} -> Pid ! {balance,Val} end,
    accountManager(Val) .

  deposit(MePid,APid) ->
    MePid ! {requestMe,self()},
    receive grantMe ->
  	    APid ! {getBalance,self()},
  	    receive {balance,X} ->
            APid ! {setBalance,X + 100},
            MePid ! {releaseMe}
        end
    end .

  checkBalance(MePid,XPid) ->
    MePid ! {requestMe,self()},
    receive grantMe ->
  	    XPid ! {getBalance,self()},
  	    receive {balance,X} ->
            MePid ! {releaseMe}
        end
    end .
, main, empty))
