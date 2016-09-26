class CreatePriceQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :price_quotes do |t|
      t.string :description
      t.float :total
      t.string :status
      t.integer :client_id
      t.integer :photographer_id

      t.timestamps
    end
  end
end
