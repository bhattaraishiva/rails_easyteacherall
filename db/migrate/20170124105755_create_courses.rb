class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :coursename
      t.string :responsibleperson
      t.integer :duration
      t.text :description

      t.timestamps
    end
  end
end
