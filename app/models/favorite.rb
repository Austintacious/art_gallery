class Favorite < ActiveRecord::Base
  validates_presence_of :customer_id, :collection_id
  validates_numericality_of :customer_id, :collection_id
  belongs_to :collection
end
