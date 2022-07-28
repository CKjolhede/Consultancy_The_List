class Recommendation < ApplicationRecord
  belongs_to :user

  validates_presence_of :title 
  validates_presence_of :media_id 
  validates_presence_of :media_type
  validates_presence_of :user_id
  validates_presence_of :recommended_by
  
  enum status: {pending: 0, accepted: 1}
  enum media_type: {movie: 0, book: 1}

end
