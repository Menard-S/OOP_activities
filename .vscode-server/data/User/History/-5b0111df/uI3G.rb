class Person
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def display_info
      puts "Name: #{@name}, Age: #{@age}"
    end
  
    def change_name(new_name)
      set_name(new_name)
    end
  
    private
    
    def set_name(new_name)
      @name = new_name
    end
  end
  
  # Creating an object of the Person class
  person = Person.new("Alice", 30)
  person.display_info # Displays: Name: Alice, Age: 30
  
  # Changing the name using a public method
  person.change_name("Bob")
  person.display_info # Displays: Name: Bob, Age: 30
  