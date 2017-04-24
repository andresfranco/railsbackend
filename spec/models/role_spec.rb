require 'rails_helper'

RSpec.describe Role, type: :model do
  it "has roles by user" do
     expect(Role.get_roles_by_user(1).to_json).to eq "[{\"id\":6,\"name\":\"administrator\"},{\"id\":7,\"name\":\"agent\"}]"
  end

end
