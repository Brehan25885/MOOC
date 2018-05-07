class Course < ApplicationRecord
    has_many :lectures
    attr_accessor :lecture_data
end
