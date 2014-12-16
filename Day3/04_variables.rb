person = "Kim"
puts "The object in 'person' is a #{person.class}"
puts "The object has an id of #{person.object_id}"
puts "and a value of '#{person}"

person1 = "Jim"
person2 = person1
person1[0] = 'K'

puts "person1 is #{person1}"
puts "person2 is #{person2}"

num_float = 15.1
num_int = 100
puts "num_float's type: #{num_float.class}"
puts "num_integer's type: #{num_int.class}"
