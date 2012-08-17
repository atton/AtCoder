# -*- coding: utf-8 -*-

def get_serial_number_one_line all_music,pos
  max_num = 0
  num = 0
  all_music.each do |line|
    if line[pos] == 'X'
      num += 1
    else 
      num = 0
    end
    if max_num <= num
      max_num = num 
    end
  end
  max_num
end

N = gets.chomp.to_i
finger_power = gets.chomp.split(" ").map{|a|a.to_i}.sort.reverse

music = []
N.times do
  music << gets.chomp
end
music.reverse!

music_power = []
7.times do |n|
  music_power << get_serial_number_one_line(music,n)
end
music_power.sort!.reverse!

finger_power.pop(3)

7.times do |n|
  unless finger_power[n] >= music_power[n]
    puts "NO"
    exit
  end
end
puts "YES"
