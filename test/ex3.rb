def solution(a, b)
  row, column = [ a.abs, b.abs ]

  # special cases
  case [row, column ]
  when [0, 0] then return 0
  when [1, 0] then return 3
  when [1, 1] then return 2
  when [2, 0] then return 2
  when [2, 2] then return 4
  when [3, 0] then return 3
  when [3, 3] then return 2
  end

  # vertical case
  if row >= (column * 2) 
    weight = row - ( column * 2) 
    index = weight % 4
    init = weight / 4
    (2*init+column) + index
  # primary diagonal
  elsif (row+column % 2) == 0 

  # secondary diagonal
  else
    sum = row % column
    2 + sum
  end
end


(0..11).reverse_each do |row|
  (0..6).each do |column|
    print "(#{row},#{column}): #{solution(row, column) || 'n/a' }\t"
  end
  print "\n"
end
#puts solution(4,5) # 3
#puts solution(3,5) # 4
#puts solution(5,4) # 4
#puts solution(6,4) # 4
#puts solution(8,4) # 4
#puts solution(8,5) # 5

