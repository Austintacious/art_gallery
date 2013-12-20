class Collection < ActiveRecord::Base
  has_many :artworks, through: :artcollection
  has_many :favorites
  validates_presence_of :name
  validates_uniqueness_of :name
  validates :name, :format => { :with => /\A[a-zA-Z\s]+\z/ }
end
