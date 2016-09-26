class CreateClientReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :client_reviews do |t|
      t.string :comment
      t.integer :rating
      t.integer :client_id
      t.integer :photographer_id

      t.timestamps
    end
  end
end
