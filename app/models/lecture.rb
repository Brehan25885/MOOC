class Lecture < ApplicationRecord
    mount_uploader :file, FileUploader
    belongs_to :course, required: false
end
