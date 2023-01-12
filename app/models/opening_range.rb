class OpeningRange < ApplicationRecord
  belongs_to :shop

  validates :weekday_int, :start_time, :end_time, presence: true
  validates :weekday_int, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 6 }
  validates :end_time, comparison: { greater_than: :start_time }

  scope :of_day, ->(wday) { where(weekday_int: wday).order(:start_time) }
end
