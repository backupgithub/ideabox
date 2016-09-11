class User < ApplicationRecord
  has_secure_password
  has_many :ideas

  validates :name, presence: true,
  length: {maximum: 50}

  validates :username, presence: true,
  uniqueness: true

  validates :password, presence: true,
  length: {minimum: 5}, allow_nil: false

end
