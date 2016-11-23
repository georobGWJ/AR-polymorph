class Movie < ActiveRecord::Base
  has_many :reviews, as: :reviewable

  validates :title, presence: true
end
