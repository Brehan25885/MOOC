class Lecture < ApplicationRecord
    acts_as_votable
    mount_uploader :file, FileUploader 
    belongs_to :course, required: false
    has_many :comments, dependent: :destroy
    has_and_belongs_to_many :users

end
