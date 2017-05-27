# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
def create_list(user_input, qty=1)
	list = user_input.split(" ")
	new_list = {}
	list.each do |item|
		new_list[item] = qty
	end
	new_list
end


# steps: 
  # use split to convert a string to array
  # set default quantity
  # iterate through every array item and add that to a hash, with default quantity as its pair
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] --> hash


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add item name and quantity to our existing hash
# output: a list with the new item added

def add_item(list, item_name, qty=1)
	list[item_name] = qty
	list
end


# Method to remove an item from the list
# input: list, item name
# steps: use delete method to remove item name from existing hash
# output: a list with the item removed
def remove_item(list, item_name, qty=1)
	list.delete(item_name)
	list
end


# Method to update the quantity of an item
# input: list, item name, and specific quantity
# steps: add item name and quantity to our existing hash
# output: a list with the item's quantity added

def update_quantity(list, item_name, qty)
	if !list.include?(item_name)
		puts "Did you mean to update quantity for #{item_name}?"
	else
		list[item_name] = qty
	end
	list
end

# Method to print a list and make it look pretty
# input: list
# steps: iterate through our list items and print each pair using a puts method
# output: strings

def print_list(list)
	puts "Grocery List: "
	list.each do |item, qty|
		puts "#{item}: #{qty}"
	end
end

example = create_list("carrots apples cereal pizza")
p example
example = add_item(example,"bananas")
example = add_item(example,"oranges", 2)
p example
example = remove_item(example,"bananas")
p example
example = update_quantity(example,"oranges", 4)
p example
example = update_quantity(example,"strawberries", 4)
p example
print_list(example)