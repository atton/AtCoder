# -*- coding: utf-8 -*-

num = gets.chomp.to_i
dict = {}

num.times do
  word = gets.chomp
  dict[word.reverse] = word
end

r_dict = []
dict.to_a.each do |key,str|
  r_dict << key
end

r_dict.sort.each do |k|
  puts dict[k]
end
