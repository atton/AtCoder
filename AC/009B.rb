# -*- coding: utf-8 -*-

Replace_pattern = "abcdefghij"

def convert str, pattern=Pattern
  return 0 if str.nil?
  10.times do |n|
    str = str.gsub(Pattern[n],Replace_pattern[n])
  end
  10.times do |n|
    str = str.gsub(Replace_pattern[n],n.to_s)
  end
  str.to_i
end

def reconvert str, pattern=Pattern
  return 0 if str.nil?
  10.times do |n|
    str = str.gsub(n.to_s,Replace_pattern[n])
  end
  10.times do |n|
    str = str.gsub(Replace_pattern[n],Pattern[n])
  end
  str
end

Pattern = gets.chomp.split(" ").map(&:to_s)

numbers = []
gets.chomp.to_i.times do
  numbers << gets.chomp.to_s
end

numbers.map!{|a|convert(a)}.sort!.map!(&:to_s).map!{|b|reconvert(b)}
puts numbers
