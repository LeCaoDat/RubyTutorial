def polar x, y
  theta =  Math.atan2(x,y)
  r = Math.hypot(x,y)
  [r, theta]
end

print "Print method:"
distance, angle = polar(2, 2)
puts "#{distance} #{angle}"