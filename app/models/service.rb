class Service < ActiveRecord::Base
  belongs_to :user
  has_many :statuses
  attr_accessible :name
  
  validates_presence_of :name
  validates_presence_of :user_id
end
