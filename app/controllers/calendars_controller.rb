class CalendarsController < ApplicationController

  def index
    get_week
    @calendar = Calendar.new
  end

  def create
    Calendar.create(calendar_params)
  
    redirect_to room_calendars_path
  end
  

  private

  def calendar_params
    params.require(:calendar).permit(:date, :plan).merge(user_id: current_user.id, room_id: params[:room_id])
  end

  def get_week
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']

    @todays_date = Date.today

    @week_days = []

    plans = Calendar.where(date: @todays_date..@todays_date + 364)

    365.times do |x|
      today_plans = []
      plans.each do |calendar|
        today_plans.push(calendar.plan) if calendar.date == @todays_date + x
      end

      wday_num = Date.today.wday + x

      # if wday_num >= 7
      #   wday_num = wday_num -7
      # end

      if wday_num - 7 >= 7
        wday_num = wday_num % 7
      else 
        wday_num = wday_num -7
      end

      days = { month: (@todays_date + x).month, date: (@todays_date+x).day, plans: today_plans, wday: wdays[wday_num] }

      @week_days.push(days)
    end
  end
end