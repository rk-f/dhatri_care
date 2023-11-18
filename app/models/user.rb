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
class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :trackable, :confirmable, :validatable
  
  attr_accessor :current_password, :skip_password_validation

  belongs_to :role
  has_many :branches
  protected
  # We use this so we can create user without password
  def password_required?
    return false if skip_password_validation
    super
  end
end
