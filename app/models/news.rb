class News < ApplicationRecord
    indclude Validatable
    has_many :poly_comments, as: :polycommentable
end
