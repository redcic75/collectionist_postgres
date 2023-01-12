class OpeningRange < ApplicationRecord
  belongs_to :shop

  validates :weekday_int, :start_time, :end_time, presence: true
  validates :weekday_int, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 6 }
  validates :end_time, comparison: { greater_than: :start_time }
  validate :no_overlap

  scope :of_day, ->(wday) { where(weekday_int: wday).order(:start_time) }

  private

  def no_overlap
    day_ranges = OpeningRange.where(weekday_int: weekday_int, shop: shop)
    day_ranges.each do |day_range|
      if (day_range.start_time..day_range.end_time).overlaps?(start_time..end_time)
        return errors.add(:start_time, 'Opening ranges for a given shop and day cannot overlap')
      end
    end
  end
end
