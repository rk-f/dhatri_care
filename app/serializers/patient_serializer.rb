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
class PatientSerializer < ActiveModel::Serializer
  attributes :id, :first_name,:last_name, :email, :phone, :address_line1
  attributes :address_line2, :postal_code, :city, :age, :height, :weight, :parents_name
end
