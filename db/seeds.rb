# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# borramos instancias existentes:
		Building.all.each do |b|
			b.destroy
		end

# Creamos edificio de prueba:
		Building.create(name: 'test_building', polygon: 'POLYGON ((-33.4963 -70.6131, -33.4981 -70.6138, -33.498 -70.6108, -33.4963 -70.6131))')
