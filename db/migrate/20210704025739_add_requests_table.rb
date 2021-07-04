class AddRequestsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :address
      t.text :description

      t.timestamps
    end
  end
end
