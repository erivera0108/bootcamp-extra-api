class Post < ApplicationRecord
    has_many :comments
    has_many :topics
    has_many :tags

end
