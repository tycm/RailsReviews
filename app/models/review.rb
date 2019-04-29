class Review < ApplicationRecord
  belongs_to :movie
  validates :rating, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10 }, presence: true
  validates :commenter, presence: true,
                    length: { minimum: 3 }

end
