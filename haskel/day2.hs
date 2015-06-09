module Main where
  quickSort [] = []
  quickSort (p:xs) = (quickSort lesser) ++ [p] ++ (quickSort greater)
      where
          lesser  = filter (< p) xs
          greater = filter (>= p) xs
