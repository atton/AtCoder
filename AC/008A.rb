# -*- coding: utf-8 -*-

N = gets.chomp.to_i

def calc money,n
  return calc (money+100), (n-10) if n >= 10 
  return (money+100)  if n >= 7 
  return (money+15*n) 
end

puts calc 0,N
