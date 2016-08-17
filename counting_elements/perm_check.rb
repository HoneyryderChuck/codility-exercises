def solution(a)
  accs = {}
  permax = a.length
  a.each_with_index do |el, index|
    return 0 if (el > permax or accs[el])

    accs[el] = true
  end
  accs.length != a.length ? 0 : 1
end

puts solution([4,3,1,2])
puts solution([4,1,3])
puts solution([1,1])
