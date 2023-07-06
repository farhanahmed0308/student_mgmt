class PolyComment < ApplicationRecord
    belongs_to :polycommentable, polymorphic: true
end
