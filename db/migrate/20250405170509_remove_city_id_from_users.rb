class RemoveCityIdFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :city, foreign_key: true
  end
end
