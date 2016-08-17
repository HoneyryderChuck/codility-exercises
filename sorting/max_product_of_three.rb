def solution(a)
  max = -Float::INFINITY
  a[0..-3].each_with_index do |el1, i1|
    a[i1+1..-2].each_with_index do |el2, i2|
      a[i2+i1+2..-1].each_with_index do |el3, i3|
        prod = el1 * el2 * el3
        max = prod if prod > max
      end
    end
  end
#  puts "indi: #{indexes}"
  max
end

puts solution([2,100,3,-1000])
puts solution([-10,-2,-4])
puts solution([4,5,1,0])
puts solution([-3,1,2,-2,5,6])
