class User < ApplicationRecord
  # belongs_to :user optional:true
  has_secure_password
  has_many :ideas
  has_many :comments
  validates :email, presence: true, uniqueness: true

end
