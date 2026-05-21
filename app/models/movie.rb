class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  has_many :bookmarked_lists, through: :bookmarks, source: :list

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
