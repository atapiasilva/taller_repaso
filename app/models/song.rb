class Song < ApplicationRecord
  belongs_to :playlist
  validates :artist, :name,  present: true
end
