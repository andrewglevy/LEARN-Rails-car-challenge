class CarsController < ApplicationController
  def index
    render "index"
  end
  def status

    session[:color] = nil
    if !params.has_key?(:year) || params[:year].strip.empty?
        @year = "Year missing"
      redirect_to "/index"
    elsif !params.has_key?(:make) || params[:make].strip.empty?
        @make = "Make missing"
      redirect_to "/index"
    elsif !params.has_key?(:model) || params[:model].strip.empty?
        @model = "Model missing"
      redirect_to "/index"
    else
      # if @year == "Year missing"
      #   @indexflash = "You must enter a year."
      # elsif @make == "Make missing"
      #   @indexflash = "You must enter a make."
      # elsif @model == "Model missing"
      #   @indexflash = "You must enter a model."
      # end
      if session[:color] == nil
        session[:color] = params[:color].to_s
      end
      @car = Car.new(params[:year], params[:make], params[:model])
      session[:car] = @car.to_yaml
      render "status"
    end
  end
  def color
    @color
  end
  def accelerate
    @car = YAML.load(session[:car])
    if @car.parking_brake == false
      @car.accelerate
    end
    session[:car] = @car.to_yaml
    render "status"
  end
  def brake
    @car = YAML.load(session[:car])
    @car.brake
    session[:car] = @car.to_yaml
    render "status"
  end
  def lightswitch
    @car = YAML.load(session[:car])
    @car.lightswitch
    session[:car] = @car.to_yaml
    render "status"
  end
  def pbrake
    @car = YAML.load(session[:car])
    if @car.speed == 0
      if params[:pbrake] == "on" && @car.parking_brake == false
        @car.toggle_parking_brake
      elsif params[:pbrake] == "off" && @car.parking_brake == true
        @car.toggle_parking_brake
      end
    end
    session[:car] = @car.to_yaml
    render "status"
  end
end
