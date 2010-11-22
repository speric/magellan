include Geokit::Geocoders

class Venue < ActiveRecord::Base
  acts_as_mappable
  xss_terminate
  
  belongs_to  :user
  has_many    :comments
  
  validates_presence_of :name
  validates_presence_of :address
  
  def before_save
    self.latlong = MultiGeocoder.geocode(self.address).ll
  end
  
  def lat
    self.latlong.split(",")[0]
  end

  def lng
    self.latlong.split(",")[1]
  end
end
