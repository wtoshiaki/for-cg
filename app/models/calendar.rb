class Calendar < ApplicationRecord
belongs_to :user
belongs_to :room

validates :plan, presence: true
validates :date, presence: true
end
