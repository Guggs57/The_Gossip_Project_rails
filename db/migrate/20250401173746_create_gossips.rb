class CreateGossips < ActiveRecord::Migration[6.0]  # Assure-toi d'utiliser la bonne version ici
  def change
    create_table :gossips do |t|
      t.string :title
      t.text :content
      t.references :user, null: false, foreign_key: true  # Référence à l'utilisateur qui a créé le potin

      t.timestamps
    end
  end
end
