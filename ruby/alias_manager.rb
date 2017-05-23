def next_vowel(v)
	if (v == "a")
		'e'
	elsif (v == 'e')
		'i'
	elsif (v == 'i')
		'o'
	elsif (v == 'o')
		'u'
	elsif (v == 'u')
		'a'
	end
end
def encode(name)
	words = name.split(' ')
	spyname = "#{words[1]} #{words[0]}"
	words = name.chars
	words.map! do |x|
		if x =~ /[aeiou]/
			next_vowel(x)
		else
			x
		end
	end
	name = words.join('')
	p name
end
spyname = ""
names = Array.new
while spyname != "quit"
	puts "ohohohoh a spy are we? what be yer name... type quit to stop"
	spyname = gets.chomp
	if spyname != "quit"
		names << [spyname, encode(spyname)]
	end
end
puts ""
names.each do |spy|
	puts "#{spy[0]} is actually #{spy[1]}!"
end