# アッカーマン関数
# https://ja.wikipedia.org/wiki/%E3%82%A2%E3%83%83%E3%82%AB%E3%83%BC%E3%83%9E%E3%83%B3%E9%96%A2%E6%95%B0
# 与える数が大きくなると爆発的に計算量が大きくなるという特徴があり、性能測定などに用いられる

def ack(x, y)
  @count += 1
  case
  when x == 0
    y + 1
  when y == 0
    ack(x - 1, 1)
  else
    ack(x - 1, ack(x, y - 1))
  end
end

@count = 0
ack(3, 3)                       # => 61
@count                          # => 2432
