class Lecture < ApplicationRecord
    belongs_to :course, required: false
end
