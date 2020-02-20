require_relative "planet"

class SolarSystem

    attr_reader :star_name, :planets

    def initialize(star_name)
        @star_name = star_name
        @planets = [] 
      end

    def add_planet(planet)
        planets<< planet
    end

    def list_planets
        string = "Planets orbiting #{@star_name}\n"
        @planets.each_with_index do |planet, i|
          string = string  + "#{i+1}. #{planet.name}\n"
        end
        return string
      end

    def find_planet_by_name(planet_string) 
        planets.each do |planet|
            if planet.name.downcase == planet_string.downcase
        return planet
            else return "planet does not exist in this solar system"
            end
        end
    end

    #Enter a control loop that repeatedly asks the user what to do next. The two options at this point are list planets and exit.
def planet_details(solarsystem)
    puts "which planet would you like to know more about?"
    planet = gets.chomp.downcase
    solarsystem.planets.each do |planetlist|
        if planetlist.name.downcase == planet
           puts planetlist.summary
        else puts "this planet is not in this solar system! try a different planet!"
        end
    end
end

def add_planet_user(solarsystem)
    puts "Lets add a planet to our Solar System!"
    puts "I need some details!"
    puts "First! What is the name of the planet you wish to add?"
    name = gets.chomp
    puts "great! now what's the color of #{name}?"
    color = gets.chomp
    puts "wonderful! next we need the mass of #{name}?"
    mass = gets.chomp.to_f
    puts "and the distance from the sum in km?"
    distance = gets.chomp.to_f
    puts "great! almost there! can you add a fun fact for #{name}?"
    fun_fact = gets.chomp

    user_planet = Planet.new(name,color,mass, distance,fun_fact)
    solarsystem.add_planet(user_planet)
    puts "#{name} was added to our Solar System!"
    puts user_planet.summary
    return user_planet
end

def find_which_planet(string)
    planets.each do |planet|
        if planet.name.downcase ==  string
            return planet
        end
    end
    # require "pry"
    # binding.pry
    return nil
end

def distance_between(planet1,planet2)
    planet_a = find_which_planet(planet1)
    planet_b = find_which_planet(planet2)
    return 0 if planet_a.nil? || planet_b.nil?
    return (planet_a.distance_from_sun_km - planet_b.distance_from_sun_km).abs
end
    
end




    