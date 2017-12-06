# -*- coding: utf-8 -*-

#encoding = "utf-8"
encoding = Encoding.find("utf-8")

str = "Hello"

puts str[0..4]

puts str[-5..-1]

while(str["l"])
  str["l"] = "L"
end

str.each_char { |x| print "#{x} " }
puts
0.upto(str.size - 1){|i| print "#{str[i]} "}
puts


puts str.encode(encoding)