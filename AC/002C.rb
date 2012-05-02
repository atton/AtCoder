button = ["A","B","X","Y"]

gets
command = gets.chomp

num = {}

def count str,pattern
  count = 0

  while true
    if str.sub(pattern,"") != str
      str = str.sub(pattern,"")
      count += 1
    else
      break
    end
  end
  count 
end

def str_count str,a,b
  str = str.gsub(a,"L")
  str = str.gsub(b,"R")
  str.length
end

button.each do |a|
  button.each do |b|
    num[a+b] = count(command,a+b)
  end
end

#num.delete_if do |key,value|
#  value == 0
#end

min = 1000
num.each do |first,v1|
  num.each do |second,v2|
    if min > str_count(command,first,second)
      min = str_count(command,first,second)
    end
  end
end

puts min
