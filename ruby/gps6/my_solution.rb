# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# 'require_relative' allow you to access data from an external file.
# This can be useful when it comes to file organization. While 'require'
# needs an exact path to the file, 'require_relative' will allow you to easily
# access a file within the same directory.
#
require_relative 'state_data'

class VirusPredictor

  # Will create a new instance of 'VirusPredictor' class with attributes that are passed
  # as arguements
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls methods 'predicted_deaths' and 'speed_of_spread' to show full effects of
  # virus.
  def virus_effects(population_density, population, state)
    # predicted_deaths(@population_density, @population, @state)
    # speed_of_spread(@population_density, @state)
    speed = 0.0

    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2.0
    else
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"

  end

  private

  # Calculates the predicted number of deaths by using a state's population and
  # population density. Prints out result with state and number of deaths.
  # def predicted_deaths(population_density, population, state)
  #   # predicted deaths is solely based on population density
  #   if population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end
  #
  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  #
  # end

  # Calulates the speed of speed based on population density of state. Prints out
  # result of speed in months.
#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0
#
#     if @population_density >= 200
#
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end
#
#     puts " and will spread across the state in #{speed} months.\n\n"
#
#   end
#
end

# Iterate through STATE_DATA hash to pass through name, density, and population
# Create new instance of VirusPredictor using arguements
#
#

STATE_DATA.each do |state, population_data|
  state = VirusPredictor.new(state, population_data[:population_density], population_data[:population])
  state.virus_effects(population_data[:population_density], population_data[:population], state)
end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
