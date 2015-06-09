module Main where
  allEven [] = []
  allEven (h:t) = if mod h 2 /= 0 then allEven t else h:allEven t
  allEven2 x = [y| y<- x, mod y 2 == 0]

  listReverse :: [a] -> [a]
  listReverse [] = []
  listReverse (h:t) = listReverse t ++ [h]

  colors = ["black", "white", "blue", "yellow", "red"]
  colorPairs = [(a, b) | a <- colors, b <- colors, a /= b && a < b]

  nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  multiTable = [(a, b, a * b) | a <- nums, b <- nums]
