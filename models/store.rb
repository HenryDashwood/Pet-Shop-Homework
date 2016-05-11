require('pg')
require_relative('../db/sql_runner.rb')
require_relative('pet')

class Store

  attr_accessor(:id, :name)

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO stores (name) VALUES ('#{@name}') RETURNING *"
    store = SqlRunner.run(sql).first
    result = Store.new(store)
    return result 
  end

  def pets()
    sql = "SELECT name FROM pets WHERE store_id = #{@id}"
    pets = SqlRunner.run(sql)
    result = pets.map {|pet| Pet.new(pet)}
    return result
  end

  def edit()
    sql = "UPDATE stores SET name = '#{@name}' WHERE id = #{@id}"
    store = SqlRunner.run(sql).first
    # result = Store.new(store)
    # return result 
  end

  def delete()
    sql = "DELETE from stores WHERE name = '#{@name}"
    store = SqlRunner.run(sql).first
    # result = Store.new(store)
    # return result
  end

  def list()
    sql = "SELECT * FROM stores"
    store = SqlRunner.run(sql).first
    result = Store.new(store)
    return result
  end

end




# Create Pet Stores
# Edit Pet Stores
# Delete Pet Stores
# List Pet Stores