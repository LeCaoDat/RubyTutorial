# def iterator(&proc)
#   puts "entering iterator"
#   proc.call # invoke the proc
#   puts "exiting iterator"
#   # Never executed if the proc breaks
# end

# def test
#   iterator { puts "entering proc"; break }
# end

# test

# puts "--- lambda ---"
# def test_lambda
#   puts "entering test method"
#   lambda = lambda { puts "entering lambda"; break; puts "exiting lambda" }
#   lambda.call
#   puts "exiting test method"
# end

# test_lambda


# p = Proc.new {|x, y| print x,y }
# p.call(1) # x,y=1:nil used for missing rvalue:
# puts
# p.call(1,2) # x,y=1,2: 2 lvalues, 2 rvalues:
# puts
# p.call(1,2,3) # x,y=1,2,3: extra rvalue discarded:
# puts
# p.call([1,2])
# puts


# l = lambda {|x, y| print x, y}
# l.call(1,2) # This works
# puts
# # l.call(1) # Wrong number of arguments
# # puts
# # l.call(1,2,3) # Wrong number of arguments
# # puts
# # l.call([1,2]) # Wrong number of arguments
# # puts
# # l.call(*[1,2]) # Works: explicit splat to unpack the array
# # puts

# puts ::
# puts $$
# puts @@
# puts $:
puts $LOAD_PATH