class Attendance < ApplicationRecord
    belongs_to :user
    belongs_to :fruit
end
