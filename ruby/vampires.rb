wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "What year were you born?"
yearborn = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp
puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp
if ((2017-yearborn == age) || (garlic=="yes" || insurance=="yes"))
	puts "probably not a vampire"
else if ((2017-yearborn != age) || (garlic=="no" || insurance=="no"))
	puts "probably a vampire"
else if (2017-yearborn != age && garlic=="yes" && insurance=="yes")
	puts "probably not a vampire"
else if (name == "Drake Cula" || name == "Tu Fang")
	puts "Definitely a vampire"
else
	puts "Results inconclusive"