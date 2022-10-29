require './input_functions'
class Course 
    attr_accessor :abbre ,:name ,:units 
    def initialize(abbre, name, units)
        @abbre = abbre
        @name = name
        @units = units 
    end 
end 

class Unit 
    attr_accessor :name, :location 
    def initialize(name, location)
        @name = name
        @location = location
    end 
end 

def read_courses 
    count = read_integer("Enter a number of courses")
    courses = Array.new()
    index = 0 
    while (index < count ) 
        courses << read_course 
        index += 1 
    end 
    return courses
end 

def read_course
    abbre = read_string("Course shorten name")
    name = read_string("Course full name")
    units = read_units
    course = Course.new(abbre, name, units)
end 

def read_units 
    count = read_integer("Enter a number of units")
    units = Array.new() 
    index = 0 
    while (index < count)
        units << read_unit
        index += 1 
    end 
    return units 
end 

def read_unit 
    name = read_string("Unit name")
    location = read_string("Unit location")
    unit = Unit.new(name, location)
end 

def print_courses(courses)
    index = 0
    while (index < courses.length)
        puts("Courses #{index}")
        print_course(courses [index])
        index += 1
    end
    
end 

def print_course (course)
    puts("- name is #{course.name}")
    puts("- location #{course.location}")
    puts("- shortname #{course.abbre}")
end 

def print_units(units)
    puts("I am printing My Units ==========")
    index = 0 
    while (index < units.length)
        puts("Unit #{index}")
        print_unit(units[index])
        index += 1 
    end 
end 

def print_unit (unit)
    puts("- name is #{unit.name}")
    puts("- location #{unit.location}")
end 

def main 
    # units = read_units 
    # print_units(units)
    courses = read_courses 
    print_courses(courses) 
end 

main 
