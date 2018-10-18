print "Print case when:"
type = 1
result = case type
when 1..5
  "From 1 to 5"
when 6..10
  "From 6 to 10"
else
  nil
end
puts result

def are_you_sure?
  while true
    print "Are you sure? [y/n]: "
    response = gets
    case response
    when /^[yY]/
      return true
    when /^[nN]/
      return false
    end
  end
end

puts are_you_sure?
