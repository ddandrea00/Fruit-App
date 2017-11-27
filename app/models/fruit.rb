class Fruit < ApplicationRecord
  belongs_to :user
  has_many :appointments,  through: :user
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }, default_url:"http://www.shawnee.edu/_resources/images/profile-placeholder.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
