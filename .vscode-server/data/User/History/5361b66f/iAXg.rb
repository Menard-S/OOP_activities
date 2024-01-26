class Car
    def initialize(make, model)
      @make = make
      @model = model
      @speed = 0
    end
  
    def start
      puts "Car is starting."
      describe_car
    end
  
    def drive(speed)
        @speed = speed
      puts "Driving at #{speed} kph."
      describe_car
    end
  
    def stop
      puts "Car has stopped."
      @speed = 0
      describe_car
    end
  
    private
  
    def describe_car
      puts "This is a #@make #@model, current speed is #@speed"
    end
  end
  
  # Using the Car class
  my_car = Car.new("Toyota", "Camry")
  my_car.start 
  my_car.drive(60)
  my_car.stop
  