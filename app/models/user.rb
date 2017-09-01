class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :tweets
   has_many :pins
   has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png"
   validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
