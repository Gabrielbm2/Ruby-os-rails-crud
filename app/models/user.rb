class User < ApplicationRecord
  has_many :votes
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end