class UserRole < ApplicationRecord
 belongs_to :role
 belongs_to :user
 def self.has_role?(role_name,user_id)
   has_role = false
   roles_quantity = UserRole.select("roles.name").joins(:role)
   .where("user_roles.user_id = #{user_id} AND roles.name ='#{role_name}'").count
   has_role =true if roles_quantity >0
   return has_role
 end
 def self.get_roles(user_id)
   user_roles = UserRole.select("roles.name").joins(:role).where("user_roles.user_id = #{user_id}").to_a
 end
end
