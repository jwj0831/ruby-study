today = Time.now

if today.saturday?
	puts "Do chores around the house"
elsif today.sunday?
	puts "Relax"
else
	puts "Go to Study"
end

sum = 0
num = 0
while sum < 100 or num < 10
	sum += num
	num += 1
	puts "#{num} Sum: #{sum}" 
end

while line = gets
	puts line.downcase
end

puts "10 is bigger than 9" if 10 > 9

square = 4
square *= square while square < 1000

puts "Square: #{square}"
