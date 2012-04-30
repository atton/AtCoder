# -*- coding: utf-8 -*-

gets
str = gets.chomp

array = [1,2,3,4]
hash = {}

array.each do |x|
  hash[x] = str.count(x.to_s)
end

min = 100
max = 0
hash.each_value do |v|
  min = v if v < min
  max = v if v > max
end


puts "#{max} #{min}"
