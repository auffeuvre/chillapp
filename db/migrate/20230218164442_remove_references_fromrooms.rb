class RemoveReferencesFromrooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :users_id
    remove_column :rooms, :index_rooms_on_users_id
  end
end
