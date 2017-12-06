print "Print x.times:"
3.times {print "Ruby! "}
puts

print "Print upto():"
1.upto(9) {|x| print x }
puts

a = [1, 2 , 3, 4]
print "Print a:"
print a
puts ""

print "Print b:"
b = a.map{|x| x*x}
print b
puts ""

print "Print c:"
c=a.select{|x| x%2==0}
print c
puts ""

print "Print inject: "
d = a.inject do |sum, x|
  sum + x
end
puts d

e = 1
f = 2
h = {
  # :one => 1,
  # :two => 2
  #one: :e,
  #two: :f
  one: 1,
  two: 2
} 
print "Print key value: "
h.each do |key, value|
  print "#{key}:#{value} "
end
puts "";

File.open("data.txt") do |f|
  line = f.readline
end

File.readlines('data.txt').each do |line|
  puts line
end

t = Thread.new do
  File.read("data.txt")
end

