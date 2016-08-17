def solution(a)
  acc = {}
  min = Float::INFINITY
  max = -Float::INFINITY 

  a.each do |el|
    acc[el] = true
    min = el if el < min
    max = el if el > max
  end
  b = (1..max).find do |e|
    !acc[e]
  end || max + 1
  b += 1 while b <= 0
  b
end

puts solution([4,5,6,2])
puts solution([-1])
puts solution([0])
puts solution([1])
puts solution([1,3,6,4,1,2])
