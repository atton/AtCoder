# -*- coding: utf-8 -*-

food = gets.chomp.split(" ")
n = gets.chomp.to_i

arr = []
food.each_with_index do |item,index|
  num = (n*(index+1) - item .to_i)
  if num >= 0
    arr << num 
  else
    arr << 0
  end
end

puts arr.join(" ")
