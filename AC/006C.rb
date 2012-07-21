# -*- coding: utf-8 -*-

arr = []

gets.chomp.to_i.times do
  arr << gets.chomp.to_i
end

boxs = []

arr.each do |item|

  count = 0
  while true
    if count == boxs.length
      boxs[count] = [item]
      break
    end
    if boxs[count][0] >= item
      boxs[count].unshift item
      break
    end
    count += 1
  end
end

puts boxs.length
