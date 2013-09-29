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
		Building.create(name: 'test_building', polygon: 'POLYGON((-70.61267137527466 -33.49551386595725, -70.61329364776611 -33.498537928852656, -70.6090235710144 -33.497160114479506,-70.60900211334229 -33.49596121919658))')
		
		Building.create(name: 'test_building2', polygon: 'POLYGON((-70.61232805252075 -33.49857371608331, -70.61539649963379 -33.49884211881775, -70.61494588851929 -33.50102509681544, -70.61185598373413 -33.50075670084944))')
		
