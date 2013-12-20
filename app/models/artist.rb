class Artist < ActiveRecord::Base
  validates_presence_of :email
  validates_uniqueness_of :email
  validates :email, :format => { :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  belongs_to :style
  has_many :artworks
end
