(add-module(

       fun main() ->
               E = erlang : spawn ( echo , [] ),
               T = erlang : spawn ( target, [] ),
               T ! [ giovanni | [ciao] ],
               E ! T .

       fun target() ->
              receive
                [giovanni | [ciao]]  -> receive
                       B -> B
                     end
              end .

       fun echo() ->
              receive
                P -> P ! world
              end .
, main, empty))
