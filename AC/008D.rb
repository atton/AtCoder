# -*- coding: utf-8 -*-

all_takoyaki = [1]

N,M = gets.chomp.split(" ").map{|a|a.to_i}
machines = Array.new(N, [1,0])

M.times do
  update = gets.chomp.split(" ").map{|a|a.to_f}
  machines[update[0]-1] = [update[1], update[2]]
  all_takoyaki.push machines.inject(1.0){|stat,m|stat * m[0] + m[1]}
end

puts all_takoyaki.min
puts all_takoyaki.max
