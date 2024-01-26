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

    def change_age(new_age)
        set_age(new_age)
    end
  
    private

    def set_name(new_name)
      @name = new_name
    end

    def set_age(new_age)
        @age = new_age
    end
  end
  

  person = Person.new("Alice", 30)
  person.display_info
  
  person.change_name.change_age("Bob", 15)
  person.display_info
  
  person.change_age(15)
  person.display_info
  