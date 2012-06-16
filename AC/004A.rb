# -*- coding: utf-8 -*-

def dist a,b
  if a == b 
    return -1
  end

  a_x = a.split(" ")[0].to_i
  a_y = a.split(" ")[1].to_i
  b_x = b.split(" ")[0].to_i
  b_y = b.split(" ")[1].to_i

  Math::sqrt((a_x - b_x)**2 + (a_y - b_y)**2)
end

n = gets.chomp.to_i

point = []

n.times do
  point << gets.chomp
end

max = 0

point.each do |a|
  point.each do |b|
    max = dist(a,b) if dist(a,b) >= max
  end
end

puts max
