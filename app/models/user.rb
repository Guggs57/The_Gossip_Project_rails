class User < ApplicationRecord
  has_secure_password
  has_many :gossips, foreign_key: 'gossip_id'
  has_many :sent_private_messages, class_name: 'PrivateMessage', foreign_key: 'sender_id'
  has_many :received_private_messages, class_name: 'PrivateMessage', foreign_key: 'recipient_id'
  has_many :comments
  has_many :likes

  validates :first_name, :last_name, :email, presence: false
  validates :email, uniqueness: true
end