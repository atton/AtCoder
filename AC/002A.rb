year = gets.chomp.to_i

if(year.modulo(400) == 0)
  puts "YES"
elsif(year.modulo(100) == 0) 
  puts "NO" 
elsif(year.modulo(4) == 0) 
  puts "YES" 
else
  puts "NO"
end
