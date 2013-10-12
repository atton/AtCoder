#!/usr/bin/env ruby

def km_to_vv m
  if m < 100
    0
  elsif m <= 5000
    m / 100
  elsif m <= 30000
    (m / 1000) + 50
  elsif m <= 70000
    (((m / 1000) - 30) / 5) + 80
  else
    89
  end
end

puts format("%02d", km_to_vv(gets.chomp.to_i))
