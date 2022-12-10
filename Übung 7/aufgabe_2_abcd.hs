-- Leonie, Lisa, Ivica
-- 08.12.2022
-- 7. Aufgabenblatt zur Einheit Listen
-- Aufgabe 2


module Aufgabe2 where

    lowhigh :: [Int] -> (Int,Int)
    lowhigh [] = (0,0)
    lowhigh xs = (length(filter (>0) xs), length(filter (>0) xs))

f x = x*x-5
lowhighfunc :: [Int] -> (Int,Int)
lowhighfunc [] = 0
lowhighfunc (x:xs) = f x:lhf xs
