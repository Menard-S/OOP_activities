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
bank_manager = BankEmployee.new("rank", "years_of_experience")

# Access and modify attributes
bbank_manager.rank = "manager"
bbank_manager.years_of_experience = 5

# Call a method on the object
bank_manager.introduce