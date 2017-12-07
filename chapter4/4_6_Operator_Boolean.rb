$state = false
def flipflop(x)
  if !$state
    result = (x == 3)
    if result
      $state = !(x == 5)
    end
    result
  else
    $state = !(x == 5)
    true
  end
end
(1..10).each {|e| print e if flipflop(e)}

