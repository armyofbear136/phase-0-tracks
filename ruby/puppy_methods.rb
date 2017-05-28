class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
  	until times == 0
  		puts "Woof!"
  		times -= 1
  	end
  end

  def rollover
  	puts "*rolls over*"
  end

  def dog_years(age)
  	age*7
  end

  def initialize #runs first
  	puts "initializing new puppy instance"
  end
end

#driver code
pupper = Puppy.new
pupper.fetch("ball")
pupper.speak(5)
pupper.rollover
p pupper.dog_years(10)

class Pony
	def makefriends(friend)
		puts "This pony is now friends with #{friend}!"
	end
	def generate_cutie_mark(interest)
		#interpret interest and find proper noun related
		cutiemark = nil
	end
	def brohoof
		puts "*Bumps hooves!"
	end
	
end

#pony driver code
instances = 50
ponies = []
until instances == 0
	ponies << Pony.new
	instances -= 1
end
ponies.each do |mylittlepony|
	mylittlepony.makefriends("Pinkie Pie")
	mylittlepony.generate_cutie_mark
	mylittlepony.brohoof
end