require 'spec_helper'

describe 'Station' do
  it 'creates a new station' do
    test_station = Station.new({:name => "First station"})
    expect(test_station).to be_an Station
  end

  it 'returns the name of the station' do
    test_station = Station.new({:name => "First Station"})
    expect(test_station.name).to eq "First Station"
  end

  describe "save" do
    it 'allows you to save a station' do
      test_station = Station.new({:name => "First station"})
      test_station.save
      results = DB.exec("SELECT * FROM stations")
      expect(test_station.id).to be_an Integer
    end
  end

  describe "self.all" do
    it "returns all stations from database" do
      test_station = Station.new({:name => "First Station"})
      test_station.save
      expect(Station.all.length).to eq 1
    end
  end
end


