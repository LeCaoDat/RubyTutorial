def sequence(n, m, c)
  i = 0
  while(i < n)
    yield m*i + c
    i += 1
  end
end

sequence(3, 5, 1) {|y| print "#{y} "  }
puts
s = "hello"
s.enum_for(:each_char).map {|c| print "#{c.succ} " }
puts

1.upto(10) do |i|
  1.upto(10) do |i|
    print "#{i} "
  end
  print " ==> Row #{i}\n"
end