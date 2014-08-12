class Line

  attr_accessor :name, :id

  def initialize(attributes)
    @name = attributes[:name]
    @id = attributes[:id]
  end

  def save
    results = DB.exec("INSERT INTO lines (name) VALUES ('#{@name}') RETURNING id;")
    @id = results.first['id'].to_i
  end

  def self.all
    all_lines = []
    results = DB.exec("SELECT * FROM lines")
    results.each do |result|
      all_lines << Line.new({:name => result['name'], :id => result['id']})
    end
    all_lines
  end



end
