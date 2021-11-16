class Magazine < ApplicationRecord
    has_many :oenologist_magazines
    has_many :oenologist, through: :oenologist_magazines
end
