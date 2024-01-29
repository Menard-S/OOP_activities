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

  
bank_manager = BankEmployee.new("bank manager", 5)
bank_supervisor = BankEmployee.new("bank supervisor", 3)


bank_manager.introduce
bank_supervisor.introduce
