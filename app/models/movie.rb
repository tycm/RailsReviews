class Movie < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 3 }
end
