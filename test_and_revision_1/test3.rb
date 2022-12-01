require './input_functions'

# Complete the code below
# Use input_functions to read the data from the user
class Race 
    attr_accessor :description, :id, :time, :location
    def initialize (description, id, time, location)
        @description = description
        @id = id
        @time = time
        @location = location
    end
end

def read_a_race
	description = read_string("Enter race description:")
    id = read_integer("Enter id:")
    time = read_string("Enter time:")
    location = read_string("Enter location:")
    race = Race.new(description, id, time, location)

end


def read_races
 count = read_integer("How many races are you entering:")
 races = Array.new()
 i = 0
  while (i < count)
     race = read_a_race()
     races << race
     i += 1
  end
    return races
end

def print_a_race(race)
    puts("Race Description #{race.description}")
    puts("Id #{race.id}")
    puts("Time #{race.time}")
    puts("Location #{race.location}")
end

def print_races(races)
	count = races.length
    i = 0
    while (i < count)
        print_a_race(races[i])
        i += 1
    end   
end

def main
	races = read_races()
	print_races(races)
end

main