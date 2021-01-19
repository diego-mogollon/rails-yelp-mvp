class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: {only_integer: true}
    validates_inclusion_of :rating, :in => (0..5), :message => "it is not a valid rating"
end
