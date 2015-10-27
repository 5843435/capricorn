class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # �ꎞ�I�Ƀ��[���m�F�@�\�𖳌����iSMTP�T�[�o�����p�ł��Ȃ����߁j
        # :confirmable

  # items�e�[�u���Ƃ̕R�Â�
  has_many :stocks

  # �X�֔ԍ��͐���7���̂ݗL��
  validates :zipcode, length: { is: 7 }, numericality: { only_integer: true }

  # �Ƒ��\���Œj�������ꂩ��1�ȏ�łȂ���΂Ȃ�Ȃ�
  validates :family_men, numericality: {
            only_integer: true, greater_than_or_equal_to: 1 }, if: -> { family_women.zero? }
  validates :family_women, numericality: {
            only_integer: true, greater_than_or_equal_to: 1 }, if: -> { family_men.zero? }

  # ��ѐ���ۂ��߁Aemail�͏������ɕϊ�����
  before_save { self.email = email.downcase }

  # ���[���ʒm�̃^�C�~���O�͐���1���̂�
  validates :notification, length: { is: 1 }, numericality: { only_integer: true }

end
