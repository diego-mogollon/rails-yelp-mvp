class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category , presence: true
   validates_inclusion_of :category, :in => ["chinese", "italian", "japanese", "french", "belgian"], :message => "it is not a valid category"
end
