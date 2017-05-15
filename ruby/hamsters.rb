puts "What is your hamster's name?"
name = gets.chomp
puts "What is your hamster's volume (1-10)?"
volume = gets.chomp.to_i
puts "What is your hamster's fur color?"
color = gets.chomp
puts "Is your hamster a good candidate for adoption?"
candidate = gets.chomp
puts "What is your hamster's age?"
age = gets.chomp.to_i
if age == ""
	age = nil
end
puts "Name: #{name} Volume: #{volume} Fur Color: #{color} Candidacy for adoption: #{candidate} Age: #{age}"