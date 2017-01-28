class AddCourseDetailToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :coursecode, :integer
    add_column :courses, :startdate, :date
    add_column :courses, :enddate, :date
    add_column :courses, :batch, :integer
    add_column :courses, :studentclass, :integer
    add_column :courses, :studentsection, :integer
  end
end
