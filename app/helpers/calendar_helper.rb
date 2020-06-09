module CalendarHelper

  def is_day_of_current_month(isInCurrentMonth, today)
    return !isInCurrentMonth if today === 1
    isInCurrentMonth
  end
end
