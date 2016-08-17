def solution(s, p, q)
  impacts = {'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4}

  analyzer = [0] * s.length

  counters = [0] * p.length

  p.each_with_index do |a, i|
    b = q[i]
    min_impact = Float::INFINITY

    (a..b).each do |c|
      impact = if analyzer[c] == 0
        analyzer[c] = impacts[ s[c] ]
      else
        analyzer[c]
      end 
      min_impact = impact if impact < min_impact
    end
    counters[i] = min_impact
    #puts "#{a} and #{b}: #{counters}"
  end
  counters
end

puts solution("CAGCCTA", [2, 5, 0], [4, 5, 6])
