class Shop < ApplicationRecord
  has_many :opening_ranges, dependent: :destroy
  validates :name, presence: true

  # Returns an array made of 7 arrays (one for each day of the week, 0 being sunday)
  # Each sub-array can:
  # - Be empty if shop is closed this day
  # - Contain one array per opening ranges for this day (in seconds from midnight)
  # Example: [[], [], [[21_600, 43_200]], [[32_400, 43_200], [52_200, 64_800]], [], [], []]
  def week_openings
    output = Array.new(7) { [] }
    (0..6).each do |wday|
      ranges = opening_ranges.where('weekday_int = ?', wday)
      sorted_ranges = ranges.sort { |a, b| a.start_time <=> b.start_time }
      sorted_ranges.each do |range|
        output[wday] << [range.start_time, range.end_time]
      end
    end
    output
  end
end
