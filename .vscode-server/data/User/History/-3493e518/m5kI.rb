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

bank_manager = BankEmployee.new("rank", "years_of_experience")
bank_manager.rank = "bank manager"
bank_manager.years_of_experience = 5
bank_manager.introduce

bank_supervisor = BankEmployee.new("rank", "years_of_experience")
bank_supervisor.rank = "bank supervisor"
bank_supervisor.years_of_experience = 3
bank_supervisor.introduce