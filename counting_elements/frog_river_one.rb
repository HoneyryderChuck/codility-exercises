def solution(x,a)
  leaves = [0] * x
  counter = x
  a.each_with_index do |el, index|
    if leaves[el-1] != 1 # repeated
      leaves[el-1] = 1
      counter -= 1
      return index if counter == 0
    end
  end

  -1

end

puts solution(5, [3])
puts solution(5, [1,3,1,4,2,3,5,4])

