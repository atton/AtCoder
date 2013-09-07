#!/usr/bin/env ruby

Q, L = gets.chomp.split.map(&:to_i)


def push stack, n, m
  stack.concat([m] * n)
  if stack.size > L
    puts "FULL"
    exit
  end
end

def pop stack, n
  if stack.size < n
    puts "EMPTY"
    exit
  end
  stack.pop(n)
end

def top stack
  if stack.size.zero?
    puts "EMPTY"
    exit
  end
  puts stack.last
end

stack = []
Q.times do
  instruction = gets.chomp.split

  case instruction.first
  when "Push"
    push stack, instruction[1].to_i, instruction[2]
  when "Pop"
    pop stack, instruction[1].to_i
  when "Top"
    top stack
  when "Size"
    puts stack.size
  end
end

puts "SAFE"
