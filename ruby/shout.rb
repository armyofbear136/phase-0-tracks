module Shout
	#def self.yell_angrily(words)
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	#def self.yelling_happily(words)
	def yelling_happily(words)
		words + "!!!" + " reawraeraweawaweeare" + " :DDDDDDD"
	end
end

class Pony
	include Shout
end

class Person
	include Shout
end

#drivercode
fluttershy = Pony.new
p fluttershy.yell_angrily("taders")
bigmac = Person.new
p bigmac.yelling_happily("eyyup")