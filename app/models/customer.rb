class Customer < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email
  validates_numericality_of :amount_spent, :greater_than_or_equal_to => 0 
  validates_uniqueness_of :first_name, scope: :last_name
  validates :first_name, :format => { :with => /\A[a-zA-Z\s]+\z/ }
  validates :last_name, :format => { :with => /\A[a-zA-Z\s]+\z/ }
  validates :email, :format => { :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  has_many :sales
  has_many :favorites
end
