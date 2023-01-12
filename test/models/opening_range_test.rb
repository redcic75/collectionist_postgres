require 'test_helper'

class OpeningRangeTest < ActiveSupport::TestCase
  test 'week_openings method' do
    week_openings = shops(:shop1).week_openings(2)
    expected = [[opening_ranges(:range1)],
                [opening_ranges(:range3), opening_ranges(:range2)],
                [],
                [],
                [],
                [],
                []]

    assert_equal expected, week_openings
  end

  test 'valid opening_range' do
    opening_range = OpeningRange.new(
      shop: shops(:shop1),
      weekday_int: 2,
      start_time: Time.find_zone('UTC').parse('10:00'),
      end_time: Time.find_zone('UTC').parse('14:00')
    )
    refute opening_range.valid?
    assert_equal 'Opening ranges for a given shop and day cannot overlap',
                 opening_range.errors[:start_time][0],
                 'Missing validation error for overlap'
  end

  test 'invalid opening_range (overlap)' do
    opening_range = OpeningRange.new(
      shop: shops(:shop1),
      weekday_int: 2,
      start_time: Time.find_zone('UTC').parse('13:00'),
      end_time: Time.find_zone('UTC').parse('14:00')
    )
    assert opening_range.valid?
  end

  test 'invalid opening_range (start time greater than end time)' do
    opening_range = OpeningRange.new(
      shop: shops(:shop1),
      weekday_int: 2,
      start_time: Time.find_zone('UTC').parse('14:00'),
      end_time: Time.find_zone('UTC').parse('13:00')
    )
    refute opening_range.valid?
    assert_equal 'doit être supérieur à 2000-01-01 14:00:00 UTC',
                 opening_range.errors[:end_time][0],
                 'Missing validation error for end_time compared to start_time'
  end
end
