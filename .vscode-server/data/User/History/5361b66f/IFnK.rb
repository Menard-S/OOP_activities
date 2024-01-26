class Car
    def initialize(make, model)
      @make = make
      @model = model
      @speed = 0
    end
  
    def start
      puts "Car is starting."
    end
  
    def drive(speed)
        @speed = speed
      puts "Driving at #{speed} kph."
      describe_car
    end
  
    def stop
      puts "Car has stopped."
      @speed = 0
    end
  
    private
  
    def describe_car
      puts "You are driving a #@make #@model at a speed of #@speed"
    end
  end
  
  # Using the Car class
  my_car = Car.new("Toyota", "Camry")
  my_car.start   # => Car is starting.
                 # => Engine is ignited.
  my_car.drive(60) # => Driving at 60 mph.
  my_car.stop    # => Car has stopped.
  