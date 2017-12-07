n = 10
n.times do |x|
  print x
  if x == 9
    n -= 1
    retry
  end
end