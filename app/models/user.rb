class User < ActiveRecord::Base
  validates_presence_of :email_address
  validates_presence_of :name
end
