def solution(a)
  max_counters = Hash.new(0)
  counter = 0

  # init
  a.each { |v| max_counters[v] += 1 }
  current = Hash.new(0)

  a.each do |el|
    current[el] += 1
    max_counters[el] -= 1

    cur = most_repeated(current)
    next if cur.nil?
    nex = most_repeated(max_counters)
    next if nex.nil?
    counter += 1 if cur == nex
    

  end

  counter
end

def most_repeated(h)
  max = 0
  repeated = nil
  h.each do |k, v|
    if v > max
      max = v
      repeated = k
    elsif v == max
      repeated = nil
    end
  end
  repeated
end

puts solution([4, 4, 2, 5, 3, 4, 4, 4])
#puts solution([1,2])
#puts solution([4,3,4,4,4,2])
