class User < ApplicationRecord
	has_many :reviews, dependent: :destroy
    validates :username, presence: true, length: { minimum: 5 }
end
