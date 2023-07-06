class Aritcle < ApplicationRecord
    has_many :poly_comments, as: :polycommentable
end
