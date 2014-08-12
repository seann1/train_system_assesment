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

  describe "self.delete" do
    it "deletes a station from the database" do
      test_station = Station.new({:name => "First Station"})
      test_station.save
      Station.delete(test_station.id)
      expect(Station.all.length).to eq 0
    end
  end

  describe "self.change_name" do
    it "allows the user to change a station's name" do
      test_station = Station.new({:name => "Main Station"})
      test_station.save
      Station.change_name(test_station.id, "second station")
      expect(Station.all[0].name).to eq "second station"
    end
  end

end


