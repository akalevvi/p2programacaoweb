class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :phone
      t.string :city
      t.string :state
      t.string :country
      t.string :email
      t.string :birthdate
      t.string :avatar

      t.timestamps
    end
  end
end
