#!/usr/bin/env ruby

N, M = gets.chomp.split.map(&:to_i)

puts (1..N).to_a.select{|a| a != M}.first
