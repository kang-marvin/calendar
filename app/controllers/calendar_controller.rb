class CalendarController < ApplicationController

  TODAY = Date.today

  DAYS_OF_THE_WEEK_OBJECT = {
    'Sun': 0, 'Mon': 1, 'Tue': 2,
    'Wed': 3, 'Thr': 4, 'Fri': 5,
    'Sat': 6
  }

  NO_OF_WEEKS_TO_DISPLAY = 6

  DAYS_OF_THE_MONTH = [
    (27..31).to_a,
    (1..30).to_a,
    (1..9).to_a,
].flatten[0...(DAYS_OF_THE_WEEK_OBJECT.count * NO_OF_WEEKS_TO_DISPLAY)]

  def index
    @dateObject = {
      day:    I18n.t('date.day_names')[TODAY.wday],
      date:   TODAY.day,
      month:  I18n.t('date.month_names')[TODAY.month],
      year:   TODAY.year
    }

    @timeObject = {
      currentTime: '3:43:43',
      meridiem: 'AM',
    }

    @days_of_the_week = DAYS_OF_THE_WEEK_OBJECT.keys
    @days_of_the_month = DAYS_OF_THE_MONTH

  end
end
