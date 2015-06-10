module Main where
  sort [] = []
  sort (h:t) = (sort (filter (< h) t)) ++ [h] ++ (sort (filter (>= h) t))
