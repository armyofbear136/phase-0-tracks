def pony_princess
	puts "Which pony princess is best?!?!"
	yield("Celestia", "Luna", "Twilight Sparkle", "Cadence")
end

pony_princess { |name1, name2, name3, name4| puts "These are the current princess'!! #{name1}!!!! and the mighty #{name2}!!! and of course the princess of friendship, #{name3}, and finally #{name4}"}
puts ""
puts ".each demo"
puts ""

letters = ["a", "b", "c", "d", "e"]
new_letters = []
puts "Original data:"
p letters
p new_letters

#iterate through the array with .each
letters.each do |letter|
	new_letters << letter.next
end

puts "After each call: "
p letters
p new_letters

###########

numbers = {1 => 'one', 2=> 'two', 3=> 'three'}

#iterate through the hash with .each

numbers.each do |digit, word|
	puts "#{digit} is spelled out as #{word}"
end
puts ""
puts ".map demo"
puts ""

letters2 = ["a", "b", "c", "d", "e"]
puts "Original data:"
p letters2

#iterate through the array with .map
letters2.map do |letter|
	puts letter
	letter.next
end

puts "After .map call:"
p letters2

puts ""
puts "do the thing"
puts ""
earth_ponies = ["apple jack", "pinkie pie", "apple bloom"]
special_ponies = {"rainbow dash" => "pegasus", "fluttershy" => "pegasus", "rarity" => "unicorn"}

puts "data structures"
puts "earth_ponies #{earth_ponies}"
puts "special_ponies #{special_ponies}"
puts ""
earth_ponies.each do |pony|
	p "#{pony} is an earth pony!!!"
end
special_ponies.each do |pony, type|
	p "#{pony} is a #{type} pony!!"
end

puts ""
puts "data structures"
puts "earth_ponies #{earth_ponies}"
puts "special_ponies #{special_ponies}"
puts ""

earth_ponies.map! do |pony|
	pony = pony+"saurus"
end
puts "data structures"
puts "earth_ponies #{earth_ponies}"
puts "special_ponies #{special_ponies}"
puts ""

puts "release 2"
num = [1,2,3,4,5,6,7,8,9,10]
p num
num.map! do |nbr|
	p nbr
	if nbr < 5
		p "#{nbr} less than 5, deleting..."
		num.delete(nbr)
	end
end
p num
num2 = [1,2,3,4,5,6,7,8,9,10]
p num2
num2.map! do |nbr|
	p nbr
	if nbr < 5
		p "#{nbr} less than 5, saving..."
	else
		num.delete(nbr)
	end
end
p num2