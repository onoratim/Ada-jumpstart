# create three arrays to hold student names, id numbers, and email addresses

names = []
ids = []
emails = []
# Save 5 student names, uppercase, to array names
5.times do
  puts "Enter student full name:"
  name = gets.chomp.to_s.upcase
  names << name
end
5.times do
  id = rand (111111..999999)
  ids.each do |value|
    while id == value
      id = rand (111111..999999)
    end
  end
  ids << id
end
5.times do |i|
    splitname = names[i].split
    shortid = ids[i].to_s.slice(3,3)
    email = splitname[0].slice(0) + splitname[1] + shortid + "@adadevelopersacademy.org"
    emails << email
    i += 1
end
5.times do |i|
  puts names[i] + " " + "#{ids[i]}" + " " + emails[i]
  i += 1
end
