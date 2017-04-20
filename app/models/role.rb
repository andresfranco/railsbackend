class Role < ApplicationRecord
has_many :user_roles
has_many :users, through: :user_roles

  def self.get_roles_by_user(user_id)
    user_roles = Role.select(:id,:name).joins(:user_roles).where( user_roles: {user_id: user_id}).to_a
  end
end
