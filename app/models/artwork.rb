class Artwork < ActiveRecord::Base
  validates_presence_of :cost, :name, :availability, :artist_id
  validates_numericality_of :cost, :greater_than_or_equal_to => 0
  validates_uniqueness_of :name, scope: :artist_id
  belongs_to :artist
  belongs_to :medium
  belongs_to :sale
  has_many :artcollections
  has_many :collections, through: :artcollection
end
