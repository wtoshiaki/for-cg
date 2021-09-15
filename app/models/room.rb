class Room < ApplicationRecord
    belongs_to :users
    has_many :messages

    validates :name, presence: true

end
