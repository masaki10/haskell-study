-- 以下のサイトを参照した学習コード
-- https://wiki.haskell.org/Haskell%E5%85%A5%E9%96%80_5%E3%82%B9%E3%83%86%E3%83%83%E3%83%97

import GHC.Conc
-- import Control.Parallel

-- ghc -O2 --make A.hs -threaded
main = a `par` b `par` c `pseq` print(a + b + c)
    where
        a = ack 3 10
        b = fac 42
        c = fib 34

-- パターンマッチ構文で関数を定義
fac 0 = 1
fac n = n * fac (n-1)

-- main = print (fac 42)

ack 0 n = n + 1
ack m 0 = ack (m - 1) 1
ack m n = ack (m - 1) (ack m (n - 1))

fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + (n - 2)
