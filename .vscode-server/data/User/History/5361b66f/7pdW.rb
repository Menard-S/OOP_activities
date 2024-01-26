class Car
    def initialize(make, model)
      @make = make
      @model = model
    end
  
    def start
      describe_car
      puts "Car is starting."
    end
  
    def drive(speed)
      puts "Driving at #{speed} kph."
    end
  
    def stop
      puts "Car has stopped."
    end
  
    private
  
    def describe_car(make, model)
      puts "You are driving a #@make #@model."
    end
  end
  
  # Using the Car class
  my_car = Car.new("Toyota", "Camry")
  my_car.start   # => Car is starting.
                 # => Engine is ignited.
  my_car.drive(60) # => Driving at 60 mph.
  my_car.stop    # => Car has stopped.
  