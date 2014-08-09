puts "Reading Celsius temperature value from data file..."

num        = File.read("temp.dat")
celcius    = num.to_i
fahrenheit = (celcius * 9 / 5) + 32

puts "The number from file is " + num + " Celsius"
print "Conversion: "
puts fahrenheit.to_s + " fahrenheit."
