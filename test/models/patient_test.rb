# == Schema Information
#
# Table name: patients
#
#  id            :bigint           not null, primary key
#  address_line1 :string
#  address_line2 :string
#  age           :integer
#  city          :string
#  email         :string
#  first_name    :string
#  height        :string
#  last_name     :string
#  parents_name  :string
#  phone         :string
#  postal_code   :string
#  state         :string
#  weight        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require "test_helper"

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
