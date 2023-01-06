class OpeningRange < ApplicationRecord
  belongs_to :shop

  validates :weekday_int, :start_time_seconds, :end_time_seconds, presence: true
  validates :weekday_int, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 6 }
  validates :start_time_seconds, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 86_400 }
  validates :end_time_seconds, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 86_400 }
end
