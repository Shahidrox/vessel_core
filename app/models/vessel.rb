# == Schema Information
#
# Table name: vessels
#
#  id             :bigint           not null, primary key
#  destination    :string(200)
#  naccs_code     :string(30)       not null
#  name           :string(100)
#  ship_type      :integer          default("container_ships")
#  start_location :string(200)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  owner_id       :string(30)
#
# Indexes
#
#  index_vessels_on_naccs_code  (naccs_code) UNIQUE
#
class Vessel < ApplicationRecord
  has_many :vessel_trackings, dependent: :destroy

  validates :name, presence: true
  validates :owner_id, presence: true
  validates :naccs_code, presence: true, uniqueness: true

  enum ship_type: { container_ships: 0, tanker_ships: 1, offshore_ships: 2, naval_ships: 3, oil_ships: 4, other: 5 }
end
