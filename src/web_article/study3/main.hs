-- https://qiita.com/7shi/items/145f1234f8ec2af923ef

add x y = x + y

-- ifの代わりにパターンマッチを使う
-- f a = if a == 1 then "1" else "?"
f 1 = "1"
-- f a = "?"
f _ = "?"  -- 「_」は未使用変数（引数）

-- 階乗
-- fact 0 = 1
-- fact n = n * fact (n - 1)

-- 1つの関数定義に引数の条件を列挙するガード
-- fact n
--     | n == 0    = 1
--     | otherwise = n * fact (n - 1)

-- パターンマッチとガード
-- パターンマッチは switch - case の機能強化版
-- ガードは if - else if の羅列
-- パターンマッチで考えて、難しいならガードを考える
-- パターンマッチとガードの併用も可能

-- 併用して無限ループを阻止
-- fact 0 = 1
-- fact n | n > 0 = n * fact (n - 1)

-- case - of
fact n = case n of
    0         -> 1
    _ | n > 0 -> n * fact (n - 1)

-- 引数でリストの先頭要素を取り出す
-- first (x:xs) = x
first (x:_) = x  -- xsは使わないので慣習的に_と定義
-- 複数重ねることも可
second (_:x:_) = x

-- リスト用の既存関数を定義してみる
length' []     = 0
length' (_:xs) = 1 + length' xs

sum' []     = 0
sum' (x:xs) = x + sum' xs

product' []     = 1
product' (x:xs) = x * product' xs

take' _ []        = []
take' n _ | n < 1 = []
take' n (x:xs)    = x : take' (n - 1) xs

drop' _ [] = []
drop' n xs | n < 1 = xs
drop' n (x:xs) = drop' (n - 1) xs

reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

-- タプルを利用して、関数で複数の値を返す
addsub x y = (x + y, x - y)

-- x [1, "a"]
-- o (1, "a")

perpPoint (p, q) (a, b, c) = (x, y)
    where
        d = b * p - a * q
        x = (a * c + b * d) / (a * a + b * b)
        y = (b * c - a * d) / (a * a + b * b)

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

    -- print $ fact (-1)  -- 実行時エラーになる

    print [1, 2, 3, 4, 5]
    print $ [1, 2, 3, 4, 5] !! 3  -- インデックス指定で要素取得
    print [1..5]  -- 連番の生成
    print $ [1, 2, 3] ++ [4, 5]  -- リストの結合
    print $ 1:[2..5] -- 先頭に要素追加
    print $ 1:2:[3..5]

    -- 文字列は文字のリスト
    print $ "abcde"
    print $ ['a', 'b', 'c', 'd', 'e']
    print $ ['a'..'e']
    print $ 'a':"bcde"
    print $ 'a':'b':"cde"
    print $ "abc" ++ "de"
    print $ "abcde" !! 3

    print $ first [1..5]

    print $ second [1..5]
    print $ second "abcde"

    -- リスト関係の関数
    print $ length [1..5]
    print $ sum [1..5]
    print $ product [1..5]  -- 全て掛け算
    print $ take 2 [1..5]  -- 先頭からn個を抽出
    print $ drop 2 [1..5]  -- 先頭からn個を落とす
    print $ reverse [1..5]  -- 逆順にする

    print $ length' [1..5]
    print $ sum' [1..5]
    print $ product' [1..5]
    print $ take' 2 [1..5]
    print $ drop' 2 [1..5]
    print $ reverse' [1..5]

    print $ addsub 1 2
    let (a, s) = addsub 1 2
    print a
    print s

    let p2 = (1, 2)
    print $ fst p2
    print $ snd p2

    let p3 = (1, 2, 3)
    print p3
    let (_, _, p3z) = p3
    print $ p3z

    print $ perpPoint (0, 2) (1, -1, 0)
