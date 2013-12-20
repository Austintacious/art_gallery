class Artcollection < ActiveRecord::Base
  validates_presence_of :artwork_id, :collection_id
  validates_numericality_of :artwork_id, :collection_id
  belongs_to :artwork
  belongs_to :collection
end
