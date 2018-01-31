def test
  puts "entering method"
  p = Proc.new { puts "entering proc"; return }
  p.call # Invoking the proc makes method return
  puts "exiting method" # This line is never executed
end

test

def procBuilder(message)
  # Create and return a proc
  Proc.new { puts message; return } # return returns from procBuilder
  # but procBuilder has already returned here!
end

def test1
  puts "entering method"
  p = procBuilder("entering proc")
  p.call # Prints "entering proc" and raises LocalJumpError!
  puts "exiting method" # This line is never executed
end

test1