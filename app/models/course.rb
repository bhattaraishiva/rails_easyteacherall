class Course < ApplicationRecord
  belongs_to :user
  belongs_to :batch
  belongs_to :coursecode
  belongs_to :studentclass
  belongs_to :studentsection
end
