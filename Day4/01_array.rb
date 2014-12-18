a = [3.141592, "pie", 99]
puts "Array a's Class #{a.class}"
puts "Array a's length #{a.length}"
puts "a[0] Value: #{a[0]}, type: #{a[0].class}"
puts "a[1] Value: #{a[1]}, type: #{a[1].class}"
puts "a[1] Value: #{a[2]}, type: #{a[2].class}"


stack = [ ]
stack.push "red"
stack.push "green"
stack.push "blue"

puts stack.to_s

puts stack.pop
puts stack.pop
puts stack.pop

queue = [ ]
queue.push "apple"
queue.push "banana"
queue.push "carrot"
puts queue.shift
queue.push "dewberry"
queue.push "egg"
puts queue.shift
