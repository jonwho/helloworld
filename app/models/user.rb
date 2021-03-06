class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :ads
  has_many :contracts
  has_many :contractees, through: :contracts
  has_many :contractors, through: :contracts

  mount_uploader :ad, AdUploader
end
