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

def read_race
	description = read_string("Enter race description:")
    id = read_integer("Enter id:")
    time = read_string("Enter time:")
    location = read_string("Enter location:")
    race = Race.new(description, id, time, location)
    return race
end


def read_races
	count = read_integer("How many races are you entering:")
    races = Array.new
    index =0
        while (index < count)
        race = read_race()
        races << race
        index += 1
        end
        return races
end

def print_race(race)
	puts ('Race Description ' + race.description.to_s)
    puts ('Id '+ race.id.to_s)
    puts('Time ' + race.time.to_s)
    puts('Location ' + race.location.to_s)
end

def print_races(races)
	    count = races.length
        index = 0
    while (index < count)
        print_race(races[index])
        index += 1
    end   
end

def main
	races = read_races()
	print_races(races)
end

main()