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
end
