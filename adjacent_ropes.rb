def solution(k, a)
  counter = 0

  a.each_with_index do |l, index|
    # eliminate big ropes

    rope_counter = 1
    acc = l
    i = index
    while acc <= k and i < a.length
      acc += a[i] 
      rope_counter += 1
    end
    if acc >= k
      counter = rope_counter if rope_counter > counter 
    end
  end

  counter
end

puts solution(1, [1])
puts solution(4,[1,2,3,4,1,1,3])
