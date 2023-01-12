class AddTimesToOpeningRange < ActiveRecord::Migration[7.0]
  def change
    add_column :opening_ranges, :start_time, :time
    add_column :opening_ranges, :end_time, :time
  end
end
