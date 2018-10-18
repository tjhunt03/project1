class User < ApplicationRecord
  # belongs_to :user optional:true
  has_secure_password
  has_many :ideas
  has_and_belongs_to_many :liked_ideas, class_name: 'Idea' 
  has_many :comments
  validates :email, presence: true, uniqueness: true



end
