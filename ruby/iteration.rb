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

puts "release 2 arrays"
def less_than_5a(num)
	puts "original array:"
	p num
	puts ""
	num.map! do |nbr|
		if nbr < 5
			p "#{nbr} less than 5, deleting..."
			nil
		else
			nbr
		end
	end
	num.delete(nil)
	puts ""
	puts "modified array:"
	yield(num)
end
puts ""
less_than_5a([1,2,3,4,5,6,7,8,9,10]){|thing| p thing}

puts ""
def more_than_5a(num)
	puts "original array:"
	p num
	puts ""
	results = Array.new
	num.map do |nbr|
		if nbr < 5
			p "#{nbr} less than 5, saving..."
			results << nbr
		end
	end
	puts ""
	puts "modified array:"
	yield(results)
end
more_than_5a([1,2,3,4,5,6,7,8,9,10]){|thing| p thing}
puts ""

def conditiona(num, div)
	puts "original array:"
	p num
	puts ""
	results = Array.new
	num.map do |nbr|
		if nbr%div == 0
			p "#{nbr} divisible by #{div}"
			results << nbr
		end
	end
	puts ""
	puts "modified array:"
	yield(results)
end
conditiona([1,2,3,4,5,6,7,8,9,10], 3){|thing| p thing}
puts ""

def condition_to_falsea(num, max)
	puts "original array:"
	p num
	puts ""
	num.map! do |nbr|
		if nbr%max == 0
			p "#{nbr} divisible by #{max}, aborting!!!"
		end
		nil
		break if nbr%max==0
	end
	num.delete(nil)
	puts ""
	puts "modified array:"
	yield(num)
end
condition_to_falsea([1,2,3,4,5,6,7,8,9,10], 5){|thing| p thing}
puts ""

puts "release 2 arrays"
def less_than_5h(num)
	puts "original hash:"
	p num
	puts ""
	num.each do |nbr,word|
		if nbr < 5
			p "#{nbr} less than 5, deleting..."
			num.delete(nbr)
		end
	end
	puts ""
	puts "modified hash:"
	yield(num)
end
puts ""
less_than_5h({1 => "one",2 => "two",3 => "three",4 => "four",5 => "five",6 => "six"}){|thing| p thing}

puts ""
def more_than_5h(num)
	puts "original hash:"
	p num
	puts ""
	results = Hash.new
	num.map do |nbr, word|
		if nbr < 5
			p "#{nbr} less than 5, saving..."
			results.store(nbr,word)
		end
	end
	puts ""
	puts "modified hash:"
	yield(results)
end
more_than_5h({1 => "one",2 => "two",3 => "three",4 => "four",5 => "five",6 => "six"}){|thing| p thing}
puts ""

def conditionh(num, div)
	puts "original hash:"
	p num
	puts ""
	results = Hash.new
	num.map do |nbr, word|
		if nbr%div == 0
			p "#{nbr} divisible by #{div}"
			results.store(nbr, word)
		end
	end
	puts ""
	puts "modified hash:"
	yield(results)
end
conditionh({1 => "one",2 => "two",3 => "three",4 => "four",5 => "five",6 => "six"}, 3){|thing| p thing}
puts ""

def condition_to_falseh(num, div)
	puts "original hash:"
	p num
	puts ""
	num.each do |nbr, word|
		if nbr%div == 0
			p "#{nbr} divisible by #{div}, aborting!!"
		end
		num.delete(nbr)
		break if nbr%div == 0
	end
	puts ""
	puts "modified array:"
	yield(num)
end
condition_to_falseh({1 => "one",2 => "two",3 => "three",4 => "four",5 => "five",6 => "six"}, 2){|thing| p thing}