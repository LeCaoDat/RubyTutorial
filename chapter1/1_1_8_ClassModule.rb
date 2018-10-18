require_relative "Sequence"
require_relative "Range"

require_relative "ModuleSequences" #<= require the file
include Sequences #<= include the module

s = Sequence.new(1,10,2)
s.each {|x| print "%d "%[x]}
puts
print s[s.lenght - 1]
t = (s + 1) * 2
puts
t.each {|x| print "%d "%[x]}
puts

Sequences.fromtoby(1, 10, 2){|x| print "#{x} "}
puts

(0..10).by(2) {|x| print "#{x} "}