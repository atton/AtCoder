# -*- coding: utf-8 -*-

str = gets.chomp
a = str.split(" ")[0].to_i
b = str.split(" ")[1].to_i

commands = [
  Proc.new {|x| x + 1},
  Proc.new {|x| x + 5},
  Proc.new {|x| x + 10},
  Proc.new {|x| x - 1},
  Proc.new {|x| x - 5},
  Proc.new {|x| x - 10}
]

n = 0
while a != b
  do_cmd = commands[0]
  commands.each do |command|
    if ((b - command.call(a)).abs < (b - do_cmd.call(a)).abs )
        do_cmd = command
    end
  end
  a = do_cmd.call(a)
  n += 1
end

puts n



