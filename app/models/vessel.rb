class Vessel < ApplicationRecord
  has_many :vessel_tracking

  validates :name, presence: true
  validates :owner_id, presence: true
  validates :naccs_code, presence: true, uniqueness: true
end
