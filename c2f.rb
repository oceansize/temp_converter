VIEWPORT_WIDTH = 70

def convertor(celsius)
  fahrenheit = (celsius.to_i * 9 / 5) + 32
  fahrenheit.to_s
end

# HEADER
puts "=".center(VIEWPORT_WIDTH, '=')
puts "CELSIUS => FAHRENHEIT".center(VIEWPORT_WIDTH)
puts "=".center(VIEWPORT_WIDTH, '=')

# MENU
puts "Please choose from the following options:".center(VIEWPORT_WIDTH)
puts "1: Import a conversion from file".center(VIEWPORT_WIDTH)
puts "2: Export a new conversion to file".center(VIEWPORT_WIDTH)
puts "3: View a conversion without saving".center(VIEWPORT_WIDTH)

# BODY
user_choice = gets.chomp
case user_choice
when "1"
  puts "Reading conversion from file..."
  imported_value = File.read("temp.dat")
  puts "Original temperature: " + imported_value + " Celcius"
  puts "Converted temperature: " + convertor(imported_value.to_i) + " Fahrenheit"
when "2"
  print "Please enter a Celsius value: "
  celsius      = gets.to_i
  export_value = convertor(celsius)
  puts "Saving conversion to file..."
  fh = File.new("temp.out","w")
  fh.puts export_value
  fh.close
when "3"
  puts "Please enter a Celsius value: "
  celsius    = gets.to_i
  puts "Converted temperature: " + convertor(celsius) + " Fahrenheit"
end