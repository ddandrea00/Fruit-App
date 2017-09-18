class Fruit < ApplicationRecord
  belongs_to :user,
  optional: true
end
