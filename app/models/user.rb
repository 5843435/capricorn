class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # �ꎞ�I�Ƀ��[���m�F�@�\�𖳌����iSMTP�T�[�o�����p�ł��Ȃ����߁j
         #, :confirmable

  # items�e�[�u���Ƃ̕R�Â�
  has_many :stocks
end
