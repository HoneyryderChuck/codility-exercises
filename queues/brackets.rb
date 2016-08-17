def solution(s)
  return 1 if s.empty?
  stack = []

  s.each_char do |char|
    case char
    when '(', '{', '[' then stack.push(char)

    when ')'
      return 0 unless stack.pop.eql?('(')
    when '}'
      return 0 unless stack.pop.eql?('{')
    when ']'
      return 0 unless stack.pop.eql?('[')
    end
  end
  return stack.empty? ? 1 : 0
end

puts solution("{{{{")
puts solution("{[()()]}")
puts solution("([)()]")
