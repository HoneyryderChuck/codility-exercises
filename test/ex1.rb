def solution(x,a)

  # a bit weird, I don't know what to do when there is no match...
  return if a.length < 1

  not_equal = a.count { |e| e != x }
  equal = 0

  a.each_with_index do |el, i|
    equal += 1 if el == x
    not_equal -= 1 if el != x


    if equal == not_equal 
      return i+1 
    end

  end
end

puts solution(1, [])
puts solution(1, [1])
puts solution(1, [1, 2])
puts solution(5, [5,5,1,7,2,3,5])
