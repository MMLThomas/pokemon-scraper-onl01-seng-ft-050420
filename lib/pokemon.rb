class Pokemon
  attr_accessor :name, :type, :db, :id
  
  
  def initialize(id: , name: , type: , db: )
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def self.save(name, type, db)
    new = Pokemon.new
    sql = <<-SQL
      INSERT INTO songs (name, type, db)
      VALUES (?, ?, ?)
    SQL
 
    DB[:conn].execute(sql, new.name, new.type, new.db)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon ")[0][0]
  end
  
  def self.find 
    
  
  end
  
  
end
