class Course < ApplicationRecord
    belongs_to :instructor, 
        primary_key: :id, 
        foreign_key: :instructor_id, 
        class_name: :User
    
    belongs_to :prerequisite,
        primary_key: :id, 
        foreign_key: :prereq_id, 
        class_name: :Course
    
    has_many :prerequisites_of,
        primary_key: :id, 
        foreign_key: :prereq_id, 
        class_name: :Course
    
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Enrollment
    
    
    has_many :enrolled_students,
        through: :enrollments,
        source: :user
end
