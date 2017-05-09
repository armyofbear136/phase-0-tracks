wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false
puts"How many employees?"
employees = gets.chomp.to_i
while employees > 0
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	yearborn = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp
	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp
	puts "Any allergies?"
	allergies = ""
	while allergies != "sunshine" && allergies != "done"
		allergies = gets.chomp
		if allergies != "sunshine"
			if (name == "Drake Cula" || name == "Tu Fang")
				puts "Definitely a vampire"
			elsif ((2017-yearborn == age) || (garlic=="yes" || insurance=="yes"))
				puts "probably not a vampire"
			elsif ((2017-yearborn != age) || (garlic=="no" || insurance=="no"))
				puts "probably a vampire"
			elsif (2017-yearborn != age && garlic=="yes" && insurance=="yes")
				puts "probably not a vampire"
			elsif
				puts "Results inconclusive"
			end
		elsif allergies == "sunshine"
			puts "probably a vampire"
		end
	end
	employees -=1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."