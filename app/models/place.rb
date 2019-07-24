class Place < ApplicationRecord
  belongs_to :user
  has_many :comments 
  
  geocoded_by :address
  after_validation :geocode 

  validates :name, presence: true, length: { minimum: 2, maximum: 30 }
  validates :address, presence: true, length: { minimum: 2, maximum: 100 }
  validates :description, presence: true, length: { minimum: 2, maximum: 300 }
end
