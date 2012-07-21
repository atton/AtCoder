# -*- coding: utf-8 -*-

number = gets.chomp.to_s.gsub(" ","")
bonus = gets.chomp.to_s
kuji = gets.chomp.to_s.gsub(" ","")

matched = 0
kuji.chars do |char|
  matched += 1 if number.include?(char)
end

case matched
when 6
  puts 1
when 5

  if kuji.include?(bonus)
    puts 2
  else
    puts 3
  end

when 4
  puts 4
when 3
  puts 5
else
  puts 0
end
