def solution(a, b, k)
  counter = (b / k) - (a / k)
  counter += 1 if a % k == 0
  counter
end

puts solution(6,11,2)
