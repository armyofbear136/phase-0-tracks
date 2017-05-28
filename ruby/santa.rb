class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!!!"
	end

	def celebrate_birthday()
		puts "Happy birthday #{@name}! you're now #{@age+1}!"
		@age += 1
	end

	def get_mad_at(reindeer)
		puts "Bad #{reindeer}, back of the line!"
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end

	def initialize(gender="N/A", ethnicity="White")
		puts "initializing santa instance!"
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

end

#drivercode
imsanta = Santa.new
imsanta.speak
imsanta.eat_milk_and_cookies("snickerdoodle")
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
imsanta.celebrate_birthday
p imsanta.get_mad_at("Vixen")
p imsanta.gender = "95 dodge dart 5 spd"
p imsanta.age
p imsanta.ethnicity

santacon = []
howmanysantas = 10000
until howmanysantas == 0
	santacon << Santa.new(example_genders[rand(example_genders.length)], example_ethnicities[rand(example_ethnicities.length)])
	howmanysantas -=1
end
puts "Finished initializing."
sleep(1)

puts "Preparing new task"
sleep(2)
puts "Displaying Santacon Member info!"
sleep(2)
santacon.each do |x|
	p "Santa gender: #{x.gender} | Santa ethnicity: #{x.ethnicity} | Santa age: #{x.age}"
end

puts "Member info complete."
sleep(1)
puts "Preparing new task"
sleep(2)
puts "Assigning random ages!"
sleep(2)

santacon.each do |santamod|
	santamod.age = rand(140).to_i
end
santacon.each do |x|
	p "Santa gender: #{x.gender} | Santa ethnicity: #{x.ethnicity} | Santa age: #{x.age}"
end
puts "Diagnostic Complete"