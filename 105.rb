# 百五減算
# https://ja.wikipedia.org/wiki/%E7%99%BE%E4%BA%94%E6%B8%9B%E7%AE%97

# 相手の年齢
value = rand(0..104)               # => 19

# 3,5,7 で割った余りを答えてもらう
a = value.modulo(3)
b = value.modulo(5)
c = value.modulo(7)

# 余りから年齢が求まる
(70 * a + 21 * b + 15 * c).modulo(105) # => 19
