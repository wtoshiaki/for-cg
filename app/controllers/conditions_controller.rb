class ConditionsController < ApplicationController

  def index
    @conditions = Condition.order("created_at DESC")
  end

  def new
    @condition = Condition.new
  end

  def create
    @condition = Condition.new(condition_params)
    if @condition.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def condition_params
    params.require(:condition).permit(:confirmer_name,:care_user_name, :get_up_id, :breakfast_id, :first_dentifrice_id, :first_toilet_id, :lunch_id, :second_dentifrice_id, :second_toilet_id, :dinner_id, :third_dentifrice_id, :third_toilet_id, :bath_id, :sleep_check_id, :state).merge(user_id: current_user.id, room_id: params[:room_id])
  end

end
