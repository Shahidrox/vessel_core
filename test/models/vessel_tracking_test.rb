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
require "test_helper"

class VesselTrackingTest < ActiveSupport::TestCase
  test "should not save VesselTracking without vesselId" do
    vessel = VesselTracking.new
    assert_not vessel.save, "Saved the VesselTracking without a vesselId"
  end
end
