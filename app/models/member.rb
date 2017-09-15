class Member < ApplicationRecord
  has_many :fruits
  belongs_to :team
  belongs_to :group
end
