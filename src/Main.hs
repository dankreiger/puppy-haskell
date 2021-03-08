countReducer :: Integer -> [Char] -> Integer
countReducer state actionType  
  | actionType == "increment" = state + 1
  | actionType == "decrement" = state - 1
  | otherwise   = state



   