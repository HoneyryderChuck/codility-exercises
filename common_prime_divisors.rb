require 'prime'
def solution(a, b)
  counter = 0
  (0..a.length-1).each do |i|
    left = a[i]
    right = b[i]
  
    common = true
    Prime.instance.each do |prime|
      left_modulo  = left.modulo(prime) 
      is_left_div  = left_modulo == 0

      right_modulo = right.modulo(prime)
      is_right_div = right_modulo == 0
      
      if is_left_div != is_right_div
        common = false
        break
      end

      break if (left_modulo == left and left < prime) ||
               (left_modulo == left and right < prime)
    end

    counter += 1 if common

  end
  counter
end


puts solution([15,10,3], [75,30,5])
#puts solution([2, 1, 2], [1, 2, 2])
