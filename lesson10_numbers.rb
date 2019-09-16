# Asks for three positive integers
# Evaluates each integer to see if greater than or equal to 20
# Returns a sentence with results.
numgreater = 0
puts "Please enter a positive integer."
first = gets.chomp.to_i
if first >= 20
  puts "Your number is greater than or equal to 20"
  numgreater += 1
else
  puts "Your number is less than 20"
end

puts "Please enter another positive integer."
second = gets.chomp.to_i
if second >= 20
  puts "Your number is greater than or equal to 20"
  numgreater += 1
else
  puts "Your number is less than 20"
end
puts "One more positive integer, please!"
third = gets.chomp.to_i
if third >= 20
  puts "Your number is greater than or equal to 20"
  numgreater += 1
else
  puts "Your number is less than 20"
end
puts "Thank you! #{numgreater} of your numbers were greater than or equal to 20."
