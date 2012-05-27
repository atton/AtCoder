# -*- coding: utf-8 -*-

gets
str = gets.chomp
map = {"A"=>4 , "B"=>3 , "C"=>2 , "D"=>1 , "F"=>0}
gpa = 0;

map.each_key do |k|
  gpa += str.count(k)*map[k]
end

puts gpa.to_f / str.length
