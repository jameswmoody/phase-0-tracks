# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
 # Create empty hash to store items
 # Split string into array of items
 # Iterate over array to set each item as a key in hash
 # set default quantity to 1
 # print the list to the console using print method
# output: hash of items and quantites

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
 # Add item name as a key to list hash
 # Set optional quntity as value of item key
# output: hash with new item name and quantity added

# Method to remove an item from the list
# input: list, item name
# steps:
 # Remove item name from list hash
# output: hash with item removed

# Method to update the quantity of an item
# input: list, item name, quantity
# steps:
 # Set quantity as value of item name in list hash
# output: hash with updated quantity for item

# Method to print a list and make it look pretty
# input: list
# steps:
 # For each item in list puts "Item Name: Quantity"
# output: "Item Name: Quantity"

$default_quantity = 1

def create_list(list)
 grocery_list = {}
 split_list = list.split

 split_list.each { |item| grocery_list[item] = $default_quantity }
 print_list(grocery_list)
 grocery_list
end

def add_to_list(list, item, quantity = $default_quantity)
 update_quantity(list, item, quantity)
end

def remove_item(list, item)
 list.delete(item)
 list
end

def update_quantity(list, item, quantity)
 list[item] = quantity
 list
end

def print_list(list)
 list.each { |item, quantity| puts "#{item}: #{quantity}" }
end

grocery_list = create_list("cheese milk coffee apples")
p add_to_list(grocery_list, "lemonade", 2)
p add_to_list(grocery_list, "tomatoes", 3)
p add_to_list(grocery_list, "onions")
p add_to_list(grocery_list, "ice cream", 4)
p remove_item(grocery_list, "lemonade")
p update_quantity(grocery_list, "ice cream", 1)
print_list(grocery_list)

# Reflection
#
# Pseudocoding has been a challenge for me but I definately learned from this
# project that it certainly helps to have a roadmap to follow while building
# things out.
#
# I think that in the challenge it was more helpful to use a hash since we needed
# to have both an item and a quantity. It was pretty easy to translate this into
#  a key/value pair.
#
# A method will return the result of the last line of code within the method. It
# was important to keep this in mind for this challenge since we need to make
# sure a few of our methods returned a particular thing.
#
# Strings, arrays, hashes, and booleans are some of the things that can be passed
# as an argument within a method.
#
# We learned that in order to pass data between methods, you must set the data
# from one method to a variable that can then be referenced within another variable.
#
# I don't think there was much that was very confusing about this challenge. I think
# it will mostly come down to getting more comfortable and familar with these concepts
# so that it becomes second nature.
