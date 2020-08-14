class User < ApplicationRecord
  has_many :projects
  has_many :contractors, through: :projects

  validates :username, uniqueness: true, presence: true

  has_secure_password
end
