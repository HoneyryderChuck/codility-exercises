# n - limit
# p, q - two arrays
require 'prime'
def solution(n, p, q)
  min = [p.min, q.min].min
  semiprimesequence = Enumerator.new do |y|
    acc = []
    primesequence = Prime.instance.each do |pr|
      # until we reach out uppperbound 
      break if pr * 2 > n
      acc << pr
      acc.each do |a|
        prod = (pr*a)
        y << prod if (prod >= min and prod <= n)
      end
    end
  end.sort

  (0..p.length-1).map do |i|
    f = p[i]
    l = q[i]

    next if l < f
  
    if f > n
      0
    else 
      counter = 0
      semiprimesequence.each do |semi|
        next if semi < f
        break if semi > l
        counter += 1 
      end
      counter
    end
  end
end

puts solution(26, [1, 4, 16],[26, 10, 20]).inspect
# [10, 4, 0]


