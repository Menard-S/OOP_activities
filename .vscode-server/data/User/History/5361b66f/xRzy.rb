class Car
    def initialize(make, model)
      @make = make
      @model = model
    end
  
    def start
        @speed = 0
      puts "Car is starting."
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
  
  
  my_car = Car.new("Toyota", "Camry")
  my_car.start 
  my_car.drive(60)
  my_car.stop
  