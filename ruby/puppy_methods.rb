class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    puts "Woof!" * number
  end

  def rollover
    puts "Rolls over."
  end

  def dog_years(human_years)
    dog_years = human_years * 7
  end

  def play_dead
    puts "......"
  end
end

puppy = Puppy.new

puppy.fetch("ball")
puppy.speak(5)
puppy.rollover
puppy.dog_years(10)
puppy.play_dead
