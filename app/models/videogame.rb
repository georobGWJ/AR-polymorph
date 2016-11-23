class Videogame < ActiveRecord::Base
  has_many :reviews, as: :reviewable
end
