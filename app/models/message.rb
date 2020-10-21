class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image 
  # messagesテーブルにカラムを追加する必要はなし
  validates :content, presence: true
end
