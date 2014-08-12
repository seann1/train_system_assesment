require 'spec_helper'

describe 'Stop' do
  it 'creates a stop which takes an argument of a line and station' do
    test_line = Line.new({:name => "Main Line"})
    test_line.save
    test_station = Station.new({:name => "First Station"})
    test_station.save
    test_stop = Stop.new({:line_id => test_line.id, :station_id => test_station.id})
    expect(test_stop).to be_an Stop
  end
end
