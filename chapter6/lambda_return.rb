def test
  puts "entering method"
  p = lambda { puts "entering lambda"; return }
  p.call # Invoking the lambda does not make the method return
  puts "exiting method" # This line *is* executed now
end

test

puts "--- 2 ---"

def lambdaBuilder(message)
  # Create and return a lambda
  lambda { puts message; return } # return returns from the lambda
end

def test1
  puts "entering method"
  l = lambdaBuilder("entering lambda")
  l.call # Prints "entering lambda"
  puts "exiting method" # This line is executed
end

test1