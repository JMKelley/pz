# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create! name: "Action"
Category.create! name: "Romance"
Category.create! name: "Comedy"


admin = User.create! :email => 'admin123333412542@admin.com', :password => 'topsecret', :password_confirmation => 'topsecret'
admin.update_attribute :admin, true