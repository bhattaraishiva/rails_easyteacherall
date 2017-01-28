class CreateStudentclasses < ActiveRecord::Migration[5.0]
  def change
    create_table :studentclasses do |t|
      t.string :studentclass

      t.timestamps
    end
  end
end
