class User < ApplicationRecord
  has_many :recommendations, dependent: :destroy
  validates_presence_of :email, :name
  validates_uniqueness_of :email
end
