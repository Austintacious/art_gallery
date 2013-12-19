class Style < ActiveRecord::Base
  validates :name, :format => { :with => /\A[a-zA-Z\s]+\z/ }
  validates_uniqueness_of :name
  has_many :artists
end
