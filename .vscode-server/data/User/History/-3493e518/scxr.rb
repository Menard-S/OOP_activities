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
  
  bank_employee = BankEmployee.new("Branch Manager", 10)
  
  bank_employee.introduce("Branch Manager", 10)