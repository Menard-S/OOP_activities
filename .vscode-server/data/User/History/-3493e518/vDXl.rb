class BankEmployee
    attr_accessor :rank, :years_of_experience
  
    def initialize(rank, years_of_experience)
      @rank = rank
      @years_of_experience = years_of_experience
    end
  
    def introduce
      puts "I am a #{@rank} with #{@years_of_experience} years of experience"
    end
  end
  
# Create a new object
bank_employee = BankEmployee.new("value1", "value2")

# Access and modify attributes
bank_employee.value1 = "new value"
bank_employee.value2 = "another value"

# Call a method on the object
bank_employee.introduce