# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("pets.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_pettable_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS pets(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    species_id INT,
    stable_id INT,
    level INT,
    speed INT
  );
  
SQL
  
create_speciestable_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS species(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  );
SQL

create_stablestable_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS stables(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  );
SQL

# create a kittens table (if it's not there already)
db.execute(create_pettable_cmd)
db.execute(create_speciestable_cmd)
db.execute(create_stablestable_cmd)

# add a test kitten
# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion\
def create_species(db, name)
	db.execute("INSERT INTO species (name) VALUES (?);", [name])
	list = db.execute("SELECT * FROM species")
	list.each do |x|
		if x['name'] == name
			return x['id']
		end
	end
end	
def create_stable(db,name)
	db.execute("INSERT INTO stables (name) VALUES (?);", [name])
	list = db.execute("SELECT * FROM stables")
	list.each do |x|
		if x['name'] == name
			return x['id']
		end
	end
end
 def create_pet(db, name, species,level,speed,stable)
 	speciesid = nil
 	stableid = nil
 	spec = db.execute("SELECT * FROM species;")
 	exists = false;
 	spec.each do |type|
 		if type['name'] == species
 			exists = true;
 			speciesid = type['id']
 		end
 	end
 	if exists == false
 		speciesid = create_species(db,species)
 	end
 	exists = false;
 	stab = db.execute("SELECT * FROM stables;")
 	stab.each do |town|
 		if town['name'] == stable
 			exists = true;
 			stableid = town['id']
 		end
 	end
 	if exists == false
 		stableid = create_stable(db,stable)
 	end
   db.execute("INSERT INTO pets (name, species_id, stable_id, level, speed) VALUES (?, ?, ?, ?, ?);", [name, speciesid, stableid, level, speed])
 end

# 10000.times do
#   create_kitten(db, Faker::Name.name, 0)vcd
# end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

#driver code
#puts db.execute("SELECT * FROM species")
#create_pet(db,'Slow','Desert Horse', 52, 66, 'Meduli')
puts "Welcome to the handy-dandy pet tracker for Mortal Online!!"
sleep(1)
option = 0;
until option == 5
	puts
	puts "Select an option!"
	puts "1. Add a new pet"
	puts "2. Check All Pets"
	puts "3. Check Pets at a stable!"
	puts "4. Check all pets of one species!"
	puts "5. Quit"
	option = gets.chomp.to_i
	puts
	if option == 1
		adding = true
		until adding == false
			puts
			puts "Would you like to add a pet to the list? Y/N"
			if (gets.chomp == "Y")
				puts "Name of Creature:"
				creature = gets.chomp
				puts "Species:"
				species = gets.chomp
				puts "Level:"
				level = gets.chomp.to_i
				puts "Speed:"
				speed = gets.chomp.to_i
				puts "Stable:"
				stable = gets.chomp
				create_pet(db,creature,species,level,speed,stable)
			else
				adding = false;
			end
		end
	elsif option == 2
		mypets = db.execute("SELECT * FROM pets")
		myspecies = db.execute("SELECT * FROM species")
		mystable = db.execute("SELECT * FROM stables")
		thisstable = ""
		thisspecies = ""
 		mypets.each do |selectedpet|
 			myspecies.each do |speciescheck|
 				if speciescheck['id'] == selectedpet['species_id']
 					thisspecies = speciescheck['name']
 				end
 			end
 			mystable.each do |stablecheck|
 				if stablecheck['id'] == selectedpet['stable_id']
 					thisstable = stablecheck['name']
 				end
 			end
	 		puts "#{selectedpet['name']} of type #{thisspecies} is located at #{thisstable} measuring in at Level #{selectedpet['level']} with Speed #{selectedpet['speed']}!"
 		end
 		
	elsif option == 3
		mypets = db.execute("SELECT * FROM pets")
		myspecies = db.execute("SELECT * FROM species")
		mystable = db.execute("SELECT * FROM stables")
		puts "Which stable would you like to check?"
		mystable.each do |s|
			puts s['name']
		end
		puts
		check = gets.chomp
		thisstable = ""
		thisspecies = ""
 		mypets.each do |selectedpet|
 			myspecies.each do |speciescheck|
 				if speciescheck['id'] == selectedpet['species_id']
 					thisspecies = speciescheck['name']
 				end
 			end
 			mystable.each do |stablecheck|
 				if stablecheck['id'] == selectedpet['stable_id']
 					thisstable = stablecheck['name']
 				end
 			end
	 		if check == thisstable
	 			puts "#{selectedpet['name']} of type #{thisspecies} is located at #{thisstable} measuring in at Level #{selectedpet['level']} with Speed #{selectedpet['speed']}!"
	 		end
 		end
	elsif option == 4
		mypets = db.execute("SELECT * FROM pets")
		myspecies = db.execute("SELECT * FROM species")
		mystable = db.execute("SELECT * FROM stables")
		puts "Which species would you like to check?"
		myspecies.each do |s|
			puts s['name']
		end
		puts
		check = gets.chomp
		thisstable = ""
		thisspecies = ""
 		mypets.each do |selectedpet|
 			myspecies.each do |speciescheck|
 				if speciescheck['id'] == selectedpet['species_id']
 					thisspecies = speciescheck['name']
 				end
 			end
 			mystable.each do |stablecheck|
 				if stablecheck['id'] == selectedpet['stable_id']
 					thisstable = stablecheck['name']
 				end
 			end
	 		if check == thisspecies
	 			puts "#{selectedpet['name']} of type #{thisspecies} is located at #{thisstable} measuring in at Level #{selectedpet['level']} with Speed #{selectedpet['speed']}!"
	 		end
 		end
	end
	break if option == 5
end
# create_pet(db,"Slow","Desert Horse",100,77,"Meduli")
# puts db.execute("SELECT * FROM pets;")
# puts db.execute("SELECT * FROM species;")
#db.execute("DELETE FROM pets where pets.id = 1;")
