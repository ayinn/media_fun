class Medium < ActiveRecord::Base
  belongs_to :market
  validates :title, presence: true
  validates :description, presence: true
  validates :media_type, presence: true
  validates :market_id, presence: true
  validates :market_name, presence: true
  validates :media_target, presence: true
  validates :media_reach, presence: true
  validates :media_url, presence: true
end
