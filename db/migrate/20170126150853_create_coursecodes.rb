class CreateCoursecodes < ActiveRecord::Migration[5.0]
  def change
    create_table :coursecodes do |t|
      t.string :codename

      t.timestamps
    end
  end
end
