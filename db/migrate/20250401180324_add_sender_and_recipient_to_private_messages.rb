class AddSenderAndRecipientToPrivateMessages < ActiveRecord::Migration[8.0]
  def change
     # Ajouter la référence pour l'expéditeur (sender_id) et définir la contrainte de clé étrangère vers users
     add_reference :private_messages, :sender, null: false, foreign_key: { to_table: :users }
    
     # Ajouter la référence pour le destinataire (recipient_id) et définir la contrainte de clé étrangère vers users
     add_reference :private_messages, :recipient, null: false, foreign_key: { to_table: :users }
  end
end
