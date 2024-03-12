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
    
