def test
  puts "entering test method"
  proc = Proc.new { puts "entering proc"; break }
  proc.call # LocalJumpError: iterator has already returned
  puts "exiting test method"
end

test