class Station

  attr_accessor :name, :id

  def initialize(attributes)
    @name = attributes[:name]
    @id = attributes[:id]
  end

  def save
    results = DB.exec("INSERT INTO stations (name) VALUES ('#{@name}') RETURNING id;")
    @id = results.first['id'].to_i
  end

  def self.all
    all_stations = []
    results = DB.exec("SELECT * FROM stations")
    results.each do |result|
      all_stations << Station.new({:name => result['name'], :id => result['id']})
    end
    all_stations
  end

  def self.delete(id)
    DB.exec("DELETE FROM stations WHERE id = #{id}")
  end
end



