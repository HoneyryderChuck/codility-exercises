def solution(x, y, d)

  way = y - x

  (way / d) + ((way % d == 0) ? 0 : 1)

end

puts solution(3,999111321,7)
puts solution(10,85,30)
