# Written by James W Moody

def employee_info
  puts "How many employees will be checked? (Numeric characters only!)"
  employees_to_check = gets.chomp.to_i

  counter = 1

  while counter <= employees_to_check do

    puts "What is your name?"
    employee_name = gets.chomp

    puts "How old are you?"
    employee_age = gets.chomp.to_i

    puts "What year where you born?"
    employee_birth_year = gets.chomp.to_i

    puts "Has your birthday already passed this year? (Y/N)"
    birthday_passed_s = gets.chomp.downcase

    if birthday_passed_s == "n" || birthday_passed_s == "no" # Adds 1 to employee_age if Employee's birthday has not passed
      employee_age+=1
    end

    puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
    employee_garlic_s = gets.chomp.downcase

    if employee_garlic_s == "y" || employee_garlic_s == "yes" # Converts employee_garlic_s to Boolean
      employee_garlic_b = true
    elsif employee_garlic_s == "n" || employee_garlic_s == "no"
      employee_garlic_b = false
    else
      employee_garlic_b = "Unclear"
    end

    puts "Would you like to enroll in the company’s health insurance? (Y/N)"
    employee_insurance_s = gets.chomp.downcase

    if employee_insurance_s == "y" || employee_insurance_s == "yes" # Converts employee_insurance_s to Boolean
      employee_insurance_b = true
    elsif employee_insurance_s == "n" || employee_insurance_s == "no"
      employee_insurance_b = false
    else
      employee_insurance_b = "Unclear"
    end

    puts "Do you have any allergies? List them seperated by a comma (,) and type done when finished"
    allergies = gets.chomp

    if allergies.include? "sunshine"
      allergic_to_sun = true
    end

    vampire_status = "init" # Intializes employee's vampire status

    current_year = Time.now.year # Gets the current year to compare with employee_birth_year

    if current_year - employee_birth_year == employee_age # Checks if employee age matches input
      employee_age_matches = true
    elsif current_year - employee_birth_year != employee_age
      employee_age_matches = false
    else
      employee_age_matches = "Unclear"
    end

    if employee_garlic_b && employee_insurance_b # Checks preferences for garlic and insurance
      garlic_and_insurance = true
    elsif !employee_garlic_b && !employee_insurance_b
      garlic_and_insurance = false
    elsif !employee_garlic_b && employee_insurance_b
      garlic_and_insurance = "Split"
    elsif employee_garlic_b && !employee_insurance_b
      garlic_and_insurance = "Split"
    else
      garlic_and_insurance = "Unclear"
    end

    case
    when employee_age_matches && garlic_and_insurance && !allergic_to_sun
      vampire_status = "#{employee_name} is probably not a vampire."
    when (!employee_age_matches && garlic_and_insurance == "Split") || allergic_to_sun
      vampire_status = "#{employee_name} is probably a vampire."
    when !employee_age_matches && !garlic_and_insurance
      vampire_status = "#{employee_name} is almost certainly a vampire."
    end

    if employee_name == "Drake Cula" || employee_name == "Tu Fang"
      vampire_status = "#{employee_name} is definitely a vampire."
    end

    if vampire_status == "init"
      vampire_status = "Results inconclusive."
    end

    puts vampire_status

    counter+=1
  end
  
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end

employee_info
