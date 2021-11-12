class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :year, presence: true
  validates :director, presence: true
  validates :genre, presence: true
  validates :synopsis, presence: true
end
