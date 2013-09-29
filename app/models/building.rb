class Building < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :polygon, :description
  
  self.rgeo_factory_generator = RGeo::Geos.factory_generator(:srid => 4326, :geographic => true)
  
  def encoded_polygon
  	return PolylineEncoder.encode(self.polygon.exterior_ring)
  end
end
