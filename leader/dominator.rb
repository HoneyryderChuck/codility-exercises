def solution(a)
  half = a.length / 2

  indexes = {}
  a.each_with_index do |el, index|
    indexes[el] ||= [index, 0]
    counter = (indexes[el][1] += 1)

    return indexes[el][0] if counter > half
  end
  -1
end


puts solution([3,4,3,2,3,-1,3,3])
