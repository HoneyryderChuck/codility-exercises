def solution(a, k)
  return a if k < 1 or a.length < 1
  index = k 

  while index > a.length 
    index -= a.length
  end
 
  a[a.length - index,index] + a[0, a.length - index]

end

puts "[-9,0],2 -> #{solution([-9,0], 2)}"
puts "[],2 -> #{solution([], 2)}"
puts "[1],2 -> #{solution([1], 2)}"
puts "[3,8,9,7,6], 0 -> #{solution([3, 8, 9, 7,6], 0)}"
puts "[3,8,9,7,6], 1 -> #{solution([3, 8, 9, 7,6], 1)}"
puts "[3,8,9,7,6], 2 -> #{solution([3, 8, 9, 7,6], 2)}"
puts "[3,8,9,7,6], 3 -> #{solution([3, 8, 9, 7,6], 3)}"
puts "[3,8,9,7,6], 4 -> #{solution([3, 8, 9, 7,6], 4)}"
puts "[3,8,9,7,6], 5 -> #{solution([3, 8, 9, 7,6], 5)}"
puts "[3,8,9,7,6], 6 -> #{solution([3, 8, 9, 7,6], 6)}"
