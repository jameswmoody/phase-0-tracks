# Written by James W Moody

# -Prompt designer for client's name
# -Convert name to string
# -Prompt designer for client's age
# -Convert name to integer
# -Ask designer if client has any children
# -If client has children:
#   -Prompt designer for number of children
#   -Convert number of children to integer
#-Assign aswers to a 'client' hash
# -Print info to screen for designer
#-Ask designer if they would like to make any changes
# -If designer wants changes:
#   -Prompt designer for which key to update
#   -Store updatd key value
# -Print updated info to screen for designer

def interior_design

  puts "What is the client's name?" # Get's client's name
  client_name = gets.chomp

  puts "What is the client's age?" # Get's client's age
  client_age = gets.chomp.to_i

  puts "Does the client have any children? (Y/N)" # Checks if client has kids

  if gets.chomp.downcase == "y" # If client has kids, how many?
    has_children = true
    puts "How many children?"
    num_children = gets.chomp.to_i
  else
    has_children = false
    num_children = 0
  end

  puts "What decor theme would the client like?" # Get's decor preferences
  theme = gets.chomp

  client = {
    name: client_name,
    age: client_age,
    children: has_children,
    num_of_children: num_children,
    decor_theme: theme
  }

  puts "Client Info: #{client[:name]} is #{client[:age]} and has #{client[:num_of_children]} children. They would like a #{client[:decor_theme]} design."
  puts "Would you like to make any changes? (Y/N)"
  updates = gets.chomp.downcase

  if updates == "y" # Allows designer to update a key's value
    puts "What would you like to update?"
    update_key = gets.chomp.to_sym
    puts "What would you like to update #{update_key.to_s} to?"
    update_value = gets.chomp

    client[update_key] = update_value
  end

  puts "OK, it's set! #{client[:name]} is #{client[:age]} and has #{client[:num_of_children]} children. They would like a #{client[:decor_theme]} design."
end
