class CreateQuotesReports < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes_reports do |t|

      t.timestamps
    end
  end
end
