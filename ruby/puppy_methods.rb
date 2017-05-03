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

  def initialize
    puts "Initializing new puppy instance..."
  end
end

puppy = Puppy.new

puppy.fetch("ball")
puppy.speak(5)
puppy.rollover
puppy.dog_years(10)
puppy.play_dead

class Basketball_player
  def shoots
    puts "Shoots the ball"
  end

  def dunks
    puts "Dunks the ball"
  end
end

counter = 0
team = []

while counter < 50
  player = Basketball_player.new
  team << player
  counter+=1
end

team.each do |player|
  player.shoots
  player.dunks
end
