class CreatePhotographers < ActiveRecord::Migration[5.0]
  def change
    create_table :photographers do |t|
      t.string :name
      t.integer :phone
      t.string :city
      t.string :state
      t.string :country
      t.string :email
      t.string :password
      t.string :string
      t.string :avatar
      t.string :portfolio_link
      t.string :bio
      t.string :display_name

      t.timestamps
    end
  end
end
