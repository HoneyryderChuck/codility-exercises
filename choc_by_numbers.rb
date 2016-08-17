def solution(n, m)
  structure = []
  hop = 0

  while not structure.include?(hop)
    structure << hop
    hop = (hop + m) % n
  end
 
  structure.length

end

puts solution(947853, 4453)

#puts solution(1, 2)
#puts solution(10, 4)
