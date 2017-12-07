data = [2, 5, 3, 4] # => 14
puts sum = data.inject {|sum, x| sum + x } #(2+5+3+4)
puts floatprod = data.inject(1.0) {|p,x| p*x } # => 120.0 (1.0*2*5*3*4)
puts max = data.inject {|m,x| m>x ? m : x } # => 5 (largest element)