require 'pry'

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
      binding.pry
      pokemon = Pokemon.new(id: = row[0], name: row[1], tyoe: = row[2])
      pokemon
    end
  end
  
  
end
