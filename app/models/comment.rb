class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :venue
  
  xss_terminate
end
