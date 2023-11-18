# == Schema Information
#
# Table name: branches
#
#  id              :bigint           not null, primary key
#  address_line1   :string
#  address_line2   :string
#  city            :string
#  contact_number  :string
#  email           :string
#  name            :string
#  postal_code     :string
#  state           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :bigint
#
# Indexes
#
#  index_branches_on_organization_id  (organization_id)
#
require "test_helper"

class BranchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
