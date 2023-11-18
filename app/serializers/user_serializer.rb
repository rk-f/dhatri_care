# == Schema Information
#
# Table name: users
#
#  id                   :bigint           not null, primary key
#  address_line1        :string
#  address_line2        :string
#  city                 :string
#  confirmation_sent_at :datetime
#  confirmation_token   :string
#  confirmed_at         :datetime
#  email                :string
#  first_name           :string
#  last_name            :string
#  phone                :string
#  postal_code          :string
#  state                :string
#  unconfirmed_email    :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  role_id              :bigint
#
# Indexes
#
#  index_users_on_confirmation_token  (confirmation_token) UNIQUE
#  index_users_on_role_id             (role_id)
#
# Foreign Keys
#
#  fk_rails_...  (role_id => roles.id)
#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email
  attributes :phone, :address_line1, :address_line2
  attributes :state, :city, :postal_code

  belongs_to :role
end
