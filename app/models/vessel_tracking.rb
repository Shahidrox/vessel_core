# == Schema Information
#
# Table name: vessel_trackings
#
#  id         :bigint           not null, primary key
#  eta        :string
#  next_port  :string
#  speed      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  vessel_id  :bigint           not null
#
# Indexes
#
#  index_vessel_trackings_on_vessel_id  (vessel_id)
#
# Foreign Keys
#
#  fk_rails_...  (vessel_id => vessels.id)
#
class VesselTracking < ApplicationRecord
  belongs_to :vessel
end
