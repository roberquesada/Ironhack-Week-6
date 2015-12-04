class User < ActiveRecord::Base
  has_secure_password
  has_many :products
  has_many :bids

  validates :email, presence: true
  validates :email, uniqueness: true
end
