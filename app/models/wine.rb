class Wine < ApplicationRecord
    has_many :blends 
    has_many :strains, through: :blends

    accepts_nested_attributes_for :blends, reject_if: :all_blank
end
