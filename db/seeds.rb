# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
r1 = Role.create(:name => 'bob')
r2 = Role.create(:name => 'steve')
us1 = User.create(:email => 'bob@gmail.com' , :password => 'password', :role_id => r1.id)
us2 = User.create(:email => 'steve@gmail.com' , :password => 'password', :role_id => r2.id)
