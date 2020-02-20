

require_relative "planet"
require_relative "solar_system"

def main


mercury = Planet.new('Mercury', 'red', 0.330e24, 57e6, 'Mercury is the smallest planet in our Solar System.')
venus = Planet.new("Venus", "yellow", 4.87e24, 108e6, "Venus is the hottest planet in the Solar System.")
earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "The Earth is the densest planet in the Solar System.")
mars = Planet.new("Mars", "red", 6.42e23, 249e6, "Both of Mars poles are blanketed in ice.")
jupiter = Planet.new("Jupiter", "blue-red", 1.898e27, 817e6, "Jupiter is the largest planet in our Solar System.")
saturn = Planet.new("Saturn", "pink", 5.69e26, 1.5e9, "Saturn’s rings are made primarily of “water ice” mixed with dust and other chemicals.")
uranus = Planet.new("Uranus", "blue", 8.68e25, 3e9, "Uranus is the coldest of the planets.")
neptune = Planet.new("Neptune", "dark blue", 1.02e26, 4.5e9, "Neptune’s blue color is due to the absorption of red light by methane in the atmosphere.")

solarsystem = SolarSystem.new("the Sun")
solarsystem.add_planet(earth)
solarsystem.add_planet(mercury)
solarsystem.add_planet(venus)
solarsystem.add_planet(mars)
solarsystem.add_planet(jupiter)
solarsystem.add_planet(saturn)
solarsystem.add_planet(uranus)
solarsystem.add_planet(neptune)

puts earth.summary
puts mercury.summary
puts solarsystem.list_planets
p solarsystem.find_planet_by_name("eArth")

puts "^^^^^^^^^^^^^^^^"
#puts solarsystem.distance_between(earth,mercury)
puts "^^^^^^^^^^^^^^^^"

puts "What would you like to do next? Options : List planets, Planet details, Add planet, find distance, Exit"
choice = gets.chomp.downcase


if choice == "list planets"
    puts solarsystem.list_planets
else
     if choice == "planet details"
        solarsystem.planet_details(solarsystem)
     else
        if choice == "add planet"
            solarsystem.add_planet_user(solarsystem)
        else
            if choice == "find distance"
                puts "enter planet one:"
                planet1= gets.chomp.downcase
                puts "enter planet two:"
                planet2= gets.chomp.downcase
                puts  solarsystem.distance_between(planet1,planet2)
            else until choice == "exit" || choice == "list planets" || choice == "planet details"
                puts "this is not a valid choice, pick again!"
                choice = gets.chomp.downcase
            end
        end 
     end
end
end


end

puts main
