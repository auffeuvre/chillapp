class UpdateRoomsIdToRoomId < ActiveRecord::Migration[7.0]
  def change
    rename_column :messages, :rooms_id, :room_id
  end
end
