def solution(a)
  counters = [0] * a.length
  a.each_with_index.map do |div, index|
    (index..a.length-1).each do |i|
      next unless index != i
      dividend = a[i]

      
      # first the current one
      counters[index] += 1 if (div < dividend || div.modulo(dividend) != 0)

      # now the dividend
      counters[i] += 1 if (dividend < div || dividend.modulo(div) != 0)
    end

  end
  counters
end

puts solution([3, 1, 2, 3, 6]).inspect
