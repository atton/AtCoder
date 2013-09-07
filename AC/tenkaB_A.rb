#!/usr/bin/env ruby

arr = []
while str = gets
  arr << str
end

puts arr.sort.drop(6).first
