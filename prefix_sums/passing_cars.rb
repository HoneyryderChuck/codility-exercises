def solution(a)
  limit = 1_000_000_000
  counter = 0 

  easterners = 0

  a.each_with_index do |el, index|
    if el == 0
      easterners += 1
      next
    end

    counter += easterners

    return -1 if counter > limit
  end 
  counter

end

puts solution([0,1,0,1,1])
