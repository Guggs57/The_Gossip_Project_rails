class Gossip < ApplicationRecord
    belongs_to :user  # Associe chaque gossip à un utilisateur
    validates :title, :content, presence: true
    has_many :likes
  end
  