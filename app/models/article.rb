class Article < ApplicationRecord
  belongs_to :user # liczba pojedyncza user, poniewaz article nalezy do jednego usera
  validates :title, presence: true, length: { minimum: 6, maximum: 100} #sprawdzamy obecnosc tytulu oraz dlugosc
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
end
