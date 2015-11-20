class UserItem < ActiveRecord::Base
  belongs_to :user

  # 商品名は入力必須
  validates :name, presence: true

  # 単位、個数は1以上の数字でなければならない
  validates :unit, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :num, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
