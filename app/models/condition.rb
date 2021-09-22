class Condition < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :get_up
  belongs_to :breakfast
  belongs_to :first_dentifrice
  belongs_to :first_toilet
  belongs_to :lunch
  belongs_to :second_dentifrice
  belongs_to :second_toilet
  belongs_to :dinner
  belongs_to :third_dentifrice
  belongs_to :third_toilet
  belongs_to :bath
  belongs_to :sleep_check

  belongs_to :user
  belongs_to :room

  validates :confirmer_name, presence: true
  validates :care_user_name, presence: true
  validates :get_up_id, :breakfast_id, :first_dentifrice_id, :first_toilet_id, :lunch_id, :second_dentifrice_id, :second_toilet_id, :dinner_id, :third_dentifrice_id, :third_toilet_id, :bath_id, :sleep_check_id,  numericality: { other_than: 0 , message: "can't be blank"}
  validates :state, presence: true

end