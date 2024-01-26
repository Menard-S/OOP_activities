#Polymorphism by inheritance
class Animal
    def speak
      "Undefined sound!"
    end
  end
  
  class Bird < Animal
    def speak
      "Tweet!"
    end
  end
  
  class Duck < Animal
    def speak
      "Quack!"
    end
  end

  class Mouse < Animal
    def speak
        "Squeak!"
    end
end

  
  bird = Bird.new
  puts bird.speak
  
  duck = Duck.new
  puts duck.speak

  mouse = Mouse.new
  puts mouse.speak

  unknown = Animal.new
  puts unknown.speak

  
#Polymorphism by duck-typing

class Bird
    def speak
      "Tweet!"
    end
  end

  class Duck
    def speak
        "Quack!"
    end
  end
  
  class Mouse
    def speak
      "Squeak!"
    end
  end
  
  def make_it_speak(speaker)
    puts speaker.speak
  end
  
  bird = Bird.new
  duck = Duck.new
  mouse = Mouse.new
  
  make_it_speak(bird) 
  make_it_speak(duck)
  make_it_speak(mouse)
  