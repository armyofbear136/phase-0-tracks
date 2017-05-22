app = {
	name: "",
	address: "",
	email: "",
	phone: "",
	b_shade: false,
	ombre: 0
}
puts "Interior Design Job Application"
puts ""
puts "Name: "
app[:name] = gets.chomp
puts "Address: "
app[:address] = gets.chomp
puts "Email: "
app[:email] = gets.chomp
puts "Phone: "
app[:phone] = gets.chomp.to_i
puts "Your fave shade of blue is cyan true/false "
if gets.chomp == "true"
	app[:b_shade] = true
else
	app[:b_shade] = false
end
puts "Ombre is: "
puts "1. Fierce"
puts "2. So last season"
puts "3. Practically medieval in its appalling irrelevance"
app[:ombre] = gets.chomp.to_i
p app[:name]
p app[:address]
p app[:email]
p app[:phone]
p app[:b_shade]
p app[:ombre]
puts "Would you like to update a key?"
puts "name"
puts "address"
puts "email"
puts "phone"
puts "shade of blue"
puts "ombre"
update = gets.chomp
p update
if update == "name"
	puts "New name: "
	app[:name] = gets.chomp
elsif update == "address"
	puts "New address: "
	app[:address] = gets.chomp
elsif update == "email"
	puts "New email: "
	app[:email] = gets.chomp
elsif update == "phone"
	puts "New phone: "
	app[:phone] = gets.chomp.to_i
elsif update == "shade of blue"
	puts "Your favorite shade of blue is cyan true/false??? "
	if gets.chomp == "true"
		app[:b_shade] = true
	else
		app[:b_shade] = false
	end
elsif update == "ombre"
	puts "Ombre is: "
	puts "1. Fierce"
	puts "2. So last season"
	puts "3. Practically medieval in its appalling irrelevance"
	app[:ombre] = gets.chomp.to_i
end
p app[:name]
p app[:address]
p app[:email]
p app[:phone]
p app[:b_shade]
p app[:ombre]