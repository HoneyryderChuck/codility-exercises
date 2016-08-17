def solution(n)
  max = 0
  counter = 0
  ("%b" % n).each_char do |c|
    case c
    when '1' then
      max = counter if counter > max
      counter = 0
    else
      counter += 1
    end
  end
  max
end

puts "9: #{solution(9)}"
puts "529: #{solution(529)}"
puts "20: #{solution(20)}"
