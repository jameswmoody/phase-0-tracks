#Written by: Wan Tsui and James Moody
def hamster_checkin()
	puts "What is the hamster's name?"
	hamster_name = gets.chomp()

	puts "What is the volume level of the hamster (1 to 10)?"
	volume_level = gets.chomp().to_f

	puts "What is the color of the hamster's fur?"
	fur_color = gets.chomp()

	puts "Is the hamster a good candidate for adoption (Y/N)?"
	adoption_status_s = gets.chomp()

	if adoption_status_s.downcase == "y"
		adoption_status_b = true
	else
		adoption_status_b = false
	end

	puts "What's the estimated age of the hamster (in years)?"
	estimated_age = gets.chomp()
	estimated_age = estimated_age.empty? ? nil : estimated_age.to_f

	puts "Hamster's name is #{hamster_name}."
	puts "Volume level is #{volume_level}."
	puts "Fur color is #{fur_color}."
	puts "Adoption status is #{adoption_status_s}."

	if estimated_age == nil
		puts "Estimated age is nil."
	else
		puts "Estimated age is #{estimated_age}."
	end

end

hamster_checkin