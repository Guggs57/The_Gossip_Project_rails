class Like < ApplicationRecord
    belongs_to :user
    validates :user_id, uniqueness: { scope: :gossip_id, message: " a déjà aimé "}
    belongs_to :gossip
end
