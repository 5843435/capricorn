class Item < ActiveRecord::Base
  has_many :stocks
  validates :name, presence: true
end
