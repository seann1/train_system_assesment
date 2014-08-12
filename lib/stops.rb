class Stop

  attr_accessor :line_id, :station_id, :id

  def initialize(attributes)
    @line_id = attributes[:line_id]
    @station_id = attributes[:station_id]
    @id = attributes[:id]
  end

  def save
    results = DB.exec("INSERT INTO stops (line_id, station_id) VALUES ('#{line_id}', '#{station_id}';")
    @id = results.first['id'].to_i
  end
end
