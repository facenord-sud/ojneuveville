# encoding: utf-8

# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Material.create([{name: "Dégaines"}, {name: "Baudrier"}, {name: "Chaussures de grimpe"}])
User.create!({name: 'admin', password: 'admin', password_confirmation: 'admin', roles: %[super-admin], email: 'admin@ojneuveville.com', reason: 'admin'})