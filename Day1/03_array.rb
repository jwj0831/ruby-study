a = [1, 'cat', 3.14, {test: true, hello:"world"}]
puts "The first element is #{a[0]}"

a[2] = nil
puts "The array is now #{a.inspect}"

a = ['ant', 'bee', 'cat', 'dog', 'elk']
puts a[0]
puts a[3]

a = %w{ ant bee cat dog elk}
puts a[2]
puts a[4]

