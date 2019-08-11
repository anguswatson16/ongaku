class Tune < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :artist
  belongs_to :album
  belongs_to :genre

  searchkick
  include PgSearch
  pg_search_scope :global_search,
    against: [:name],
    associated_against: {
      artist: [:name],
      album: [:name],
      genre: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }
end
