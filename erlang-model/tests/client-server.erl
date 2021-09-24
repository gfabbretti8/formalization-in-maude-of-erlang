(add-module(

       fun main() ->
               E = erlang : spawn ( echo ),
               T = erlang : spawn ( target ),
               T ! hello,
               E ! T .

       fun target() ->
              receive
                A -> receive
                       B -> B
                     end
              end .

       fun echo() ->
              receive
                P -> P ! world
              end .
, main))
