# -*- coding: utf-8 -*-

require 'date'
require 'time'

date = Time.parse(gets.chomp).to_date

while true
  if date.year.modulo(date.mon) == 0
    if (date.year / date.mon).modulo(date.day) == 0
      puts date.strftime("%Y/%m/%d")
      exit
    end
  end
  date = date.next
end
