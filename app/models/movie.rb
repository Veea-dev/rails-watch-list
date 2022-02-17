class Movie < ApplicationRecord
  has_many :lists, through: :bookmarks
  has_many :bookmarks
  validates :overview, presence: true
  validates :title, presence: true, uniqueness: true
end
