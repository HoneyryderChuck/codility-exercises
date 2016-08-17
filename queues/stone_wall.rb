def solution(h)

  lower_bounds = [h.first]
  blocks = 1
  h.each_cons(2) do |l, r|
    if l > r # going down
      blocks += 1
      while lower_bounds.first and lower_bounds.first >= r
        bound = lower_bounds.shift
        if bound == r
          blocks -= 1
          break
        end
      end
    elsif l < r # going up
      blocks += 1
      lower_bounds.unshift l
    else

    end
  end
  blocks
end


puts solution([8,8,5,7,9,8,7,4,8])
