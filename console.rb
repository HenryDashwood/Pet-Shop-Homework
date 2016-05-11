require_relative('models/pet')
require_relative('models/store')

require('pry-byebug')

store1 = Store.new({'name' => 'The Muttropolitan'}).save()
store2 = Store.new({'name' => 'Pussy Galore'}).save()
store3 = Store.new({'name' => 'Finding Nemo'}).save()

pet1 = Pet.new({'name' => 'Gandalf', 'type' => 'Golden Retriever', 'store_id' => store1.id }).save()
pet2 = Pet.new({'name' => 'Boromir', 'type' => 'Great Dane', 'store_id' => store1.id }).save()
pet3 = Pet.new({'name' => 'Bailin', 'type' => 'English Pointer Retriever', 'store_id' => store1.id }).save()

pet4 = Pet.new({'name' => 'Rory', 'type' =>'Lion', 'store_id' => store2.id }).save()
pet5 = Pet.new({'name' => 'Bagira', 'type'=> 'Panther', 'store_id' => store2.id }).save()
pet6 = Pet.new({'name' => 'Shear Khan', 'type' =>'Tiger', 'store_id' => store2.id }).save()

pet7 = Pet.new({'name' => 'Charlie', 'type' =>'Turtle', 'store_id' => store3.id }).save()
pet8 = Pet.new({'name' => 'Jemima', 'type' =>'Duck', 'store_id' => store3.id }).save()
pet9 = Pet.new({'name' => 'Dory', 'type' =>'Fish', 'store_id' => store3.id }).save()

binding.pry
nil