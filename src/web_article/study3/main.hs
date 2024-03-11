-- https://qiita.com/7shi/items/145f1234f8ec2af923ef

add x y = x + y

-- ifの代わりにパターンマッチを使う
-- f a = if a == 1 then "1" else "?"
f 1 = "1"
-- f a = "?"
f _ = "?"  -- 「_」は未使用変数（引数）

-- 階乗
fact 0 = 1
fact n = n * fact (n - 1)

main = do
    print "Hello Haskell"
    -- $ は()の代わり
    print $ add 1 2
    -- 2つの引数を取る関数を`で囲むと中置演算子として使用できる
    print $ 2 `add` 3
    -- 中置演算子を()で囲むと関数として使用できる
    print $ 1 + 2
    print $ (+) 2 3

    print $ 5 + 2
    print $ 5 - 2
    print $ 5 * 2
    print $ 5 / 2  -- 浮動小数
    print $ div 5 2  -- 商
    print $ mod 5 2  -- 余り
    print $ 5 `div` 2
    print $ 5 `mod` 2

    if 1 == 1 then print "等しいは ==" else print ""
    if 1 /= 2 then print "等しくないは /=" else print ""

    print $ f 0
    print $ f 1

    print $ fact 5