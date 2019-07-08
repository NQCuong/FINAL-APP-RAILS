class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #  Setup accessible (or protected) attributes for your model
  attr_accessor :firstname, :lastname, :email, :password, :password_confirmation, :remember_me
end
