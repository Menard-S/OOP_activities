#Polymorphism by inheritance
class Animal
    def speak
      "Alugalugalug!"
    end
  end
  
  class Dog < Animal
    def speak
      "Aw aw!"
    end
  end
  
  class Cat < Animal
    def speak
      "Meow!"
    end
  end
  
  dog = Dog.new
  puts dog.speak
  
  cat = Cat.new
  puts cat.speak

  unknown = Animal.new
  puts unknown.speak

  
#Polymorphism by duck-typing

class Bird
    def speak
      "Tweet!"
    end
  end
  
  class Human
    def speak
      "Hello!"
    end
  end
  
  def make_it_speak(speaker)
    puts speaker.speak
  end
  
#   bird = Bird.new
#   human = Human.new
  
  make_it_speak(bird) 
  make_it_speak(human)
  