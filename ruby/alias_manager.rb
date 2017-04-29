# -Ask for spy's name
# -Swap spy's first name with last name
# -If spy's name contains a, e, i, o, or u:
#   -Change letter to next vowel
# -Else:
#   -Change letter to next consonant
# -Print spy's new alias

def alias_genrator
  puts "Welcome to the super secret alias name generator. What is your full name?"
  real_name = gets.chomp.downcase

  real_name_array = real_name.split(' ') # Turn name into array

  real_first_name = real_name_array[0].capitalize # Gets and capitalizes first string in full_name_array
  real_last_name = real_name_array.last.capitalize

  real_names = []
  real_names << real_first_name + " " + real_last_name # Stores real name to an array

  name_letters = real_name.split('') # Turns user input into array of letters

  vowels = ["a", "e", "i", "o", "u"]
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z" ]

  index = 0
  name_letters.each do |letter| # Checks each letter in name_letters to see if the letter is in the vowels array
    if letter == "u"
      name_letters[index] = "a"
    elsif
      if vowels.include?(letter) # If it is, store the index of the vowel plus one
        vowel_index = vowels.index(letter)+1
        name_letters[index] = vowels[vowel_index] # Store the new letter in the corresponding index of name_letters
      end
    end
    index+=1
  end

  index = 0
  name_letters.each do |letter| # Checks each letter in name_letters to see if the letter is in the consonants array
    if letter == "z"
      name_letters[index] = "b"
    elsif
      if consonants.include?(letter) # If it is, store the index of the consonants plus one
        consonant_index = consonants.index(letter)+1
        name_letters[index] = consonants[consonant_index] # Store the new letter in the corresponding index of name_letters
      end
    end
    index+=1
  end

  new_full_name = name_letters.join('').split(' ') # Joins the new letters of name_letters and splits it into two strings

  # In case spy's real name includes a middle name
  first_name = new_full_name[0].capitalize # Gets and capitalizes first string in new_full_name
  last_name = new_full_name.last.capitalize # Gets and capitalizes last string in new_full_name

  alias_name = last_name + " " + first_name

  spy_names = []
  spy_names << alias_name # Stores alias into an array

  p "Great, your cool new alias is #{alias_name}!"

  p real_names
  p spy_names
end

alias_genrator
