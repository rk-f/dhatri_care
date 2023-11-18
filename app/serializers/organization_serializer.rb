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
class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  attributes :contact_number, :address_line1, :address_line2
  attributes :state, :city, :postal_code
  has_many :branches
end
