class CreateStudentsections < ActiveRecord::Migration[5.0]
  def change
    create_table :studentsections do |t|
      t.string :studentsection

      t.timestamps
    end
  end
end
