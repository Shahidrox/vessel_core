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
require "test_helper"

class VesselTest < ActiveSupport::TestCase
  test "should not save vessel without naccs_code" do
    vessel = Vessel.new
    assert_not vessel.save
  end

  test "should not save vessel duplicate naccs_code" do
    vessel = Vessel.create(name: 'ABC', naccs_code: 'CODE3')
    vessel = Vessel.new(name: 'DEF', naccs_code: 'CODE3')
    assert_not vessel.save
  end
end
