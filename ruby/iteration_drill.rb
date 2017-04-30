# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

  p zombie_apocalypse_supplies.join("*")

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
alphabetized_supplies = []
counter = 0

while counter < alphabet.length

  zombie_apocalypse_supplies.each do |item|
    if item[0].downcase == alphabet[counter]
      alphabetized_supplies << item
    end
  end
  counter+=1
end

p alphabetized_supplies

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def item_match(item)

  item_matches = false

  zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                                "shotgun", "compass", "CB radio", "batteries"]

  zombie_apocalypse_supplies.each { |supplies|
    if item == supplies
      item_matches = true
    end
  }

  if item_matches
    p "Good news! #{item} is in the zombie_apocalypse_supplies array."
  else
    p "Sorry, no match."
  end
end

item_match("boots")
item_match("CB radio")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

light_packing = []

zombie_apocalypse_supplies.each do |item|
  if zombie_apocalypse_supplies.index(item) < 5
    light_packing << item
  end
end

p light_packing

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
combined_supplies = (zombie_apocalypse_supplies << other_survivor_supplies).flatten.uniq

p combined_supplies

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

  extinct_animals.each do |animal, year|
      print "#{animal}-#{year}*"
  end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

  old_extinct_animals = {}

  extinct_animals.each do |animal, year|
    if year < 2000
       old_extinct_animals[animal] = year
    end
    extinct_animals = old_extinct_animals
  end

  p extinct_animals

  extinct_animals = { # reset extinct_animals array
    "Tasmanian Tiger" => 1936,
    "Eastern Hare Wallaby" => 1890,
    "Dodo" => 1662,
    "Pyrenean Ibex" => 2000,
    "Passenger Pigeon" => 1914,
    "West African Black Rhinoceros" => 2011,
    "Laysan Crake" => 1923
  }

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

  extinct_animals.each {|animal, year| extinct_animals[animal] = year-3}

  p extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

animals_to_check = ["Andean Cat", "Dodo", "Saiga Antelope"]

no_matches = true
extinct_animals.each do |animal, year|
  counter = 0
  while counter < animals_to_check.length
    if animal == animals_to_check[counter]
      p "Looks like #{animal} is extinct."
      counter+=1
      no_matches = false
    else
      counter+=1
    end
  end
end
if no_matches
  p "Looks like there were no matches"
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

  extinct_animals.delete_if {|animal, year| animal == "Passenger Pigeon" }

  p extinct_animals
