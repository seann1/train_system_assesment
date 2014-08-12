require 'spec_helper'

describe 'Line' do
  it 'creates a new line' do
    test_line = Line.new({:name => "Main Line"})
    expect(test_line).to be_an Line
  end

  it 'returns the name of the line' do
    test_line = Line.new({:name => "Main Line"})
    expect(test_line.name).to eq "Main Line"
  end

  describe "save" do
    it 'allows you to save a line to the database' do
      test_line = Line.new({:name => "Main Line"})
      test_line.save
      results = DB.exec("SELECT * FROM lines")
      expect(test_line.id).to be_an Integer
    end
  end
end
