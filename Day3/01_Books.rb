class BookInStock
	attr_reader :isbn, :price
	attr_accessor :isbn, :price

	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end

# def isbn
#		@isbn
#	end	
#	def price
#		@price 
#	end

#	def price=(new_price) 
#		@price = new_price
#	end
#	def isbn=(new_isbn)
#		@isbn = new_isbn
#	end

	def to_s
		"ISBN: #{@isbn} Price: #{@price}"
	end
end


book1 = BookInStock.new("1234", 5)
book2 = BookInStock.new("abcd", 8.12)
book3 = BookInStock.new("8812", 10.55)

puts book1
puts "ISBN: #{book1.isbn}"
book1.isbn = "ffff" 
puts "ISBN: #{book1.isbn}"

puts book2
puts "Price: #{book2.price}"
book2.price = book2.price * 1.2
puts "Price: #{book2.price}"

puts book3
puts "ISBN: #{book3.isbn}"
