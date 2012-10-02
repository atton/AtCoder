# -*- coding: utf-8 -*-

def all_include? name, kit
  name.each_char.all? do |char|
    kit.include?(char)
  end
end

def kanban n,name,kit
  kit.each_char{|c|name.sub!(c,"")}
 return n if name.empty? 
 return kanban (n+1),name,kit
end

gets
Name = gets.chomp
Kit  = gets.chomp
if !all_include? Name,Kit
  puts -1 
else
  puts kanban 1,Name,Kit
end
