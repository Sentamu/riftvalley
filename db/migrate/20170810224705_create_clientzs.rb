class CreateClientzs < ActiveRecord::Migration
  def change
    create_table :clientzs do |t|
      t.string :name
      t.string :email
      t.string :tel
      t.date :start
      t.date :end
      t.integer :rooms
      t.integer :adults
      t.string :message

      t.timestamps null: false
    end
  end
end
