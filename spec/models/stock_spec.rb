require 'rails_helper'

RSpec.describe Stock, :type => :model do
describe Stock do
  specify "item_id は空であってはならない" do
    stock = Stock.new(
      :item_id => ''
    )
    expect(stock).not_to be_valid
    expect(stock.errors[:item_id]).to be_present
  end

  specify "unit は1以上の数字でなければならない" do
    stock = Stock.new(
      :item_id => '1',
      :unit => '0',
      :num => '1'
    )
    expect(stock).not_to be_valid
  end

  specify "num は1以上の数字でなければならない" do
    stock = Stock.new(
      :item_id => '1',
      :unit => '1',
      :num => '0'
    )
    expect(stock).not_to be_valid
  end
end
end
