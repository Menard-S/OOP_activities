class Actor
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def display_info
      puts "Starring: #{@name}, Age: #{@age}"
    end
  
    def double(new_name, new_age)
      set_double(new_name, new_age)
    end
  
    private
    def set_double(new_name, new_age)
      @name = new_name
      @age = new_age
    end
  end
  
  
  person = Person.new("Alice", 30)
  person.display_info
  
  
  person.change_name("Bob")
  person.display_info
  