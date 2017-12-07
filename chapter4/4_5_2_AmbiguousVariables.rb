class Ambiguous
  def x
    1
  end
  def test
    puts x # x refer to method above
    x = 0 if false
    puts x # x is a variable, nil
    x = 2
    puts x # 
  end
end

a = Ambiguous.new();

a.test