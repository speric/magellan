include Geokit::Geocoders

class Venue < ActiveRecord::Base
  acts_as_mappable
  xss_terminate
  
  validates_presence_of :name
  validates_presence_of :address
  
  def before_save
    self.latlong = MultiGeocoder.geocode(self.address).ll
  end
end
