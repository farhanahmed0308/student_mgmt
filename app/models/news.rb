class News < ApplicationRecord
    has_many :poly_comments, as: :polycommentable
end
