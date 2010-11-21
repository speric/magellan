include Geokit::Geocoders

class User < ActiveRecord::Base
  validates_presence_of :email_address
  validates_presence_of :name
  
  def before_save
    self.latlong = MultiGeocoder.geocode(self.address).ll
  end
end
