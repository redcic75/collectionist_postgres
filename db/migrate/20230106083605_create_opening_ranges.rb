class CreateOpeningRanges < ActiveRecord::Migration[7.0]
  def change
    create_table :opening_ranges do |t|
      t.references :shop, null: false, foreign_key: true
      t.integer :weekday_int
      t.integer :start_time_seconds
      t.integer :end_time_seconds

      t.timestamps
    end
  end
end
