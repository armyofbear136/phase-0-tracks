# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
strings = String.new
zombie_apocalypse_supplies.each do |x|
	strings << "#{x}*"
end
p strings

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

ordered_supplies = Array.new
pos = 0
innerpos = 0
stillbest = false
importantpos = 0
placeholder = ""
while pos < zombie_apocalypse_supplies.size
	innerpos = pos
	while innerpos < zombie_apocalypse_supplies.size
		if zombie_apocalypse_supplies[pos][0].bytes[0] < zombie_apocalypse_supplies[innerpos][0].bytes[0]
			stillbest = true
		else
			importantpos = innerpos
			stillbest = false
		end
		innerpos +=1
	end
	if stillbest == false
		placeholder = zombie_apocalypse_supplies[pos]
		zombie_apocalypse_supplies.delete_at(pos) 
		zombie_apocalypse_supplies.insert(pos, zombie_apocalypse_supplies[importantpos])
		zombie_apocalypse_supplies.delete_at(importantpos) 
		zombie_apocalypse_supplies.insert(importantpos, placeholder)
	end
	pos +=1
end
p zombie_apocalypse_supplies

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
def checkitem(list, item)
	found = false
	list.each do |x|
		if x == item
			p "#{item} is in our list"
			found = true
		end
	end
	if found == false
		p "items not found"
	end
end
checkitem(zombie_apocalypse_supplies, "boots")
checkitem(zombie_apocalypse_supplies, "batteries")


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
pos = 0
while pos < zombie_apocalypse_supplies.size
	if zombie_apocalypse_supplies.size > 5
		zombie_apocalypse_supplies.delete_at(pos)
	end
	pos += 1
end
p zombie_apocalypse_supplies

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
other_survivor_supplies.each do |x|
	if !zombie_apocalypse_supplies.include? x
		zombie_apocalypse_supplies.push(x)
	end
end
p zombie_apocalypse_supplies

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
combo = ""
extinct_animals.each do |x, y|
	combo << "#{x}-#{y}*"
end
p combo

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
extinct_animals.each do |x, y|
	if y >= 2000
		extinct_animals.delete(x)
	end
end
p extinct_animals
# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
extinct_animals.each do |x, y|
	extinct_animals[x] = y-3
end
p extinct_animals
# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
cat = false
dodo = false
saiga = false
extinct_animals.each do |x, y|
	if x == "Andean Cat"
		cat = true
	end
	if x == "Dodo"
		dodo = true
	end
	if x == "Saiga"
		saiga = true
	end
end
if cat
	p "Contains Andean Cat!!!"
else
	p "Does not contain Andean Cat :("
end
if dodo
	p "Contains Dodo!!!"
else
	p "Does not contain Dodo :("
end
if saiga
	p "Contains Saiga!!!"
else
	p "Does not contain Saiga :("
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

def deletethething(thing, name)
	returnarray = Array.new
	thing.each do |x,y|
		if x == name
			returnarray << x
			returnarray << y
		end
	end
	thing.delete(name)
	returnarray
end
p deletethething(extinct_animals, "Passenger Pigeon")