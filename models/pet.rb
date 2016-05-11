require('pg')
require_relative('../db/sql_runner.rb')

class Pet

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @store_id = options['store_id'].to_i
  end

  def save()
    sql = "INSERT INTO pets (name, store_id) VALUES ('#{@name}', #{@store_id}) RETURNING *"
    pet = SqlRunner. run(sql).first 
    result = Pet.new(pet)
    return result
  end

  def store()
    sql = "SELECT * FROM stores WHERE id = #{@store_id}"
    store = SqlRunner.run(sql)
    result = Store.new(store.first)
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM pets WHERE id = #{id}"
    pet = SqlRunner.run(sql).first
    result = Pet.new(pet)
    return result
  end

end