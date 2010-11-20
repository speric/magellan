include Geokit::Geocoders

class Venue < ActiveRecord::Base
  acts_as_mappable
  
  validates_presence_of :name
  validates_presence_of :address
  
  def after_create
    self.latlong = MultiGeocoder.geocode(self.address).ll
    self.save
  end
end
