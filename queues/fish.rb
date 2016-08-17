def solution(a, b)
  alive = a.length
  current_fish = a[0]
  current_stream = b[0]

  (1..a.length-1).each do |i|
    fish = a[i]
    stream = b[i]
   
    if current_stream == 1 and stream == 0
      alive -= 1
      # fight!
      if current_fish < fish
        current_fish = fish
        current_stream = stream
      end

    else
      current_fish = fish
      current_stream = stream
      next
    end
  end

  alive
end

puts solution([4,3,2,1,5],[0,1,0,0,0])

