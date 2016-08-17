def solution(a)

  return 0 if a.length < 2


  left_sum = 0
  right_sum = a.reduce(:+)

  counter = Float::INFINITY

  (0..a.length-2).each do |i|
    n = a[i]
    left_sum += n
    right_sum -= n


    diff = (left_sum - right_sum).abs
    counter = diff if diff < counter
  end
  counter
end


puts solution([-1000, 1000])
puts solution([3,1,2,4,3])
