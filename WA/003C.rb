# -*- coding: utf-8 -*-

gets.chomp

N = $_.split(" ")[0].to_i
M = $_.split(" ")[1].to_i

$map = []
$pos = []
$time = 1
$max_light = -1

N.times do
  $map << gets.chomp
end

def get_start_pos map
  500.times do |i|
    if pos = map[i].index("s")
      return [i,pos]
    end
  end
end

def get_light arr,time

  if arr[0] <= -1 || arr[1] <= -1 || arr[0] >= N || arr[1] >= M
    return -1
  end

  if $map[arr[0]][arr[1]] == "g"
    return 100
  end
  begin
    $map[arr[0]][arr[1]].to_i * (0.99 ** time)
  rescue
    -1
  end
end

def check arr
  x = arr[0]
  y = arr[1]

  move = [[1,0],[0,1],[-1,0],[0,-1]]
  max = -1
  max_move = []

  move.each do |m|
    a = m[0]
    b = m[1]

    n = get_light([x+a,x+b],$time) 
    if n >= max
      max_move = [x+a,x+b]
      max = n
    end
  end
  max_move
end

def move
  a = check($pos)
  if get_light(a,$time) == -1
    puts -1
    exit
  end

  if get_light(a,$time) == 100
    puts $max_light
  end

  if get_light(a,$time) >= $max_light
    $max_light = get_light(a,$time)
  end

  $pos[0] += a[0]
  $pos[1] += a[1]

  $time += 1
end



$pos = get_start_pos($map)
while true
  move
end

=begin
  四方の中で一番明るさが大きいところに移動しようとしてる。
  けど、それだとゴールに向わないのでアウトだった
=end
