class Planet

    attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

    def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
        raise ArgumentError.new("mass must be greater than zero") if mass_kg <= 0
        raise ArgumentError.new("distance must be greater than zero") if distance_from_sun_km <= 0

        
        @name = name
        @color = color
        @mass_kg =mass_kg
        @distance_from_sun_km = distance_from_sun_km
        @fun_fact = fun_fact
      end

      def summary
        return "#{self.name} is #{self.color} and weighs #{self.mass_kg}, it is #{self.distance_from_sun_km} from the sun, and is #{self.fun_fact}"
      end

end