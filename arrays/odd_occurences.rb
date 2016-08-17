def solution(a)
  counters = Hash.new(0)

  a.each do |n|
    case counters[n]
      when 0 then counters[n] += 1
      else counters.delete(n)
    end
  end
  k, _ = counters.first
  k
end

puts solution([9,3,9,3,9,7,9])
