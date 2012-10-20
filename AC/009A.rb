# -*- coding: utf-8 -*-

sum = 0
gets.chomp.to_i.times do 
  sum += gets.chomp.split(" ").map{|a|a.to_i}.inject(:*)
end
puts (sum * 1.05).to_i
