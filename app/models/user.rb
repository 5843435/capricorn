class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # 一時的にメール確認機能を無効化（SMTPサーバが利用できないため）
         #, :confirmable

  # itemsテーブルとの紐づけ
  has_many :stocks
end
