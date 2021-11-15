class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :year, presence: true
  validates :country, presence: true
  validates :director, presence: true
  validates :genre, presence: true
  validates :poster_url, presence: true
  validates :synopsis, presence: true

  before_destroy do
    destroy unless bookmarks.empty?
  end
end
