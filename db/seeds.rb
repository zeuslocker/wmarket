# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create(email: 'admin@admin.com', password: 'Grusha105') unless Admin.find_by(email: 'admin@admin.com')
Category.find_or_create_by(name: 'World of Tanks')
Category.find_or_create_by(name: 'Steam')
Category.find_or_create_by(name: 'Warthunder')
