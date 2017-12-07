def factorial(n)
  raise ArgumentError.exception("bad argument") if n < 1
  # raise RuntimeError.exception("bad argument") if n < 1
  # raise RuntimeError.new("bad argument") if n < 1
  return 1 if n == 1
  n * factorial(n-1)
end

# puts factorial -1
# puts factorial 10920

begin
  x = factorial(-1)
rescue ArgumentError => ex
  puts "Try again with a value >= 1"
rescue TypeError => ex
  puts "Try again with an integer"
rescue => ex
  puts "#{ex.class}: #{ex.message}"
end


def explode
  # This method raises a RuntimeError 10% of the time
  raise "bam!" if rand(10) == 0
end
def risky
  begin
    10.times do
      explode
    end
  rescue TypeError
      puts $!
  end
  "hello"
end

def defuse
  begin
    puts risky
  rescue RuntimeError => e
      puts e.message
  end
end

defuse

# require 'open-uri'
# tries = 0
# # How many times have we tried to read the URL
# begin
#   # This is where a retry begins
#   tries += 1
#   # Try to print out the contents of a URL
#   open('http://www.example.com/') {|f| puts f.readlines }
# rescue OpenURI::HTTPError => e # If we get an HTTP error
#   puts e.message
#   # Print the error message
#   if (tries < 4)
#     # If we haven't tried 4 times yet...
#     sleep(2**tries)
#     # Wait for 2, 4, or 8 seconds
#     retry
#     # And then try again!
#   end
# end
def test_yield
  puts 1
  value = yield
  puts value
end

test_yield do
  2
end

def test_block(&block)
  puts block
  block.call
end

test_block { puts "hello" }

puts Module.constants.sort.select {|x| eval(x.to_s).instance_of? Module}