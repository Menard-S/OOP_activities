# Imagine HR software
class Employee
    attr_accessor :first_name, :last_name, :age, :performance_rating

    def initialize(first_name, last_name, performance_rating=0)
        @first_name = first_name
        @last_name = last_name
        @age = age
        @performance_rating performance_rating
    end

    def resign
        puts "Rendering in 30 days..."
    end
end

class SoftwareEngineer
    attr_accessor :first_name, :last_name, :age, :performance_rating

    def initialize
end