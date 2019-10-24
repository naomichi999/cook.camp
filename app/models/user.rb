class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image
  has_many :want_to_cooks, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :inquiries, dependent: :destroy
  has_many :my_recipes, dependent: :destroy
  has_one :skill_notes, dependent: :destroy
  has_one :section_understanding, dependent: :destroy

  validates :email, :encrypted_password, :sei_kanji, :mei_kanji, :sei_kana,
  :mei_kana, presence: true

  # 論理削除用のgemである'paranoia'を使用するための記述。dependent: :destroyで関連モデルのレコードも同時に削除されるようになっている場合、関連モデルにも記述するとそちらも論理削除になる。
  acts_as_paranoid
end
