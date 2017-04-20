class UserRole < ApplicationRecord
 belongs_to :role
 belongs_to :user
 def self.has_role?(role_name,user_id)
   has_role = false
   roles_quantity = UserRole.select(:role_id).joins(:role)
   .where( user_id: user_id).where(roles:{name:role_name}).count
   has_role = true if roles_quantity > 0
   return has_role
 end

end
