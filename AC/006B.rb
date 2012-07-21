# -*- coding: utf-8 -*-

map = []

gets

while str = gets
  map << str.chomp
end

map.reverse!

o_point = map.shift.index("o")

pos = o_point

map.each do |line|
  if (pos-1 > 0) && (line[pos-1] == "-")
    # left
    pos -= 2
  elsif (pos+1 < line.length-1) && (line[pos+1] == "-")
    # right
    pos += 2
  end
end

puts pos/2  + 1
