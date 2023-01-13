class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products
  has_many :bought_products, through: :post, dependent: :destroy

  validates :name, presence: true
  validates :last_name, presence: true
  validates :addresse, presence: true
end
