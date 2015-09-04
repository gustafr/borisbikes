require 'dockingstation.rb'
require 'bike.rb'

describe Bike do
  it {expect(Bike.new).to respond_to :working?}
  it {expect(Bike.new).to be_a Bike}
end