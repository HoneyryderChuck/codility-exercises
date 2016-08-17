def solution(n, a)
  counters = [0] * n
  
  max = 0
  a.each do |el|
    case
      when el >= 1 && el <= n
        
        counter = (counters[el-1] += 1)
        max = counter if counter > max
      when el == n + 1
        counters.fill(max)
    end
  end
  counters
end

puts solution(5, [3,4,4,6,1,4,4])
