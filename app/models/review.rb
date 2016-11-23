class Review < ActiveRecord::Base
  belongs_to :reviewable, polymorphic: true
  belongs_to :user

  validates :score, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
  validates :reviewable_id, presence: true
end
