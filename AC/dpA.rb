#!/usr/bin/env ruby

require 'set'

gets
problems = gets.chomp.split.map(&:to_i)

pattern = Set.new
pattern.add(0)

problems.each do |p|
  new_set = Set.new
  pattern.each do |x|
    new_set.add(x + p)
  end
  pattern.merge(new_set)
end

puts pattern.size
