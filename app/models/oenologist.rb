class Oenologist < ApplicationRecord
    has_many :oenologist_magazines
    has_many :magazines, through: :oenologist_magazines
    has_many :grades
    has_many :wines, through: :grades

    accepts_nested_attributes_for :oenologist_magazines
end
