-- Leoni, Lisa, Ivica
-- 08.12.2022
-- 7. Aufgabenblatt zur Einheit Listen
-- Aufgabe 1


module Aufagebe1 where
-- a)
-- Spezifikation:
-- Vor.: nur Listen mit ganzen Zahlen
-- Erg.: Summe der Zahlen die mit 3 oder 4 teilbar sind
sumdv :: [Int] -> Int
sumdv [] = 0
sumdv (x:xs)
    | ((x`mod`3 == 0 || x`mod`4 == 0) && (x`mod`6 /= 0)) = x + sumdv xs
    | otherwise = 0 + sumdv xs

-- b)
-- Spezifikation:
-- Vor.: ein beliebiges Zeichen vom Typ Char und ein String werden Eingegeben
-- Erg.: Aus dem Eingegangenen String wurde das eingegebene Zeichen aufgesucht und mit "*" subsstituiert
zensiert :: Char -> String -> String
zensiert _ [] = []
zensiert c (x:xs)
    | c == x = '*':(zensiert c xs)
    | otherwise = x:(zensiert c xs)

-- c)
-- Vor.: Eingabe von einer natürlichen Zahl n und einer Liste mit ganzen Zahlen.
-- Erg.: eine Liste aus den ersten und letzten n Elemente
dropTake :: Int -> [Int] -> [Int]
dropTake n (x:xs) = takeFirst xs where
    takeFirst 0 _ = []
    takeFirst _ [] = []
    takeFirst n (x:xs)
        | n > 0 = x:(takeFirst (n-1) xs)
dropTake 0 (x:xs)
