require 'rails_helper'

RSpec.describe User, :type => :model do
  specify "email は空であってはならない" do
    user = User.new(
      email: '',
      family_men: '1',
      family_women: '0',
    )
    expect(user).not_to be_valid
    expect(user.errors[:email]).to be_present
  end
end

