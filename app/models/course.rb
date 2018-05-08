class Course < ApplicationRecord
    has_many :lectures, dependent: :destroy
    attr_accessor :lecture_data
end
