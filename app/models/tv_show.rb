class TvShow < ActiveRecord::Base
  has_many :reviews, as: :reviewable

  validates :name, presence: true
end
