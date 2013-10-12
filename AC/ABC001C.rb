#!/usr/bin/env ruby

def deg_to_dir deg
  dirs = ['N', 'NNE', 'NE', 'ENE', 'E', 'ESE', 'SE', 'SSE', 'S', 'SSW', 'SW', 'WSW', 'W', 'WNW', 'NW', 'NNW', 'N']
  deg_index = (-112.5).step(3712.5, 225.0).to_a.index{|a| a > deg}
  dirs[deg_index-1]
end

def des_to_w des
  winds = [0.2, 1.5, 3.3, 5.4, 7.9, 10.7, 13.8, 17.1, 20.7, 24.4, 28.4, 32.6, 12001]
  m_s = (des / 60.0).round(1)
  winds.index{|w| m_s <= w}
end

deg, des = gets.chomp.split.map(&:to_i)

dir = deg_to_dir deg
w   = des_to_w des

if w.zero?
  dir = 'C'
end

puts [dir, w].map(&:to_s).join(" ")
