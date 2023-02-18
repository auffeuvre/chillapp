class User < ApplicationRecord
  has_many :messages
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  scope :all_except, ->(user) { where.not(id: user) }
end
