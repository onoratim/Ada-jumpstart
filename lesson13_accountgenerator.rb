## create array to hold student data
student_data = []


# Ask user if they want to input a new student,
# if yes, collect data as new hash in array student_data
new_input = "y"
i = 0
ids = []
while new_input != "n" do
  puts "Do you want to input a new student? Enter y for yes, n for no."
  new_input = gets.chomp.to_s.downcase
    if new_input == "y"
      student_data[i] = Hash.new
      puts "Enter Student's full name"
      student_data[i][:name] = gets.chomp.to_s.upcase
      id = rand (111111..999999)
      ids.each do |value|
        while id == value
          id = rand (111111..999999)
        end
      end
      ids << id
      student_data[i][:id] = id
      splitname = student_data[i][:name].split
      shortid = student_data[i][:id].to_s.slice(3,3)
      student_data[i][:email] = splitname[0].slice(0) + splitname[1] + shortid + "@adadevelopersacademy.org"
    elsif new_input == "n"
      puts "Ok, bye!"
    else
      puts "Please try again"
    end
  i += 1
end

# Another option for output, but puts things on separate lines -
# puts student_data.map { |x| x.values}

#output student information, one line per student
i = 0
student_data.each do
puts student_data[i][:name] + " #{student_data[i][:id]} " + student_data[i][:email]
i += 1
end
