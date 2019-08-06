#!/usr/bin/env ruby --disable-gems -w

# Ruby のコマンドラインオプション
# --disable-gems : rubygems を require しない
# -d : debugモードにする & $DEBUG = true にする
# -w : 警告を出力する & $VERBOSE = true にする
# -c : 文法チェックするだけ

# 入力
N = gets.to_i
a = gets.strip.split.map(&:to_i)
a = N.times.map{gets.to_i}
S = gets.strip.chomp

# sum
a = [1, 2, 3]
a.inject(:+) #=> 6

# assert文
raise if a <= 0

# 出力
puts "hogehoge" if $DEBUG
puts "result"

# 最小公倍数
10.gcd(4)  #=> 2
# 最大公約数
10.lcm(4)  #=> 20

# 素数
require 'prime'
Prime.each(100).to_a # 100以下の素数を列挙する
Prime.prime_division(99) # 素因数分解

# 配列操作
[1, 2].last  #=> 2 # 最後の要素を取り出す
[1, 2].first #=> 1 # 最初の要素を取り出す

[1, 2].push(0)  #=> [1, 2, 0] # 後ろに0を追加する (破壊的)
[1, 2].pop          #=> 末尾の要素を1個取り出して、取り出した要素を返す(破壊的)
[1, 2].pop(1)       #=> [2] # 末尾から1個を取り出して、取り出した要素からなるArrayを返す(破壊的)
[1, 2].pop(2)       #=> [1,2] # 末尾から1個を取り出して、取り出した要素からなるArrayを返す(破壊的)
[1, 2].shift        #=> 1   # 先頭から1個を取り出す、取り出した要素を返す(破壊的)
[1, 2].shift(1)     #=> [1,2] # 先頭から1個を取り出して、取り出した要素からなるArrayを返す(破壊的)
[1, 2].shift(2)     #=> [1,2] # 先頭から2個を取り出して、取り出した要素からなるArrayを返す(破壊的)
[1, 2].unshift(0)   #=> [0, 1, 2] # 最初の要素に0を追加する (破壊的)

# 探索
[1, 2, 3].find { |x| x == 2 } #=> 2
[1, 2, 3].find_index { |x| x == 2 } #=> 1
[1, 2, 3].bsearch { |x| x == 2 } #=> 2
[1, 2, 3].bsearch_index { |x| x == 2 } #=> 1

# ソート
[3, 2, 1].sort  #=> [1, 2, 3]
[3, 2, 1].sort.reverse #=> [3, 2, 1]

[3, 2, 1].sort_by { |a| a }  #=> [1, 2, 3]
[3, 2, 1].sort_by { |a| -a } #=> [3, 2, 1]

# スペースシップ演算子
1 <=> 0 #=> 1
0 <=> 0 #=> 0
0 <=> 1 #=> -1

# Hash
ary = ["Apple", 1, "Orange", 2, "Banana", 3]
Hash[*ary] #=> {"Apple"=>1, "Orange"=>2, "Banana"=>3}

