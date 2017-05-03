class Santa
  attr_reader :ethnicity # Gives read access to ethnicity
  attr_accessor :age, :gender #Gives read/write access to age and gender

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

  def celebrate_birthday
    @age+=1
  end

  def get_mad_at(bad_reindeer)
    @reindeer_ranking.delete_if { |reindeer| reindeer == bad_reindeer }
    @reindeer_ranking.push(bad_reindeer)
  end

end

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

counter = 0
while counter < 1000
  santa = Santa.new(genders.sample, ethnicities.sample)
  santa.age = rand(0...140)
  p santa.age
  p santa.ethnicity
  p santa.gender
  counter+=1
end
