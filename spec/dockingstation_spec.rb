require 'dockingstation.rb'
require 'bike.rb'

describe DockingStation do
  it {expect(DockingStation.new).to respond_to :release_bike}
  it {expect(DockingStation.new).to be_a DockingStation}

  it 'allocates a bike to docked bikes' do
    bike1 = Bike.new
    station1 = DockingStation.new
    station1.docked_bikes << bike1
    expect(station1.docked_bikes).to include bike1
  end

it 'expect bike to be working' do
    bike1 = Bike.new
    expect(bike1.working).to eq true
  end

it 'expect bike to be released' do
    bike1 = Bike.new
    station1 = DockingStation.new
    station1.docked_bikes << bike1
    expect(station1.release_bike).to eq bike1
  end

  it 'expect bike to be released' do
    station1 = DockingStation.new
    expect(station1.release_bike).to eq 'No bikes available'
  end

end
