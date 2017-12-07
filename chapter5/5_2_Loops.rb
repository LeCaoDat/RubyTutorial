x = 10
while x >= 0 do
  print "#{x} "
  x = x - 1
end
puts

# Count back up to 10 using an until loop
x = 0
until x > 10 do
  print "#{x} "
  x = x + 1
end

puts
a = [1,2,3]
print "#{a.pop} " until a.empty?

puts
x = 0
begin
  print "#{x} "
  x = x + 1
end until x == 10
puts

x = 10
(
  print "#{x} "
  x = x - 1
) until x == 0
puts

# Print the elements in an array
array = [1,2,3,4,5]
for element in array
  print "#{element} "
end
puts
# Print the keys and values in a hash
hash = {a:1, b:2, c:3}
for key,value in hash
  puts "#{key} => #{value}"
end

chars = "hello world".tap{|x| puts "original object: #{x.inspect}"}
  .each_char.tap{|x| puts "each_char returns: #{x.inspect}"}
  .to_a.tap{|x| puts "to_a returns: #{x.inspect}"}
  .map {|c| c.succ }.tap{|x| puts "map returns: #{x.inspect}" }
  .sort.tap{|x| puts "sort returns: #{x.inspect}"}
  


