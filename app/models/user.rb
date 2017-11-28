class User < ApplicationRecord
  has_many :appointments
  has_many :fruits, dependent: :destroy
  has_attached_file :image, :styles => { large: "150x150>", medium: "100x100>", thumb: "50x50#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
