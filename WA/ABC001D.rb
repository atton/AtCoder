#!/usr/bin/env ruby

def round_down start
  while true
    return start if start % 5 == 0
    start -= 1
  end
end

def round_up stop
  while true
    return stop if stop % 5 == 0
    stop += 1
  end
end


lains = []

gets.chomp.to_i.times do
  lains << gets.chomp.split('-').map(&:to_i)
end

lains.map!{|(start, stop)| [round_down(start), round_up(stop)]}
lains.sort!{|(a_start, a_stop), (b_start, b_stop)| a_start <=> b_start}
lains.uniq!

lain_ranges = []

while !lains.empty?
  l = lains.shift

  while true
    break if lains.empty?
    if l.first <= lains.first.first && l.last >= lains.first.last
      lains.shift
    elsif l.first <= lains.first.first && l.last >= lains.first.first
      l = [l.first, lains.first.last]
      lains.shift
    elsif l.last == lains.first.first
      l = [l.first, lains.first.last]
      lains.shift
    else
      break
    end
  end
  puts l.map{|a| format("%04d", a)}.join("-")
end
