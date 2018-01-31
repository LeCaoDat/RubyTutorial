def makeproc(&p)
  p
end
add = makeproc{|x, y| x + y}
puts add.call(2,4)

p = Proc.new{|x, y| x + y}
def invoke &b
  puts b.call(2,3)
end

invoke{}