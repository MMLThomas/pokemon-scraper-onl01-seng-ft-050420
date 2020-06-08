class Pokemon
  attr_accessor :name, :type, :db, :id
  
  
  def initialize(id: , name: , type: , db: )
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def self.save(name, type, db)
    db.execute(
      "INSERT INTO pokemon (name, type) VALUES (?, ?)",
      name, 
      type)
  end
 
  
  def self.find(id, db)
    db.execute("SELECT * FROM pokemon WHERE id = (?)", id).each do |row|
      pokemon = Pokemon.new(row[0], row[1], row[2], row[3])
      pokemon
    end
  end
  
  
end
