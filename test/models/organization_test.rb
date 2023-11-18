# == Schema Information
#
# Table name: organizations
#
#  id             :bigint           not null, primary key
#  address_line1  :string
#  address_line2  :string
#  city           :string
#  contact_number :string
#  email          :string
#  name           :string
#  postal_code    :string
#  state          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
