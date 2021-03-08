-- inside
counter :: Integer -> [Char] -> Integer
counter state actionType
  | actionType == "increment" = state + 1
  | actionType == "decrement" = state - 1
  | otherwise   = state


increment :: Integer -> Integer
increment x = counter x "increment"

decrement :: Integer -> Integer
decrement x = counter x "decrement"


---------------------------------------
---------------------------------------
---------------------------------------


-- outside
main :: IO ()

main = do
  if ans == 7
    then print "passed"
    else error ( "must evaluate to 7. Got: " ++ show ans )
  where ans = ( increment . increment . decrement . increment ) 5