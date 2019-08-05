# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
            #    SCHEMA    #
    # t.date "birth_date", null: false
    # t.string "color", null: false
    # t.string "name", null: false
    # t.string "sex", limit: 1, null: false
    # t.text "description", null: false

CatRentalRequest.destroy_all
Cat.destroy_all

cat1 = Cat.create!(birth_date: '2011/02/05', color: 'Orange', name: 'Garfield', sex: 'M', description: 'Fat orage cat, likes lasagna')
cat2 = Cat.create!(birth_date: '2016/04/23', color: 'Brown', name: 'Fluffy', sex: 'M', description: 'Fat brown cat')

cat3 = Cat.create!(birth_date: '2000/12/25', color: 'White', name: 'Mila', sex: 'F', description: 'Small white cat to meow')
cat4 = Cat.create!(birth_date: '212/0018/05/20', color: 'Black', name: 'Twix', sex: 'M', description: 'Friendly black cat, likes crackers')
cat5 = Cat.create!(birth_date: '2011/10/31', color: 'Orange', name: 'Leo', sex: 'M', description: 'Fat orage cat, likes boxes')

req1 = CatRentalRequest.create!(cat_id: cat1.id, start_date: '2012/01/01', end_date: '2012/02/01')
req2 = CatRentalRequest.create!(cat_id: cat1.id, start_date: '2012/01/13', end_date: '2012/02/05')
req3 = CatRentalRequest.create!(cat_id: cat1.id, start_date: '2012/02/08', end_date: '2012/03/01')
req1 = CatRentalRequest.create!(cat_id: cat1.id, start_date: '2011/12/25', end_date: '2011/12/30')