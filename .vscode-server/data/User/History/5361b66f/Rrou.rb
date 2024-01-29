class Car
    def initialize(make, model)
      @make = make
      @model = model
    end
  
    def start
        @speed = 0
      puts "You will now start driving."
      describe_car
    end
  
    def drive(speed)
        @speed = speed
      puts "Drive carefully!"
      describe_car
    end
  
    def stop
        @speed = 0
      puts "Car has stopped."
      describe_car
    end
  
    private
  
    def describe_car
      puts "This is a #@make #@model, current speed is #@speed kph"
    end
  end
  
  
  my_car = Car.new("Nissan", "Sentra")
  my_car.start 
  my_car.drive(180)
  my_car.stop
  