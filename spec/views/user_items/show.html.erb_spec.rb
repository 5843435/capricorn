require 'rails_helper'

RSpec.describe "user_items/show", type: :view do
  before(:each) do
    @user_item = assign(:user_item, UserItem.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
