# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

list = List.create!(:name=>'Todos');

ListItem.create!(:name => 'Buy Milk', :list=>list)
ListItem.create!(:name => 'Wash the car', :list=>list)
ListItem.create!(:name => 'Drag and drop test problem', :list=>list)


