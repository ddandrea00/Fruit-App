class User < ApplicationRecord
  has_many :appointments
  has_many :fruits, dependent: :destroy
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
