require "test_helper"

class OpeningRangeTest < ActiveSupport::TestCase
  test "week_openings method" do
    week_openings = shops(:shop1).week_openings
    expected = [[], [], [[21_600, 43_200]], [[32_400, 43_200], [52_200, 64_800]], [], [], []]
    assert_equal expected, week_openings
  end
end
