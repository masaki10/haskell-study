-- 以下のサイトを参照した学習コード
-- https://wiki.haskell.org/10%E5%88%86%E3%81%A7%E5%AD%A6%E3%81%B6Haskell

main = do
    putStrLn "putStrLn は文字列を出力する関数（改行含む）"
    putStr "putStr は文字列を出力する関数（改行含まない）"
    print (1 < 2)  -- print はどんな型の値でも出力する

    -- 読み込みは getLine（Stringを返します）かreadLn（どんな型の値でも返します）でできる
    -- <-という記号はI/Oアクションの結果に名前を付けるために使う
    putStrLn "2 + 2 は？"
    x <- readLn
    if x == 4
        then putStrLn "正解！！"
        else putStrLn "不正解..."

    putStrLn "何でも受け付けるよ"
    str <- getLine
    putStrLn str

    print (secsToWeeks (2 * 7 * 24 * 60 * 60))

    print (classfy 0)
    print (classfy 8)
    -- print (classfy "test") -- コンパイルエラー
    print (classfy 1.0)

secsToWeeks secs = let perMinute = 60
                       perHour   = 60 * perMinute
                       perDay    = 24 * perHour
                       perWeek   =  7 * perDay
                   in  secs / perWeek

classfy age = 
    case age of 0 -> "newborn"
                1 -> "infrant"
                2 -> "toddler"
                _ -> "senior citizen"

-- Haskellの“Prelude”（標準ライブラリのうち初期状態でimportされているモジュール）内には5種類の数値型がある
-- Int は少なくとも30ビットの精度の整数
-- Integer は精度無制限の整数型
-- Float は単精度浮動小数点数
-- Double は倍精度浮動小数点数
-- Rational は分数型で丸め誤差がない
-- これら5つはすべて Num 型クラスのインスタンス
-- 最初の2つは Integral のインスタンスで、残り3つは Fractional のインスタンス
