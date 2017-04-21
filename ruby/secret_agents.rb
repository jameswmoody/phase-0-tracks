# - Set index variable to 0
# - While index < the word length
#    - Unless index contains space
#       - Find character index value
#       - Reassign character to the next corresponding letter
#    - Add 1 to index variable
# - Return newly encrypted word

def encrypt(word)
  index = 0
  while index < word.length
    unless word[index] == " "
      if word[index] == "z"
        word[index] = "a"
      else
        word[index] = word[index].next!
      end
    end
    index += 1
  end
  return word
end

# - Set index variable to 0
# - Set alphabet variable
# - While index < the word length
#   - Unless index contains space
#      - Use word index to find corresponding index in alphabet variable
#      - Subtract 1 from corresponding index in alphabet
#      - Assign that value to alpha_index variable
#      - Use alpha_index to find corresponding letter in alphabet
#      - Assign corresponding letter in alphabet to current word index
#   - Add 1 to index variable
# - Return decrypted word


def decrypt(word)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < word.length
    unless word[index] == " "
    alpha_index = alphabet.index(word[index]) - 1
    word[index] = alphabet[alpha_index]
    end
    index+=1
  end
  return word
end

# p encrypt("abc")
# p encrypt("zed")
# p decrypt("bcd")
# p decrypt("afe")
# p decrypt(encrypt("swordfish"))

# Once a value has been returned by a method, the method holds that value.
# Since we call the encrypt method within the decrypt method, the value of
# encrypt is used as the argument for the decrypt method.

# - Ask secret agent if they would like encrypt or decrypt password.
# - When user chooses encrypt
#   - Ask for the password
#   - Call encrypt method with password argument
#   - Break loop
# - When user chooses decrypt
#   - Ask for the password
#   - Call decrypt method with password argument
#   - Break loop
# - When user enters any other string, ask them to 'Try Again.'

puts "Would you like to encrypt or decrypt a password?"

while user_input = gets.chomp
  case user_input
  when "encrypt"
    puts "What is the password?"
    password = gets.chomp.downcase
    p encrypt(password)
    break
  when "decrypt"
    puts "What is the password?"
    password = gets.chomp.downcase
    p decrypt(password)
    break
  else
    puts "Try again."
  end
end
