def solution(a)
  limit = 10_000_000
  boundaries = []

  counter = 0
  a.each_with_index do |radius, i|
    left_boundary = i - radius
    right_boundary = i + radius
    boundaries[i] = [left_boundary, right_boundary]
    
    next if i == 0    

    boundaries[0..i-1].each_with_index do |(left, right), left_index|
      if ( 
          ((left >= left_boundary && left <= right_boundary) || 
           (right >= left_boundary && right <= right_boundary)) ||
          ((left_boundary >= left && left_boundary <= right) || 
           (right_boundary  >= left && right_boundary <= right)) )
        counter += 1
        
        return -1 if counter > limit
      end 
    end 
  end
  counter
end

puts solution([1,5,2,1,4,0])
puts solution([1, 10, 100, 1])
