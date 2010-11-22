include Geokit::Geocoders

class User < ActiveRecord::Base
  acts_as_mappable
  
  has_many :venues
  has_many :comments
  
  validates_presence_of :email_address
  validates_presence_of :name
  
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
