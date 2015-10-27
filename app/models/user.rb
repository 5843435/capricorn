class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # 一時的にメール確認機能を無効化（SMTPサーバが利用できないため）
        # :confirmable

  # itemsテーブルとの紐づけ
  has_many :stocks

  # 郵便番号は数字7桁のみ有効
  validates :zipcode, length: { is: 7 }, numericality: { only_integer: true }

  # 家族構成で男女いずれかは1以上でなければならない
  validates :family_men, numericality: {
            only_integer: true, greater_than_or_equal_to: 1 }, if: -> { family_women.zero? }
  validates :family_women, numericality: {
            only_integer: true, greater_than_or_equal_to: 1 }, if: -> { family_men.zero? }

  # 一貫性を保つため、emailは小文字に変換する
  before_save { self.email = email.downcase }

  # メール通知のタイミングは数字1桁のみ
  validates :notification, length: { is: 1 }, numericality: { only_integer: true }

end
