module Validatable
    extend ActiveSupport::Concern
    included do

    validates :title, presence: true, uniqueness: { case_sensitive: false }
    validates :description, presence: true, uniqueness: { case_sensitive: false }

    end
end