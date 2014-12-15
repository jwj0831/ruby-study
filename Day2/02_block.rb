
def call_block
	puts "Start of method"
	yield
	yield
	puts "End of method"
end

call_block { puts "In the Block" }

def who_says_what
	yield("Dave", "hello")
	yield("Andy", "goodbye")
end

who_says_what { |person, msg| puts "#{person} says #{msg}"}

animals = %w( ant bee cat dog)
animals.each { |animal| puts animal }

['Cat', 'Dog', 'Horse'].each {|name| print name, " "}
5.times { print "*"}
3.upto(6) { |i| print i }
('a'..'e').each { |char| print char }
puts
