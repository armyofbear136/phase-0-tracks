def encryptscramble (word, encoder)
	x = 0
	newword = ""
	while (x < word.length)
		if (word[x+encoder] == nil)
			newword[x] = word[x+encoder-word.length]
		elsif
			newword[x] = word[x+encoder]
		end
		x+=1
	end

	return newword
end
def encrypt (word)
	x = 0
	newword = ""
	while (x < word.length)
		newword[x] = word[x].next
		x+=1
	end
	return newword
end
def decrypt (word)
	alpha = "abcdefghijklmnopqrstuvwxyz"
	x = 0
	original = ""
	while (x < word.length)
		original[x] = alpha[alpha.index(word[x])-1]
		x+=1
	end
	return original
end

puts encrypt("abc")
puts ""
puts encrypt("zed")
puts ""
puts decrypt("bcd")
puts ""
puts decrypt("afe")
puts " "
puts decrypt(encrypt("swordfish"))
puts ""
puts ""

version = "standard"
puts "Secret agent, would you like to decrypt or encrypt password?"
crypt = gets.chomp
puts ""
puts ""
if (crypt == "encrypt")
	puts "standard or derp encryption?"
	version = gets.chomp
	puts ""
	puts ""
end
puts "What is your password"
password = gets.chomp
puts ""
if (crypt == "decrypt")
	puts decrypt(password)
elsif (crypt == "encrypt")
	if (version == "standard")
		puts encrypt(password)
	elsif (version == "derp")
		level = 0
		while (level == 0 || level >= password.length)
			if (level >= password.length)
				puts "Encoding level must be less than length of password!"
			elsif 
				puts "Which encoding level?"
			end
			level = gets.chomp.to_i
			puts ""
		end
		puts encryptscramble(password, level)
	end
elsif 
	puts "bad encryption type"
end
	