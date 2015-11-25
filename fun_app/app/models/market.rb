class Market < ActiveRecord::Base
  has_many :media
  validates :name, presence: true
  
end
