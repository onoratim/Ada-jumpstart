# Create a madlib with 10-ish words

puts "Let's have some fun! Enter some information below to create a fun story."
puts "Girl's name"
name = gets.chomp
puts "Adjective"
firstadj = gets.chomp
puts "Noun"
firstnoun = gets.chomp
puts "Number"
number = gets.chomp
puts "Plural Animal"
firstanimal = gets.chomp
puts "Verb"
firstverb = gets.chomp
puts "Animal"
secondanimal = gets.chomp
puts "Animal"
thirdanimal = gets.chomp
puts "Noun"
secondnoun = gets.chomp
puts "Verb ending with ing"
secondverb = gets.chomp
puts "Verb ending with ing"
thirdverb = gets.chomp
puts "Food"
thirdnoun = gets.chomp

puts "One day, a girl named #{name} went to the beach with her Dad.
There was a #{firstadj} #{firstnoun} lying on the sand.
#{number} #{firstanimal} swam by, and her Dad decided to #{firstverb} after it.
As he went, a #{secondanimal} and a #{thirdanimal} started chasing after him.
#{name} threw her Dad a #{secondnoun} to help. He was #{secondverb} and #{thirdverb}.
Finally, the animals left and he came back to shore.
They decided to go get some #{thirdnoun} and go home.
They'd had enough adventures for one day."
