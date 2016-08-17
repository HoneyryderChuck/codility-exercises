def solution(a)
  start_pos = nil
  min = Float::INFINITY

  max_bound = a[0].to_f
  bounds = [a[0]]
  (1..a.length-1).each do |q|
    max_bound += a[q] # represents the max bound
    min_bound = max_bound

    bounds.each_with_index do |el, p|
      avg = min_bound / (q - p + 1)

      if avg < min
        min = avg
        start_pos = p
      end
  
      min_bound -= el
    end

    bounds << a[q]
  end

  start_pos
end

puts solution([4,2,2,5,1,5,8])
