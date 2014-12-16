line = gets
if line =~ /Perl|Python/
	puts "Scripting language mentioned: #{line}"
end

line = gets
puts "Your Line: " + line

newline = line.sub(/Perl/, 'Ruby')
puts "Substitued Line From Perl to Ruby: #{newline}"

newerline = newline.gsub(/Python/, 'Ruby')
puts "Sbstitued Line from Python to Ruby: #{newerline}"

