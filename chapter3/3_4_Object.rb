s = "Hello"
t = s
s[5]="h"
puts t

a = "Ruby"
b = c = "Ruby"

a[4] = "H"


puts c == b
puts c.eql?(a)
puts c.equal?(a)

e = Exception.new("not really an exception")
msg = "Error: " + e.to_s
