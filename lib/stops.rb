class Stop

  attr_accessor :line_id, :station_id, :id

  def initialize(attributes)
    @line_id = attributes[:line_id]
    @station_id = attributes[:station_id]
    @id = attributes[:id]
  end

  def save
    results = DB.exec("INSERT INTO stops (line_id, station_id) VALUES ('#{line_id}', '#{station_id}') RETURNING id;")
    @id = results.first['id'].to_i
  end

  def self.all
    all_stops = []
    results = DB.exec("SELECT * FROM stops")
    results.each do |result|
      all_stops << Stop.new({:line_id => result['line_id'],:id => result['id'], :station_id => result['station_id']})
    end
    all_stops
  end


end
