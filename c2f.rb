print "Hello. Please enter a temperature value in Celsius: "

celsius    = gets.chomp
fahrenheit = (celsius.to_i * 9 / 5) + 32

print "Converted to Fahrenheit is: "
print fahrenheit
puts "."