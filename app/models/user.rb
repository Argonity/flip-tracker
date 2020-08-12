class User < ApplicationRecord
  has_many :projects
  has_many :contractors, through: :projects
  has_secure_password
end
