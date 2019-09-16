# Ask user how much money they have
# display list of available candy with prices
# ask which option they'd like
# let them know if they can't afford their choice.
# If they can, print out change

puts "Welcome to Mary's Awesome Candy Shop"

puts "How much money do you have? $"
usercash = gets.chomp.to_f
puts "$#{usercash}?, Okay, sounds good."
puts "Here are your options"
puts "A $0.40 Double Bubble Bubble Gum.
  B $0.50 Smarties.
  C $0.60 Fun Size Milky Way
  D $0.70 M&Ms
  E $0.80 Peanut Butter Cup
  F $1.05 Snickers Bar"
puts "Which would you like?"
userchoice = gets.chomp.downcase
if userchoice == "a"
  if usercash >= 0.40
    usercash -= 0.40
    puts "Double Bubble Bubble Gum? Gross, but OK. Here's your #{usercash} change."
  else
    amountshort = 0.4 - usercash
    puts "You can't afford that. Maybe try a paper route?
    You need #{amountshort}more."
  end
elsif userchoice == "b"
  if usercash >= 0.50
    usercash -= 0.50
    puts "Smarties - good choice. I wonder if they really make you smarter?
      Here's your #{usercash} change."
  else
    amountshort = 0.50 - usercash
    puts "You can't afford that.
    I've heard babysitting can be pretty lucrative... you only need #{amountshort}more."
  end
elsif userchoice == "c"
  if usercash >= 0.60
    usercash -= 0.60
    puts "Milky way is my favorite! Here's your #{usercash} change!"
  else
    amountshort = 0.6 - usercash
    puts "Man, you really should get a job.
    Sorry, you don't have enough cash!
    Go find #{amountshort}more!"
  end
elsif userchoice == "d"
    if usercash >= 0.70
    usercash -= 0.70
    puts "M&Ms are pretty good, but peanut butter M&Ms are the best!
      Here's your #{usercash} change!"
  else
    amountshort = 0.70 - usercash
    puts "Shoooooot, you're so broke! You can't afford that!
    You need #{amountshort}more!"
  end
elsif userchoice == "e"
  if usercash >= 0.80
    usercash -= 0.80
    puts "Peanut Butter cups are so yummy! Here's your #{usercash} change!"
  else
    amountshort = 0.80 - usercash
    puts "Sorry, you're out of luck. You need #{amountshort}more.
    Maybe try something less expensive."
  end
elsif userchoice == "f"
  if usercash >= 1.05
    usercash -= 1.05
    puts "Snickers - Hungry? Why wait? Here's your #{usercash} change."
  else
    amountshort = 1.05 - usercash
    puts "I'll let you mow my lawn for #{amountshort}, then you'll be able to afford this."
  end
end
