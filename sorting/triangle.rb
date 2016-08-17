def solution(a)
  return 0 unless a.length > 2
  a[0..-3].each_with_index do |el1, i1|
    a[i1+1..-2].each_with_index do |el2, i2|
      a[i2+i1+2..-1].each_with_index do |el3, i3|
#        puts "for [#{el1}, #{el2}, #{el3}]"
        return 1 if ( (el1 + el2 > el3) &&
                      (el2 + el3 > el1) &&
                      (el3 + el1 > el2) )
      end
    end
  end
  0
end

puts solution([10,2,5,1,8,20])
