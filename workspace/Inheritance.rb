class Employee
    attr_accessor :first_name, :last_name, :age, :performance_rating

    def initialize(first_name, last_name, age, performance_rating=0)
        @first_name = first_name
        @last_name = last_name
        @age = age
        @performance_rating = performance_rating
    end

    def resign
        puts "Rendering in 30 days..."
    end
end

class SoftwareEngineer < Employee
    def write_code
        puts "Writing code..."
    end
end

class Manager < Employee
    def evaluate_employee(employee, performance_rating)
        puts "Evaluating employee..."
        employee.performance_rating = performance_rating
    end
end

menard = SoftwareEngineer.new("Menard", "Seguenza", 34)
mingming = Manager.new("Mingming", "Muning", 38, 99)

menard.resign
mingming.evaluate_employee(menard, 50)