class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :postTitle, presence: true, length: { minimum: 5 }
end
