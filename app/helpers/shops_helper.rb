module ShopsHelper
  # Takes an array containing an opening start time and on opening end time in seconds from midnight
  # Returns a readable formatted string of the time range
  # Example format_range([32_400, 52_200]) returns "09:00-14:30"
  def format_range(range)
    format_time = ->(time) { Time.at(time).utc.strftime('%H:%M') }
    "#{format_time.call(range.start_time)}-#{format_time.call(range.end_time)}"
  end
end
