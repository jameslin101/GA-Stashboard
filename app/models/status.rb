class Status < ActiveRecord::Base
  
  belongs_to :service
  
  attr_accessible :time, :state, :message
  
  validates_presence_of :time, :state, :message, :service_id
end
