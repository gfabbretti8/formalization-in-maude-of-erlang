(add-module(


fun fact(X) ->
  case X of
    0 -> 1 ;
    X ->
      Y = X - 1 ,
      X * fact(Y)
  end .

,fact,12000))
