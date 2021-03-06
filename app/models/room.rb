class Room < ApplicationRecord
  has_many :room_users #必ず先に中間テーブルを記述する
  has_many :users, through: :room_users, dependent: :destroy
  has_many :messages, dependent: :destroy
  validates :name, presence: true
end
