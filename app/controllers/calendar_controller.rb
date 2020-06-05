class CalendarController < ApplicationController
  DAYS_OF_THE_WEEK = [
    'Sun', 'Mon', 'Tue',
    'Wed', 'Thr', 'Fri', 'Sat'
  ]

  def index
    @dateObject = {
      day: 'Wednesday',
      date: 3,
      month: 'June',
      year: 2020
    }

    @timeObject = {
      currentTime: '3:43:43',
      meridiem: 'AM',
    }

    @days_of_the_week = DAYS_OF_THE_WEEK
  end
end
