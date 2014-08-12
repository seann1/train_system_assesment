require 'spec_helper'

describe 'Station' do
  it 'creates a new station' do
    test_station = Station.new({:name => "First station"})
    expect(test_station).to be_an Station
  end
end

