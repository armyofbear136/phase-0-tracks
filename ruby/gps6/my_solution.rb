# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative essentially adds in the code from another file at the head of the file
# require allows us to add in code from another file explicity defined,
# the difference is that require_relative usually loads in code from developer files, where require loads in modules from existing code from ruby etc
require_relative 'state_data'

class VirusPredictor
  attr_reader :population, :population_density, :state

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  #first runs a calculation for predicted deaths based on populations values
  #then runs a calculation for predicted speed of spread based on populations values
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  private

# predicted_deaths checks for different population densities and
# applies a formula (ratio) to calculate the number of deaths based on the population
# prints calculated number of deaths 
  def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end

    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |x,y|
  state = VirusPredictor.new(x,y[:population_density], y[:population])
  state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# One is assigning a string key a value hash and one is assigning a symbol key an integer

# What does require_relative do? How is it different from require?
# require_relative includes code from another file, typically made by the developer
# require includes code from any file, typically a premade libary

# What are some ways to iterate through a hash?
# Hash.new.each do |x,y|
 
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# it was accessing the instance variable directly instead of using the method to read the value

# What concept did you most solidify in this challenge?
# DRY 