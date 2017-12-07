while (line = gets.chop)
  break if line == "quit"
  puts eval(line)
end
puts "Good bye"

while(line = gets.chop)
  break if line == "quit"
  # A loop starts here
  next if line[0,1] == "#" # If this line is a comment, go on to the next
  puts eval(line)
  # Control goes here when the next statement is executed
end


