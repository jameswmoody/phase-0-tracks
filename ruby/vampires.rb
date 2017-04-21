# Written by James W Moody

def employee_info
  puts "What is your name?"
  employee_name = gets.chomp

  puts "How old are you?"
  employee_age = gets.chomp

  puts "What year where you born?"
  employee_birth_year = gets.chomp

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  employee_garlic_s = gets.chomp.downcase

  puts "Would you like to enroll in the company’s health insurance?"
  employee_insurance_s = gets.chomp.downcase

  puts employee_name
  puts employee_age
  puts employee_birth_year
  puts employee_garlic_s
  puts employee_insurance_s
end

employee_info
