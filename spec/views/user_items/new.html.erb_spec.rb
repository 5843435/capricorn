require 'rails_helper'

RSpec.describe "user_items/new", type: :view do
  before(:each) do
    assign(:user_item, UserItem.new())
  end

  it "renders new user_item form" do
    render

    assert_select "form[action=?][method=?]", user_items_path, "post" do
    end
  end
end
