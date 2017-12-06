$KCODE = "u"
require "jcode"
mb = "2\303\2272=4"
mb.length
mb.jlength
mb.mbchar?

mb.each_byte do |c|
  print c, " "
end

mb.each_char do |c|
  print c, " "
end