class AddRoomToClients < ActiveRecord::Migration
  def change
    add_column :clients, :room, :string
  end
end
