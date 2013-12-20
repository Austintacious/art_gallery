class Sale < ActiveRecord::Base
  validates :date, :format => { :with => /\A\d{4}-\d{2}-\d{2}\z/}
  validates_presence_of :customer_id
  validates_numericality_of :customer_id
  has_many :artworks
  belongs_to :customer
end
