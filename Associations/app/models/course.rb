class Course < ApplicationRecord
    has_many :courses,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Enrollment
        
end
