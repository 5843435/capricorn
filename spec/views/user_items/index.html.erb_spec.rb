require 'rails_helper'

RSpec.describe "user_items/index", type: :view do
  before(:each) do
    assign(:user_items, [
      UserItem.create!(),
      UserItem.create!()
    ])
  end

  it "renders a list of user_items" do
    render
  end
end
