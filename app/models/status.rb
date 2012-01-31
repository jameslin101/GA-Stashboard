class Status < ActiveRecord::Base
  
  belongs_to :service
  
  attr_accessible :etime, :stat, :message
  
  validates_presence_of :etime, :stat, :message, :service_id
end
