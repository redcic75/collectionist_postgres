class RemoveIntegerTimesFromOpeningRange < ActiveRecord::Migration[7.0]
  def change
    remove_column :opening_ranges, :start_time_seconds, :integer
    remove_column :opening_ranges, :end_time_seconds, :integer
  end
end
