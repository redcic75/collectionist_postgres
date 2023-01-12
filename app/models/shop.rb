class Shop < ApplicationRecord
  has_many :opening_ranges, dependent: :destroy
  validates :name, presence: true

  # week_openings returns an array of 7 arrays
  # Each sub-array corresponds to a day of the week
  # Each sub-array is composed of OpeningRange objects (or empty)
  # Sub-array are ordered chronologically, starting from the current day of the week
  def week_openings(current_wday)
    (0..6).map { |index| opening_ranges.of_day((current_wday + index) % 7) }
  end
end
