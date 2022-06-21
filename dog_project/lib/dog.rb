class Dog

    attr_accessor :age
    attr_reader :name, :breed, :favorite_foods

    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def bark
        if @age > 3
            return @bark.upcase
        else
            return @bark.downcase
        end
    end

    def favorite_food?(item)
        return true if @favorite_foods.map(&:downcase).include?(item.downcase)
        return false
    end
end
