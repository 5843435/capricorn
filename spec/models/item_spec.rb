require 'rails_helper'

RSpec.describe Item, :type => :model do
describe Item do
  specify "name は空であってはならない" do
    item = Item.new(
      :name => ''
    )
    expect(item).not_to be_valid
    expect(item.errors[:name]).to be_present
  end
end
end
