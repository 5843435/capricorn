class Stock < ActiveRecord::Base
  belongs_to :user
  belongs_to :item

  # ���i���͓��͕K�{
  validates :item_id, presence: true 

  # �P�ʁA����1�ȏ�̐����łȂ���΂Ȃ�Ȃ�
  validates :unit, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :num, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
