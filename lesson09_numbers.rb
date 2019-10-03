# Asks for three positive integers, then adds 20 to each,
# and returns a sentence with results.

puts "Please enter a positive integer."
first = gets.chomp.to_i
puts "Please enter another positive integer."
second = gets.chomp.to_i
puts "One more positive integer, please!"
third = gets.chomp.to_i
puts "Thank you!"
first = first + 20
second = second + 20
third = third + 20
puts "20 more than each of your numbers gives us #{first}, #{second}, and #{third}."
