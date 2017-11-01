class Car
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speed = 0
    @lights = false
    @parking_brake = true
  end
  def year
    @year
  end
  def make
    @make.capitalize
  end
  def model
    @model.capitalize
  end
  def speed
    @speed
  end
  def accelerate
    @speed = @speed + 10
  end
  def brake
    if @speed >=7
      @speed = @speed - 7
    else
      @speed = 0
    end
  end
  def lights
    @lights
  end
  def lightstatus
    if @lights == true
      @lightstatus = "Lights are on."
    else
      @lightstatus = "Lights are off."
    end
  end
  def lightswitch
    @lights = !@lights
  end
  def parking_brake
    @parking_brake
  end
  def parking_brake_status
    if @parking_brake == true
      @parking_brake_status = "Parking brake is on."
    else
      @parking_brake_status = "Parking brake is off."
    end
  end
  def toggle_parking_brake
    @parking_brake = !@parking_brake
  end
end
