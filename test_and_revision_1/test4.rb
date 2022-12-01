require './input_functions'
# Complete the code below
# Use input_functions to read the data from the user

class Baby
	attr_accessor :name, :weight, :gender, :ward
	def initialize (name, weight, gender, ward)
	 @name = name
	 @weight = weight
	 @gender = gender
	 @ward = ward
	end
end

def read_a_baby
    name = read_string("Enter baby name:")
    weight = read_integer("Enter birth weight (kgs): ")
    gender = read_string("Enter gender:")
    ward = read_string("Enter ward: ")
    baby = Baby.new(name, weight, gender, ward)
	
end

def read_babies
 count = read_integer("How many babies are you entering:")
 babies = Array.new()
 i = 0
 while (i < count)
    baby = read_a_baby()
    babies << baby
    i += 1
 end
   return babies
  
end

def print_a_baby(baby)

    puts("Baby Name#{baby.name}")
    puts("Birth Weight#{baby.weight}")
    puts("Gender #{baby.gender}")
    puts("Ward #{baby.ward}")
end

def print_babies(babies)
    count = babies.length
    i = 0
    while (i < count)
        print_a_baby(babies[i])
        i += 1
    end   
end

def main
 babies = read_babies()
 print_babies(babies)
end

main