class Movie < ApplicationRecord
  has_many :reviews
  validates :title, presence: true,
                    length: { minimum: 5 }
end
