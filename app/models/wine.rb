class Wine < ApplicationRecord
    has_many :blends, dependent: :destroy
    has_many :strains, through: :blends

    has_many :grades, dependent: :destroy
    has_many :eonologist, through: :grades

    accepts_nested_attributes_for :blends, :grades, reject_if: :all_blank

end
