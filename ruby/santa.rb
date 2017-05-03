class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
  end

  # Getter methods
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  # Setter methods
  def celebrate_birthday
    @age+=1
  end

  def get_mad_at(bad_reindeer)
    @reindeer_ranking.delete_if { |reindeer| reindeer == bad_reindeer }
    @reindeer_ranking.push(bad_reindeer)
  end

  def gender=(new_gender)
    @gender = new_gender
  end
end


# Driver code
santa = Santa.new("male", "black")

santa.about
santa.speak
santa.eat_milk_and_cookies("mint")
santa.age
santa.ethnicity
santa.celebrate_birthday
santa.get_mad_at("Vixen")
santa.gender = "zim"


santa.celebrate_birthday

santas = []
santas << santa

p santas
