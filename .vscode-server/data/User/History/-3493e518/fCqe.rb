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
bank_employee = BankEmployee.new("rank", "years_of_experience")

# Access and modify attributes
bank_employee.rank = "manager"
bank_employee.years_of_experience = 5

# Call a method on the object
bank_employee.introduce