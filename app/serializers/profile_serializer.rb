class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :about

  # has_one :account

  # url :profile
end
