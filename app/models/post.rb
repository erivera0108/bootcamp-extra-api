class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :topics
    has_many :tags through: :comments
end
