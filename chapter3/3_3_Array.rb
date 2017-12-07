a = [1, 2, 3]
b = [1..10]
c = [[1..5], [10..15], 5]
d = []
e = [1, 2, 3, "Hello"]

word = %w[This is a test]
open = %w| ( [ { < |
white = %W(\s \t \r \n)

empty = Array.new
nils = Array.new(3)
zero = Array.new(4, 0)
copy = Array.new(nils)
count = Array.new(3) {|i| i + 1}

print word
print open
print white
puts

e.each{ |x| print x + 1  if x.class == Integer  }
puts

print a | e
puts
print a & e
puts


#c.each { |e|  e.each { |e| e.each { |e| print e  } } if e.class != Integer }
r = 0...100
puts r.member? 50
puts r.include? 100
puts r.include? 99.9

x = :'"'
puts x