class CreateClientRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :client_requests do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.text :message, null: false

      t.timestamps
    end
  end
end
