class User < ApplicationRecord
  has_many :recommendations
  validates_presence_of :email, :name
  validates_uniqueness_of :email
end
