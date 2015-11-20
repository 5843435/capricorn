require 'rails_helper'

RSpec.describe "user_items/edit", type: :view do
  before(:each) do
    @user_item = assign(:user_item, UserItem.create!())
  end

  it "renders the edit user_item form" do
    render

    assert_select "form[action=?][method=?]", user_item_path(@user_item), "post" do
    end
  end
end
