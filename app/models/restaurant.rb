class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category , presence: true
   validates_inclusion_of :category, :in => Restaurant::CATEGORIES, :message => "it is not a valid category"
end
