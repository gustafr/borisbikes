class DockingStation
  attr_accessor :docked_bikes

  def initialize
    @docked_bikes = []

  end


  def release_bike
    if @docked_bikes.any?
      @docked_bikes.pop
    else
      return 'No bikes available'

    end


  end

end

