def solution(a)
  return 1 if a.empty?
  total = a.length + 1
  sum = 0
  a.each_with_index do |el, index|
    sum += el
    total += index + 1
  end 
  total - sum
end

puts solution([])
puts solution([2,3,1,5])

