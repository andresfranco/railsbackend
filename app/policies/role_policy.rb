class RolePolicy < ApplicationPolicy
  def index?
    UserRole.has_role?('administrator',user.id)
  end
end
