class Oenologist < ApplicationRecord
    has_many :oenologist_magazines
    has_many :magazines, through: :oenologist_magazines

    accepts_nested_attributes_for :oenologist_magazines
end
